using ACE.Database.Models.World;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace BetterSupportSkills.Skills;

internal static class ChaosTinker
{
    // Session-only chaos mode state (not persisted)
    static readonly ConcurrentDictionary<uint, bool> ChaosModeActive = new();
    static readonly ConcurrentDictionary<uint, DateTime> NextPulseTime = new();
    static readonly ConcurrentDictionary<uint, CancellationTokenSource> PulseTimers = new();

    // Message variations
    static readonly string[] OnMessages = new[]
    {
        "Chaos Tinker: ON — Your next tinkers will fail spectacularly.",
        "The forge whispers your name... and it's laughing.",
        "Hammer ready. Anvil ready. Complete disaster: imminent.",
        "You flip the 'break everything' switch. Bold move.",
        "Your tinkering skills have left the building.",
        "Chaos mode engaged. Warranty void.",
        "The anvil groans. The materials weep. You smile.",
        "Precision? Never heard of her.",
        "You tighten your grip. The hammer tightens its grip on reality.",
        "Tinkering? No. This is art. Bad art.",
        "Your hands glow with the power of 'eh, close enough.'",
        "The forge gods are placing bets on how badly this goes.",
        "Safety goggles off. Chaos goggles: mandatory.",
        "You whisper 'watch this' to no one in particular.",
        "Technically, you're still tinkering. Technically.",
        "The hammer hums. The metal screams. You hear music.",
        "Chaos Tinker: ON — Results may vary. Wildly.",
        "Your skill is taking a coffee break. A long one."
    };

    static readonly string[] OffMessages = new[]
    {
        "Chaos Tinker: OFF — Back to boring, reliable success.",
        "The anvil breathes a sigh of relief.",
        "Your hammer stops vibrating with unholy energy.",
        "You return to the path of 'actually knowing what you're doing.'",
        "The forge gods collect their winnings and leave.",
        "Chaos mode disengaged. Warranty restored (probably).",
        "Your materials stop sweating. You stop sweating.",
        "Back to precision. How... quaint.",
        "The hammer goes quiet. Too quiet.",
        "You dust off your actual skill. It's been a while.",
        "The 'break everything' switch flips back. For now.",
        "Normal tinkering resumed. The universe is disappointed.",
        "Your hands stop glowing. The forge is silent.",
        "Chaos Tinker: OFF — But the memories remain.",
        "You almost miss the explosions. Almost.",
        "Back to craftsmanship. The anvil is grateful.",
        "The hammer is just a hammer again. Boring.",
        "You disengage chaos. The forge sheds a single tear."
    };

    // -- Unlock Detection ------------------------------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(double) })]
    public static void PostfixHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
    {
        if (player == null || PatchClass.Settings?.EnableChaosTinkerAchievement != true)
            return;

        // Only process if this was a failed tinker attempt
        bool rolledSuccess = Random.Shared.NextDouble() * 100.0 < successChance;
        if (rolledSuccess)
            return;

        // -- Chaos failure tracking --
        if (_wasChaosFailure && target != null)
        {
            var settings = PatchClass.Settings?.ChaosTinker;

            // Increment NumTimesTinkered on the item (if enabled)
            if (settings?.IncrementNumTimesTinkeredOnFailure == true)
            {
                int currentTinkered = target.GetProperty(PropertyInt.NumTimesTinkered) ?? 0;
                target.SetProperty(PropertyInt.NumTimesTinkered, currentTinkered + 1);
            }

            // Track chaos failures separately
            int currentChaosFailures = target.GetProperty((PropertyInt)40120) ?? 0;
            target.SetProperty((PropertyInt)40120, currentChaosFailures + 1);

            player.SendMessage($"The chaos takes its toll... ({currentChaosFailures + 1} chaos failures on this item)", ChatMessageType.System);
        }

        // Check if player has any tinkering trained
        if (!HasAnyTinkering(player))
            return;

        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        if (profile.ChaosTinkerUnlocked)
            return;

        // Unlock!
        profile.ChaosTinkerUnlocked = true;
        PlayerProfileStore.Save(player.Guid.Full, profile);

        player.SendMessage(
            "You have embraced the chaos of the forge. Use /chaostinker to intentionally sabotage your tinkering for greater rewards!",
            ChatMessageType.Broadcast);

        ModManager.Log($"[BSS] ChaosTinker unlocked for {player.Name}", ModManager.LogLevel.Info);
    }

