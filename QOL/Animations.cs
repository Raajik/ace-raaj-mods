using ACE.DatLoader.FileTypes;
using ACE.Server.Entity.Actions;

namespace QOL;

[HarmonyPatchCategory(nameof(Features.Animations))]
internal static class Animations
{
    // Set synchronously before each player action that calls GetAnimationLength; cleared in finalizer.
    [ThreadStatic] static int _animTier;

    static Func<Player, string, bool>? _hasAchievementRef;

    static bool HasAchievementUnlocked(Player p, string id)
    {
        if (_hasAchievementRef is null)
        {
            var asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "AchievementUnlocked");
            if (asm is null) return false;
            var type = asm.GetType("AchievementUnlocked.AchievementManager");
            var method = type?.GetMethod("HasAchievement", new[] { typeof(Player), typeof(string) });
            if (method is not null)
                _hasAchievementRef = (Func<Player, string, bool>)Delegate.CreateDelegate(typeof(Func<Player, string, bool>), method);
        }
        return _hasAchievementRef?.Invoke(p, id) == true;
    }

    static int GetPlayerAnimTier(Player p)
    {
        if (HasAchievementUnlocked(p, "LoreTier4")) return 4;
        if (HasAchievementUnlocked(p, "LoreTier3")) return 3;
        if (HasAchievementUnlocked(p, "LoreTier2")) return 2;
        if (HasAchievementUnlocked(p, "LoreTier1")) return 1;
        // Legacy fallback for characters migrated before AchievementUnlocked
        return p.GetProperty((FakeInt)11050) ?? 0;
    }

    // ── MotionTable hooks ──────────────────────────────────────────────────

    // Intercepts the stance-aware MotionTable.GetAnimationLength implementation. Pickup, reload, combat stance,
    // and recalls (including the 1-arg convenience overload, which delegates here) all flow through this overload.
    // Keys in AnimationSpeeds match MotionCommand only; MotionStance is ignored. Omitted key = vanilla length.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(MotionTable), nameof(MotionTable.GetAnimationLength), new Type[] { typeof(MotionStance), typeof(MotionCommand), typeof(MotionCommand) })]
    public static bool PreGetAnimationLength(MotionStance stance, MotionCommand motion, MotionCommand currentMotion, ref float __result)
    {
        var anim = S.Settings?.Animations;
        if (anim is null) return true;

        int tier = _animTier;

        // Tier 2+: instant (existing behaviour for all animations in the dict)
        if (tier >= 2 && anim.AnimationSpeeds.TryGetValue(motion, out float instant))
        {
            __result = instant;
            return false;
        }

        // Tier 0: vanilla — only apply if not in the dict at all
        if (tier == 0) return true;

        // Tier 1: let original run, postfix will multiply
        return true;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(MotionTable), nameof(MotionTable.GetAnimationLength), new Type[] { typeof(MotionStance), typeof(MotionCommand), typeof(MotionCommand) })]
    public static void PostGetAnimationLength(MotionCommand motion, ref float __result)
    {
        var anim = S.Settings?.Animations;
        if (anim is null || _animTier != 1) return;
        if (anim.AnimationSpeeds.ContainsKey(motion))
            __result *= anim.Tier1Multiplier;
    }

    // ── Per-player tier taggers ────────────────────────────────────────────
    // Each public player action that flows through GetAnimationLength gets a prefix
    // (sets _animTier) and a finalizer (always resets it, even on exception).

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionPutItemInContainer), typeof(uint), typeof(uint), typeof(int))]
    static void PrePickup(Player __instance) => _animTier = GetPlayerAnimTier(__instance);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionPutItemInContainer), typeof(uint), typeof(uint), typeof(int))]
    static void FinalPickup() => _animTier = 0;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToLifestone")]
    static void PreLifestone(Player __instance) => _animTier = GetPlayerAnimTier(__instance);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToLifestone")]
    static void FinalLifestone() => _animTier = 0;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToHouse")]
    static void PreHouseRecall(Player __instance) => _animTier = GetPlayerAnimTier(__instance);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToHouse")]
    static void FinalHouseRecall() => _animTier = 0;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToMansion")]
    static void PreMansion(Player __instance) => _animTier = GetPlayerAnimTier(__instance);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToMansion")]
    static void FinalMansion() => _animTier = 0;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "HandleActionRecallAllegianceHometown")]
    static void PreAllegiance(Player __instance) => _animTier = GetPlayerAnimTier(__instance);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(Player), "HandleActionRecallAllegianceHometown")]
    static void FinalAllegiance() => _animTier = 0;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToMarketPlace")]
    static void PreMarketplace(Player __instance) => _animTier = GetPlayerAnimTier(__instance);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToMarketPlace")]
    static void FinalMarketplace() => _animTier = 0;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToPkArena")]
    static void PrePkArena(Player __instance) => _animTier = GetPlayerAnimTier(__instance);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToPkArena")]
    static void FinalPkArena() => _animTier = 0;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToPklArena")]
    static void PrePklArena(Player __instance) => _animTier = GetPlayerAnimTier(__instance);

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(Player), "HandleActionTeleToPklArena")]
    static void FinalPklArena() => _animTier = 0;

    // ── /die sequence ──────────────────────────────────────────────────────

    // Rewrites the /die sequence to use a configurable delay between each broadcast message.
    // Bails out early if the suicide is no longer in progress or numDeaths has changed.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "HandleSuicide", new Type[] { typeof(int), typeof(int) })]
    public static bool PreHandleSuicide(int numDeaths, int step, ref Player __instance)
    {
        if (!__instance.suicideInProgress || numDeaths != __instance.NumDeaths)
            return false;

        if (step >= Player.SuicideMessages.Count)
        {
            __instance.Die(new DamageHistoryInfo(__instance), __instance.DamageHistory.TopDamager);
            return false;
        }

        // Must re-resolve the player via PlayerManager to safely capture it
        // in the ActionChain lambda — the __instance ref isn't safe across ticks.
        if (PlayerManager.GetOnlinePlayer(__instance.Guid) is not Player p)
            return true;

#if REALM
        p.EnqueueBroadcast(new GameMessageHearSpeech(Player.SuicideMessages[step], p.GetNameWithSuffix(), p.Guid.ClientGUID, ChatMessageType.Speech), WorldObject.LocalBroadcastRange);
#else
        p.EnqueueBroadcast(new GameMessageHearSpeech(Player.SuicideMessages[step], p.GetNameWithSuffix(), p.Guid.Full, ChatMessageType.Speech), WorldObject.LocalBroadcastRange);
#endif

        var chain = new ActionChain();
        chain.AddDelaySeconds(S.Settings.Animations.DieSeconds);
        chain.AddAction(p, () => p.HandleSuicide(numDeaths, step + 1));
        chain.EnqueueChain();

        return false;
    }
}

