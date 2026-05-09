using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace ChallengeModes.Features;

// Level-up: furthest progress (ChallengeRunMaxLevel) only increases while a challenge is active; segment completion at cap * (completions+1) resets m to 0.
// Skill credits: one per achievement level per challenge mode (SSF / hardcore / alternate / aptitude), each once forever; not reset on segment.
// Milestone bonuses: 0.1% account-wide XP per milestone level per active track (Regular / SSF / Hardcore / Alternate / Aptitude / Chaos).
// Furthest progress never decreases on death or level loss — only segment completion at the segment cap resets the in-segment counter.
[HarmonyPatchCategory(nameof(ChallengeRewards))]
public static class ChallengeAchievementGrants
{
    enum SkillCreditTrack
    {
        Ssf,
        Hardcore,
        Alternate,
        Aptitude,
    }

    static bool TrackActive(Player player, SkillCreditTrack track)
    {
        return track switch
        {
            SkillCreditTrack.Ssf => player.GetProperty(FakeBool.Ironman) == true,
            SkillCreditTrack.Hardcore => player.GetProperty(FakeBool.Hardcore) == true,
            SkillCreditTrack.Alternate => PatchClass.IsAlternateLevelingEnabled(player),
            SkillCreditTrack.Aptitude => PatchClass.IsAptitudeEnabled(player),
            _ => false,
        };
    }

    static string TrackLabel(SkillCreditTrack track)
    {
        return track switch
        {
            SkillCreditTrack.Ssf => "SSF",
            SkillCreditTrack.Hardcore => "Hardcore",
            SkillCreditTrack.Alternate => "Alternate leveling",
            SkillCreditTrack.Aptitude => "Aptitude",
            _ => "?",
        };
    }

    enum MilestoneTrack
    {
        Regular,
        Ssf,
        Hardcore,
        Alternate,
        Aptitude,
        Chaos,
    }

    static bool MilestoneTrackActive(Player player, MilestoneTrack track)
    {
        return track switch
        {
            MilestoneTrack.Regular => true,
            MilestoneTrack.Ssf => player.GetProperty(FakeBool.Ironman) == true,
            MilestoneTrack.Hardcore => player.GetProperty(FakeBool.Hardcore) == true,
            MilestoneTrack.Alternate => PatchClass.IsAlternateLevelingEnabled(player),
            MilestoneTrack.Aptitude => PatchClass.IsAptitudeEnabled(player),
            MilestoneTrack.Chaos => PatchClass.IsChaosEnabled(player),
            _ => false,
        };
    }

    static string MilestoneTrackLabel(MilestoneTrack track)
    {
        return track switch
        {
            MilestoneTrack.Regular => "Regular",
            MilestoneTrack.Ssf => "SSF",
            MilestoneTrack.Hardcore => "Hardcore",
            MilestoneTrack.Alternate => "Alternate leveling",
            MilestoneTrack.Aptitude => "Aptitude",
            MilestoneTrack.Chaos => "Chaos",
            _ => "?",
        };
    }

    // Reflection bridge to AchievementUnlocked (avoids hard project reference)
    static Func<Player, string, bool>? _hasAchievementRef;
    static Action<Player, string>? _unlockAchievementRef;
    static Func<uint, string, bool>? _hasAccountAchievementRef;
    static Action<uint, string>? _unlockAccountAchievementRef;
    static Action<uint, float>? _addAccountMilestoneBonusRef;

