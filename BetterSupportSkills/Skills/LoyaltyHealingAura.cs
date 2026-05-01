using System.Diagnostics;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.LoyaltySkill))]
internal static class LoyaltyHealingAura
{
    // Cached bonus per player: guid -> (expiry, bonusMultiplier, healRate, sourceName)
    // bonusMultiplier is (1 + total bonus percent), e.g. 1.05 for 5%
    internal static readonly ConcurrentDictionary<uint, CachedLoyaltyBonus> PlayerBonusCache = new();

    // Track last message time per player to enforce cooldown
    static readonly ConcurrentDictionary<uint, DateTime> LastMessageTime = new();

    // Track which players were in range last tick (to detect entry)
    static readonly ConcurrentDictionary<uint, bool> WasInRangeLastTick = new();

    internal record CachedLoyaltyBonus(
        DateTime Expiry,
        double BonusMultiplier,  // 1.05 = 5% bonus
        int HealRate,            // HP per second
        string? SourceName       // Name of player providing highest heal
    );

    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS Loyalty] {msg}", ModManager.LogLevel.Debug);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.Heartbeat), new Type[] { typeof(double) })]
    public static void PostHeartbeat(double currentUnixTime, WorldObject __instance)
    {
        if (__instance is not Player sourcePlayer)
            return;

        var settings = PatchClass.Settings;
        if (settings is not { EnableLoyalty: true })
            return;

        var loyalty = sourcePlayer.GetCreatureSkill(Skill.Loyalty);
        if (loyalty.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var cfg = settings.Loyalty;

        // Gather all landblocks in the 9-grid
        var landblocks = GetNineGridLandblocks(sourcePlayer);
        if (landblocks.Count == 0)
            return;

        // Collect all players in the 9-grid
        var allPlayers = new List<Player>();
        foreach (var lb in landblocks)
        {
            foreach (var wo in lb.GetAllWorldObjectsForDiagnostics())
            {
                if (wo is Player p && !p.IsDead)
                    allPlayers.Add(p);
            }
        }

        if (allPlayers.Count == 0)
            return;

        // Count unique players (excluding ourselves for the "extra player" calc)
        int playerCount = allPlayers.Select(p => p.Guid.Full).Distinct().Count();
        int extraPlayers = Math.Max(0, playerCount - 1);

        // Compute XP buff
        double bonusPercent = 0;
        if (cfg.EnableXpBuff && extraPlayers > 0)
        {
            bonusPercent = cfg.XpBuffBasePercent + (extraPlayers * cfg.XpBuffPerPlayerPercent);
            bonusPercent = Math.Min(bonusPercent, cfg.XpBuffMaxPercent);
        }
        double bonusMultiplier = 1.0 + bonusPercent;

        // Find highest heal rate among loyalty-trained players in grid
        int maxHealRate = 0;
        string? sourceName = null;
        foreach (var p in allPlayers)
        {
            var pLoyalty = p.GetCreatureSkill(Skill.Loyalty);
            if (pLoyalty.AdvancementClass < SkillAdvancementClass.Trained)
                continue;

            int rate = pLoyalty.AdvancementClass == SkillAdvancementClass.Specialized
                ? cfg.FlatHealPerSecondSpec
                : cfg.FlatHealPerSecondTrained;

            if (rate > maxHealRate)
            {
                maxHealRate = rate;
                sourceName = p.Name;
            }
        }

        // Cache bonus for all players in grid
        var now = DateTime.UtcNow;
        var expiry = now.AddSeconds(5.0); // cache valid for 5s (heartbeat is ~1s)
        var cacheEntry = new CachedLoyaltyBonus(expiry, bonusMultiplier, maxHealRate, sourceName);

        foreach (var p in allPlayers)
        {
            PlayerBonusCache[p.Guid.Full] = cacheEntry;
        }

        // Apply flat heals
        if (maxHealRate > 0 && cfg.EnableHealingAura)
        {
            ApplyHeals(allPlayers, maxHealRate);
        }

        // Detect entries and send messages
        if (cfg.ShowRangeMessage && extraPlayers > 0)
        {
            SendEntryMessages(allPlayers, extraPlayers, bonusPercent, maxHealRate, sourceName, cfg);
        }

        // Update "was in range" tracking for next tick
        WasInRangeLastTick.Clear();
        foreach (var p in allPlayers)
            WasInRangeLastTick[p.Guid.Full] = true;
    }

    static List<Landblock> GetNineGridLandblocks(Player player)
    {
        var result = new List<Landblock>();
        var current = player.CurrentLandblock;
        if (current == null)
            return result;

        result.Add(current);
        foreach (var adj in current.Adjacents)
        {
            if (adj != null)
                result.Add(adj);
        }
        return result;
    }

    static void ApplyHeals(List<Player> players, int healRate)
    {
        int healAmount = healRate; // per second, heartbeat is ~1s
        foreach (var p in players)
        {
            if (p.IsDead || p.Health == null)
                continue;
            if (p.Health.Current >= p.Health.MaxValue)
                continue;

            p.UpdateVitalDelta(p.Health, healAmount);
        }
    }

    static void SendEntryMessages(List<Player> players, int extraPlayers, double bonusPercent, int healRate, string? sourceName, LoyaltySettings cfg)
    {
        var now = DateTime.UtcNow;
        string bonusText = $"{(bonusPercent * 100):F0}%";
        string healText = $"{healRate} HP/s";
        string nameText = sourceName ?? "a fellow adventurer";

        string msg;
        if (extraPlayers == 1)
        {
            msg = $"A fellow adventurer hunts nearby, earning you both an additional {bonusText} XP/luminance and activating {nameText}'s Loyalty healing aura ({healText}).";
        }
        else
        {
            msg = $"Fellow adventurers hunt nearby, earning you all an additional {bonusText} XP/luminance and activating {nameText}'s Loyalty healing aura ({healText}).";
        }

        foreach (var p in players)
        {
            uint guid = p.Guid.Full;
            bool wasInRange = WasInRangeLastTick.ContainsKey(guid);
            if (wasInRange)
                continue; // already in range, don't spam

            // Check cooldown
            if (LastMessageTime.TryGetValue(guid, out var lastMsg) && (now - lastMsg).TotalSeconds < cfg.MessageCooldownSeconds)
                continue;

            p.SendMessage(msg, ChatMessageType.Magic);
            LastMessageTime[guid] = now;
            DebugLog($"Sent entry message to {p.Name}");
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostEnterWorld(Player __instance)
    {
        // Clear tracking when player enters world
        uint guid = __instance.Guid.Full;
        PlayerBonusCache.TryRemove(guid, out _);
        LastMessageTime.TryRemove(guid, out _);
        WasInRangeLastTick.TryRemove(guid, out _);
    }

    /// <summary>
    /// Returns the cached loyalty bonus multiplier for a player (1.0 = no bonus).
    /// Called from GrantXP/GrantLuminance patches.
    /// </summary>
    internal static double GetBonusMultiplier(Player player)
    {
        if (PlayerBonusCache.TryGetValue(player.Guid.Full, out var cached))
        {
            if (cached.Expiry > DateTime.UtcNow)
                return cached.BonusMultiplier;
        }
        return 1.0;
    }

    /// <summary>
    /// Harmony prefix on Player.GrantLuminance — multiplies the amount by the cached loyalty bonus.
    /// </summary>
    public static void PrefixGrantLuminance(Player __instance, ref long amount)
    {
        if (PatchClass.Settings is not { EnableLoyalty: true, Loyalty.EnableXpBuff: true })
            return;

        double mult = GetBonusMultiplier(__instance);
        if (mult > 1.0)
        {
            amount = (long)Math.Round(amount * mult);
            DebugLog($"GrantLuminance boosted for {__instance.Name}: {mult:F2}x = {amount}");
        }
    }
}
