using ACE.DatLoader.FileTypes;
using ACE.Server.Entity.Actions;

namespace QOL;

[HarmonyPatchCategory(nameof(Features.Animations))]
internal static class Animations
{
    // Intercepts the stance-aware MotionTable.GetAnimationLength implementation. Pickup, reload, combat stance,
    // and recalls (including the 1-arg convenience overload, which delegates here) all flow through this overload.
    // Keys in AnimationSpeeds match MotionCommand only; MotionStance is ignored. Omitted key = vanilla length.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(MotionTable), nameof(MotionTable.GetAnimationLength), new Type[] { typeof(MotionStance), typeof(MotionCommand), typeof(MotionCommand) })]
    public static bool PreGetAnimationLength(MotionStance stance, MotionCommand motion, MotionCommand currentMotion, ref float __result)
    {
        if (S.Settings?.Animations != null && S.Settings.Animations.AnimationSpeeds.TryGetValue(motion, out float len))
        {
            __result = len;
            return false;
        }

        return true;
    }

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

    [JsonPropertyName("// AnimationSpeeds")]
    public string AnimationSpeedsDoc { get; init; } = "Keys must be quoted ACE MotionCommand names (JSON strings). Value = seconds for that motion (stance ignored). 0 = skip segment. Shipped preset below is all 0 for instant (old QOL behavior). For vanilla motion-table timing, replace the object with {} or remove individual keys. Enum: ACE.Entity.Enum.MotionCommand.";

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
        [MotionCommand.NonCombat] = 0f,
        [MotionCommand.HandCombat] = 0f,
        [MotionCommand.BowCombat] = 0f,
        [MotionCommand.CrossbowCombat] = 0f,
        [MotionCommand.SkillHealSelf] = 0f,
        [MotionCommand.SkillHealOther] = 0f,
        [MotionCommand.Reload] = 0f,
    };
}