    static void EnsureAchievementBridge()
    {
        if (_hasAchievementRef is not null && _unlockAchievementRef is not null
            && _hasAccountAchievementRef is not null && _unlockAccountAchievementRef is not null
            && _addAccountMilestoneBonusRef is not null)
            return;

        var asm = AppDomain.CurrentDomain.GetAssemblies()
            .FirstOrDefault(a => a.GetName().Name == "AchievementUnlocked");
        if (asm is null) return;

        var type = asm.GetType("AchievementUnlocked.AchievementManager");
        if (type is null) return;

        var hasMethod = type.GetMethod("HasAchievement", new[] { typeof(Player), typeof(string) });
        var unlockMethod = type.GetMethod("UnlockAchievement", new[] { typeof(Player), typeof(string) });
        var hasAccountMethod = type.GetMethod("HasAccountAchievement", new[] { typeof(uint), typeof(string) });
        var unlockAccountMethod = type.GetMethod("UnlockAccountAchievement", new[] { typeof(uint), typeof(string) });
        var addMilestoneMethod = type.GetMethod("AddAccountMilestoneBonus", new[] { typeof(uint), typeof(float) });

        if (hasMethod is not null)
            _hasAchievementRef = (Func<Player, string, bool>)Delegate.CreateDelegate(typeof(Func<Player, string, bool>), hasMethod);
        if (unlockMethod is not null)
            _unlockAchievementRef = (Action<Player, string>)Delegate.CreateDelegate(typeof(Action<Player, string>), unlockMethod);
        if (hasAccountMethod is not null)
            _hasAccountAchievementRef = (Func<uint, string, bool>)Delegate.CreateDelegate(typeof(Func<uint, string, bool>), hasAccountMethod);
        if (unlockAccountMethod is not null)
            _unlockAccountAchievementRef = (Action<uint, string>)Delegate.CreateDelegate(typeof(Action<uint, string>), unlockAccountMethod);
        if (addMilestoneMethod is not null)
            _addAccountMilestoneBonusRef = (Action<uint, float>)Delegate.CreateDelegate(typeof(Action<uint, float>), addMilestoneMethod);
    }

    static bool HasAchievement(Player player, string id)
    {
        EnsureAchievementBridge();
        return _hasAchievementRef?.Invoke(player, id) == true;
    }

    static void UnlockAchievement(Player player, string id)
    {
        EnsureAchievementBridge();
        _unlockAchievementRef?.Invoke(player, id);
    }

    static bool HasAccountAchievement(uint accountId, string id)
    {
        EnsureAchievementBridge();
        return _hasAccountAchievementRef?.Invoke(accountId, id) == true;
    }

    static void UnlockAccountAchievement(uint accountId, string id)
    {
        EnsureAchievementBridge();
        _unlockAccountAchievementRef?.Invoke(accountId, id);
    }

    static void AddAccountMilestoneBonus(uint accountId, float amount)
    {
        EnsureAchievementBridge();
        _addAccountMilestoneBonusRef?.Invoke(accountId, amount);
    }

    sealed class GrantXpSnapshot
    {
        internal int LevelBefore;
        internal bool ChallengeActive;
    }

    static readonly ConcurrentDictionary<uint, GrantXpSnapshot> SnapshotsByPlayerGuid = new();

    [HarmonyPriority(300)]
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PrefixGrantXp(Player __instance)
    {
        if (__instance?.Guid == null)
            return;

        SnapshotsByPlayerGuid[__instance.Guid.Full] = new GrantXpSnapshot
        {
            LevelBefore = __instance.Level ?? 1,
            ChallengeActive = PatchClass.PlayerHasActiveChallenge(__instance),
        };
    }

