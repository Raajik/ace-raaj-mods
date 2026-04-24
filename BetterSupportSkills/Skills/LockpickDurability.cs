using System.Text;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Lockpick Durability — banked charges for the Lockpick skill.
///
/// LeyLineLedger auto-banks lockpick items into PropertyInt64 40130.
/// This class consumes those charges when a player activates a locked
/// object, runs the Limitless Lockpick passive regen timer, and
/// exposes /lp commands.
///
/// Shared PropertyInt64 IDs (same values as LeyLineLedger/LockpickAutoBank.cs):
///   40130 = LockpickDurability    — banked charges
///   40131 = LimitlessLastGrantUnix — last regen; 0 = no perk
///   40132 = LimitlessLockpickCount — regen multiplier
///   40133 = KeyPriorityPref       — PropertyInt; 0=key first, 1=durability first
/// </summary>
[HarmonyPatchCategory(nameof(Features.LockpickSkill))]
public static class LockpickDurability
{
    internal const int PropDurability  = 40130;
    internal const int PropLastGrant   = 40131;
    internal const int PropLimitCount  = 40132;
    internal const int PropKeyPref     = 40133;

    // ── Commands ──────────────────────────────────────────────────────────────

    [CommandHandler("lp", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Lockpick Durability. /lp for status, /lp help for commands.")]
    [CommandHandler("lockpick", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Lockpick Durability. /lockpick for status.")]
    public static void HandleLp(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player) return;

        if (PatchClass.Settings?.EnableLockpick != true)
        {
            player.SendMessage("[Lockpick] Lockpick skill bonuses are disabled on this server.");
            return;
        }

        var sub = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "";
        switch (sub)
        {
            case "" or "status":
                SendStatus(player);
                break;
            case "pref":
                HandlePref(player, parameters.Length > 1 ? parameters[1] : "");
                break;
            case "help" or "?":
                player.SendMessage(
                    "=== Lockpick Durability ===\n" +
                    "/lp                       — show banked durability and status\n" +
                    "/lp pref keyfirst         — use valid keys before durability (default)\n" +
                    "/lp pref durability       — use banked charges before keys");
                break;
            default:
                player.SendMessage("Unknown subcommand. Type /lp help for commands.");
                break;
        }
    }

    static void SendStatus(Player player)
    {
        var settings = PatchClass.Settings?.Lockpick ?? new LockpickSettings();
        var durability = player.GetProperty((PropertyInt64)PropDurability) ?? 0L;
        var lastGrant  = player.GetProperty((PropertyInt64)PropLastGrant)  ?? 0L;
        var stackCount = player.GetProperty((PropertyInt64)PropLimitCount) ?? 0L;
        var prefDurFirst = (player.GetProperty((PropertyInt)PropKeyPref)   ?? 0) == 1;

        var sb = new StringBuilder();
        sb.AppendLine("=== Lockpick Durability ===");
        sb.AppendLine($"Banked Durability:   {durability:N0}");

        if (lastGrant > 0 && stackCount > 0)
        {
            sb.AppendLine($"Limitless Lockpick:  active × {stackCount}");
            if (settings.LimitlessRegenEnabled)
            {
                var ratePerInterval = (long)settings.LimitlessRegenChargesPerInterval * stackCount;
                var hours = settings.LimitlessRegenIntervalSeconds / 3600.0;
                sb.AppendLine($"  Rate:              +{ratePerInterval:N0} every {hours:0.#} hours");
                var now = (long)Time.GetUnixTime();
                var remaining = Math.Max(0L, settings.LimitlessRegenIntervalSeconds - (now - lastGrant));
                sb.AppendLine($"  Next regen in:     {FormatDuration(remaining)}");
            }
        }
        else
        {
            sb.AppendLine("Limitless Lockpick:  inactive");
        }

        sb.Append($"Key priority:        {(prefDurFirst ? "Durability first" : "Key first (default)")}");
        player.SendMessage(sb.ToString());
    }

    static void HandlePref(Player player, string pref)
    {
        switch (pref.Trim().ToLowerInvariant())
        {
            case "keyfirst" or "key":
                player.SetProperty((PropertyInt)PropKeyPref, 0);
                player.SendMessage("[Lockpick] Preference: Key first (uses valid keys before durability).");
                break;
            case "durability" or "dur" or "durabilityfirst" or "d":
                player.SetProperty((PropertyInt)PropKeyPref, 1);
                player.SendMessage("[Lockpick] Preference: Durability first (uses banked charges before keys).");
                break;
            default:
                player.SendMessage("Usage: /lp pref keyfirst | /lp pref durability");
                break;
        }
    }

    // ── Lock-use intercept (applied manually in PatchClass) ───────────────────

    public static bool PreWorldObjectOnUse(WorldObject activator, WorldObject __instance)
    {
        if (__instance == null || activator is not Player player) return true;
        if (__instance.IsLocked != true) return true;

        var settings = PatchClass.Settings?.Lockpick;
        if (settings == null) return true;

        if (settings.RequireLockpickSkill && !HasLockpickSkill(player)) return true;

        var difficulty = LockHelper.GetResistLockpick(__instance);
        if (difficulty == null) return true;

        var prefDurFirst = (player.GetProperty((PropertyInt)PropKeyPref) ?? 0) == 1;
        if (!prefDurFirst && PlayerHasValidKey(player, __instance))
            return true;

        var durability = player.GetProperty((PropertyInt64)PropDurability) ?? 0L;
        var cost = (long)difficulty.Value;

        if (durability < cost)
        {
            if (cost > 0)
                player.SendMessage($"[Lockpick] Not enough Lockpick Durability to open {__instance.Name} (need {cost:N0}, have {durability:N0}).");
            return true;
        }

        var newDurability = durability - cost;
        player.SetProperty((PropertyInt64)PropDurability, newDurability);
        __instance.IsLocked = false;

        player.SendMessage($"[Lockpick] Used {cost:N0} Lockpick Durability to unlock {__instance.Name}. Remaining: {newDurability:N0}.");
        return true;
    }

    // ── Passive regen (called from PatchClass background timer) ──────────────

    internal static void TickRegen(LockpickSettings settings)
    {
        var now = (long)Time.GetUnixTime();
        var baseCharges = (long)settings.LimitlessRegenChargesPerInterval;
        var intervalSeconds = settings.LimitlessRegenIntervalSeconds;

        foreach (var player in PlayerManager.GetAllOnline())
        {
            try
            {
                var lastGrant = player.GetProperty((PropertyInt64)PropLastGrant) ?? 0L;
                if (lastGrant == 0L) continue;

                if (now - lastGrant < intervalSeconds) continue;

                var stackCount = Math.Max(1L, player.GetProperty((PropertyInt64)PropLimitCount) ?? 1L);
                var charges = baseCharges * stackCount;

                var current = player.GetProperty((PropertyInt64)PropDurability) ?? 0L;
                var newTotal = current + charges;
                player.SetProperty((PropertyInt64)PropDurability, newTotal);
                player.SetProperty((PropertyInt64)PropLastGrant, now);

                player.SendMessage($"[Lockpick] Passive regen{(stackCount > 1 ? $" (×{stackCount})" : "")}: +{charges:N0} Lockpick Durability. Total: {newTotal:N0}.");
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] Lockpick regen error: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    // ── Helpers ───────────────────────────────────────────────────────────────

    static bool HasLockpickSkill(Player player)
    {
        var skill = player.GetCreatureSkill(Skill.Lockpick);
        return skill != null && skill.AdvancementClass >= SkillAdvancementClass.Trained;
    }

    static bool PlayerHasValidKey(Player player, WorldObject target)
    {
        var lockCode = LockHelper.GetLockCode(target) ?? "";
        foreach (var wo in player.AllItems())
        {
            if (wo is not Key key) continue;
            if (key.GetProperty(PropertyBool.OpensAnyLock) == true) return true;
            if (string.IsNullOrEmpty(lockCode)) continue;
            if ((key.GetProperty(PropertyString.KeyCode) ?? "") == lockCode) return true;
        }
        return false;
    }

    static string FormatDuration(long seconds)
    {
        if (seconds <= 0) return "now";
        var h = seconds / 3600;
        var m = (seconds % 3600) / 60;
        return h > 0 ? $"{h}h {m}m" : $"{m}m";
    }
}