    // -- Failure Override ------------------------------------------------

    [ThreadStatic]
    static bool _wasChaosFailure;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(double) })]
    [HarmonyPriority(Priority.High)]
    public static void PrefixHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, ref double successChance)
    {
        _wasChaosFailure = false;
        if (player == null)
            return;

        if (ChaosModeActive.GetValueOrDefault(player.Guid.Full, false))
        {
            var settings = PatchClass.Settings?.ChaosTinker;
            int maxFailures = settings?.MaxChaosFailuresPerItem ?? 5;

            // Check per-item chaos failure cap
            int currentChaosFailures = target?.GetProperty((PropertyInt)40120) ?? 0;
            if (currentChaosFailures >= maxFailures)
            {
                player.SendMessage("This item has endured too much chaos and resists further sabotage.", ChatMessageType.System);
                return; // Don't force failure — allow normal tinker
            }

            // Force failure when chaos mode is active
            successChance = 0;
            _wasChaosFailure = true;
        }
    }

    // -- Command Handler -------------------------------------------------

    [CommandHandler("chaostinker", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Toggle chaos tinkering mode. Forces tinkering failures for chaotic positive effects.",
        "Usage: /chaostinker")]
    public static void HandleChaosTinker(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);

        if (!profile.ChaosTinkerUnlocked)
        {
            player.SendMessage("You have not yet embraced the chaos of the forge. Fail a tinker first!", ChatMessageType.System);
            return;
        }

        if (!HasAnyTinkering(player))
        {
            player.SendMessage("You need a tinkering skill trained to channel the chaos.", ChatMessageType.System);
            return;
        }

        uint guid = player.Guid.Full;
        bool currentlyActive = ChaosModeActive.GetValueOrDefault(guid, false);
        bool newState = !currentlyActive;
        ChaosModeActive[guid] = newState;

        if (newState)
        {
            // Turn ON
            string msg = OnMessages[Random.Shared.Next(OnMessages.Length)];
            player.SendMessage(msg, ChatMessageType.Broadcast);
            StartVisualPulse(player);
        }
        else
        {
            // Turn OFF
            string msg = OffMessages[Random.Shared.Next(OffMessages.Length)];
            player.SendMessage(msg, ChatMessageType.Broadcast);
            StopVisualPulse(guid);
        }
    }

    // -- Visual Pulse ----------------------------------------------------

    static void StartVisualPulse(Player player)
    {
        uint guid = player.Guid.Full;
        StopVisualPulse(guid);

        var cts = new CancellationTokenSource();
        PulseTimers[guid] = cts;
        NextPulseTime[guid] = DateTime.UtcNow.AddSeconds(10);

        _ = Task.Run(async () =>
        {
            while (!cts.Token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(1000, cts.Token);
                }
                catch (TaskCanceledException)
                {
                    break;
                }

                if (!ChaosModeActive.GetValueOrDefault(guid, false))
                    break;

                if (DateTime.UtcNow >= NextPulseTime.GetValueOrDefault(guid, DateTime.MinValue))
                {
                    // Find player (they may have changed instances)
                    var p = PlayerManager.GetOnlinePlayer(guid);
                    if (p != null)
                    {
                        try
                        {
                            p.ApplyVisualEffects(ACE.Entity.Enum.PlayScript.AetheriaSurgeDestruction, 1.0f);
                        }
                        catch { }
                    }
                    NextPulseTime[guid] = DateTime.UtcNow.AddSeconds(10);
                }
            }
        }, cts.Token);
    }

    static void StopVisualPulse(uint guid)
    {
        if (PulseTimers.TryRemove(guid, out var cts))
        {
            try { cts.Cancel(); } catch { }
        }
        NextPulseTime.TryRemove(guid, out _);
    }

    // -- Helpers ---------------------------------------------------------

    static bool HasAnyTinkering(Player player)
    {
        return IsTrainedOrSpec(player, Skill.WeaponTinkering)
            || IsTrainedOrSpec(player, Skill.ArmorTinkering)
            || IsTrainedOrSpec(player, Skill.ItemTinkering)
            || IsTrainedOrSpec(player, Skill.MagicItemTinkering);
    }

    static bool IsTrainedOrSpec(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        return cs != null && cs.AdvancementClass >= SkillAdvancementClass.Trained;
    }
}