public class AnimationSettings
{
    [JsonPropertyName("// DieSeconds")]
    public string DieSecondsDoc { get; init; } = "Seconds between each /die (HandleSuicide) speech step. 0 = minimal delay. Does not use MotionTable.";

    // Seconds between each /die (HandleSuicide) broadcast step. Lower = faster death RP; retail pacing discussions often reference ~18s total for long recall-adjacent sequences — tune here and via AnimationSpeeds instead of expecting vanilla MotionTable timings.
    public float DieSeconds { get; set; } = 0.0f;

    [JsonPropertyName("// Tier1Multiplier")]
    public string Tier1MultiplierDoc { get; init; } = "Animation length multiplier for Achievement Tier 1 players (0–1). 0.5 = half vanilla speed for motions listed in AnimationSpeeds. Tier 2+ players get instant (0.0) per AnimationSpeeds values.";
    public float Tier1Multiplier { get; set; } = 0.5f;

    [JsonPropertyName("// AnimationSpeeds")]
    public string AnimationSpeedsDoc { get; init; } = "Keys must be quoted ACE MotionCommand names (JSON strings). Value = seconds for Tier 2+ players (0 = instant). Tier 1 players get vanilla × Tier1Multiplier. Tier 0 players get vanilla. Omitted key = vanilla for all tiers. Enum: ACE.Entity.Enum.MotionCommand.";

    // See MotionCommand enum: https://github.com/ACEmulator/ACE/blob/master/Source/ACE.Entity/Enum/MotionCommand.cs
    public Dictionary<MotionCommand, float> AnimationSpeeds { get; set; } = new()
    {
        [MotionCommand.AllegianceHometownRecall] = 0f,
        [MotionCommand.HouseRecall] = 0f,
        [MotionCommand.LifestoneRecall] = 0f,
        [MotionCommand.MarketplaceRecall] = 0f,
        [MotionCommand.PKArenaRecall] = 0f,
        [MotionCommand.Pickup] = 0f,
        [MotionCommand.StoreInBackpack] = 0f,
        [MotionCommand.Pickup5] = 0f,
        [MotionCommand.Pickup10] = 0f,
        [MotionCommand.Pickup15] = 0f,
        [MotionCommand.Pickup20] = 0f,
        [MotionCommand.SkillHealSelf] = 0f,
        [MotionCommand.SkillHealOther] = 0f,
    };
}