    [HarmonyPriority(300)]
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PostfixGrantXp(Player __instance)
    {
        if (__instance?.Guid == null)
            return;

        if (!SnapshotsByPlayerGuid.TryRemove(__instance.Guid.Full, out GrantXpSnapshot? snap))
            return;

        int newLevel = __instance.Level ?? 1;
        if (newLevel <= snap.LevelBefore)
            return;

        var s = PatchClass.Settings;
        if (s is null || !s.Enabled)
            return;

        var achievementLevels = s.ChallengeAchievementLevels;
        var accountId = __instance.Account?.AccountId ?? 0;

        // ── Milestone bonuses: all characters, all active tracks ──
        if (accountId != 0 && achievementLevels is not null && achievementLevels.Count > 0)
        {
            for (int i = 0; i < achievementLevels.Count; i++)
            {
                int ml = achievementLevels[i];
                if (ml <= 0)
                    continue;

                if (snap.LevelBefore >= ml || newLevel < ml)
                    continue;

                foreach (MilestoneTrack track in Enum.GetValues<MilestoneTrack>())
                {
                    if (!MilestoneTrackActive(__instance, track))
                        continue;

                    var achId = $"CmMilestone_{track}_{ml}";
                    bool wasUnlocked = HasAccountAchievement(accountId, achId);
                    UnlockAccountAchievement(accountId, achId);
                    bool isNowUnlocked = HasAccountAchievement(accountId, achId);

                    if (!wasUnlocked && isNowUnlocked)
                    {
                        AddAccountMilestoneBonus(accountId, 0.1f);
                        __instance.SendMessage(
                            $"{MilestoneTrackLabel(track)} milestone level {ml}: +0.1% account-wide XP bonus.",
                            ChatMessageType.Broadcast);
                    }
                }
            }
        }

        // ── Challenge-specific: skill credits + segment tracking ──
        if (!s.ChallengeAchievementRewardsEnabled || !snap.ChallengeActive)
            return;

        int cap = s.ChallengeBonusSegmentCapLevel > 0 ? s.ChallengeBonusSegmentCapLevel : 300;
        float r = s.ChallengeBonusPercentPerLevel;

        int c = __instance.GetProperty((FakeInt)11000) ?? 0;
        int m = __instance.GetProperty((FakeInt)11001) ?? 0;
        m = Math.Max(m, newLevel);

        // Skill credits (per challenge track, once each)
        if (achievementLevels is not null && achievementLevels.Count > 0)
        {
            for (int i = 0; i < achievementLevels.Count; i++)
            {
                int ml = achievementLevels[i];
                if (ml <= 0)
                    continue;

                if (snap.LevelBefore >= ml || newLevel < ml)
                    continue;

                var achId = $"CmReach{ml}";
                bool wasUnlocked = HasAchievement(__instance, achId);
                UnlockAchievement(__instance, achId);
                bool isNowUnlocked = HasAchievement(__instance, achId);

                if (!wasUnlocked && isNowUnlocked)
                {
                    int granted = 0;
                    var credited = new List<string>();

                    foreach (SkillCreditTrack track in Enum.GetValues<SkillCreditTrack>())
                    {
                        if (!TrackActive(__instance, track))
                            continue;

                        granted++;
                        credited.Add(TrackLabel(track));
                    }

                    if (granted > 0)
                    {
                        __instance.AddSkillCredits(granted);
                        __instance.SendMessage(
                            $"Challenge achievement (level {ml}): +{granted} skill credit(s) ({string.Join(", ", credited)}). One per active challenge mode, once each.");
                    }
                }
            }
        }

        int segmentEnd = cap * (c + 1);
        bool completedSegment = snap.LevelBefore < segmentEnd && newLevel >= segmentEnd;
        if (completedSegment)
        {
            c++;
            m = 0;
            __instance.SendMessage(
                $"Challenge segment complete (level {segmentEnd}): +{cap * r:0.####}% banked toward XP/luminance; furthest progress resets for the next climb (skill credits are not reset).");
        }

        __instance.SetProperty((FakeInt)11001, m);
        __instance.SetProperty((FakeInt)11000, c);
    }

    // Banked (completed segments) + in-run furthest toward current segment; see Settings ChallengeBonusPercentPerLevel / SegmentCapLevel.
    internal readonly record struct ChallengeBonusBreakdown(
        float PercentPerLevel,
        int SegmentCap,
        int CompletionCount,
        int RunMaxLevel,
        int CurrentLevel,
        double ProgressLevels,
        double BankedPercent,
        double PartialPercent)
    {
        internal double TotalPercent => BankedPercent + PartialPercent;
    }

    internal static ChallengeBonusBreakdown GetChallengeBonusBreakdown(Player player, Settings s)
    {
        float r = s.ChallengeBonusPercentPerLevel;
        int cap = s.ChallengeBonusSegmentCapLevel > 0 ? s.ChallengeBonusSegmentCapLevel : 300;

        int c = player.GetProperty((FakeInt)11000) ?? 0;
        int m = player.GetProperty((FakeInt)11001) ?? 0;
        int lvl = player.Level ?? 1;

        double progressLevels;
        if (lvl < cap * c)
            progressLevels = Math.Min(m, cap);
        else
            progressLevels = Math.Min(Math.Max(0, m - cap * c), cap);

        double banked = c * cap * r;
        double partial = progressLevels * r;
        return new ChallengeBonusBreakdown(r, cap, c, m, lvl, progressLevels, banked, partial);
    }

    internal static double GetTotalBonusPercent(Player player, Settings s)
    {
        return GetChallengeBonusBreakdown(player, s).TotalPercent;
    }
}
