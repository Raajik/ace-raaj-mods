using ACE.DatLoader.FileTypes;
using ACE.Server.Entity.Actions;

namespace QOL;

[HarmonyPatchCategory(nameof(Features.Animations))]
internal static class Animations
{
    // Intercepts MotionTable.GetAnimationLength. If the requested MotionCommand has an entry
    // in AnimationSpeeds, that value is returned instead — set to 0f to skip entirely.
    // Note: does not factor in MotionStance.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(MotionTable), nameof(MotionTable.GetAnimationLength), new Type[] { typeof(MotionCommand) })]
    public static bool PreGetAnimationLength(MotionCommand motion, ref float __result)
    {
        if (S.Settings.Animations.AnimationSpeeds.TryGetValue(motion, out __result))
            return false;   // skip original; use our value

        return true;        // fall through to original
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
    // Seconds between each /die (HandleSuicide) broadcast step. Lower = faster death RP; retail pacing discussions often reference ~18s total for long recall-adjacent sequences — tune here and via AnimationSpeeds instead of expecting vanilla MotionTable timings.
    public float DieSeconds { get; set; } = 0.0f;

    // Per-motion overrides for MotionTable.GetAnimationLength. Keys are MotionCommands (e.g. LifestoneRecall). Value 0f skips that animation. Recall-related motions are listed below by default; adjust to match desired retail-like timing.
    // See: https://github.com/ACEmulator/ACE/blob/master/Source/ACE.Entity/Enum/MotionCommand.cs
    public Dictionary<MotionCommand, float> AnimationSpeeds { get; set; } = new()
    {
        [MotionCommand.AllegianceHometownRecall] = 0f,
        [MotionCommand.HouseRecall]              = 0f,
        [MotionCommand.LifestoneRecall]          = 0f,
        [MotionCommand.MarketplaceRecall]        = 0f,
        [MotionCommand.PKArenaRecall]            = 0f,
    };
}
