using System.Collections.Concurrent;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace ChallengeModes.Features;

// Level-up: furthest progress (ChallengeRunMaxLevel) only increases while a challenge is active; segment completion at cap * (completions+1) resets m to 0.
// Skill credits: one per achievement level per challenge mode (SSF / hardcore / alternate / aptitude), each once forever; not reset on segment.
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

    static FakeInt BitsProperty(SkillCreditTrack track)
    {
        return track switch
        {
            SkillCreditTrack.Ssf => FakeInt.ChallengeMilestoneSkillBitsSsf,
            SkillCreditTrack.Hardcore => FakeInt.ChallengeMilestoneSkillBitsHardcore,
            SkillCreditTrack.Alternate => FakeInt.ChallengeMilestoneSkillBitsAlternate,
            SkillCreditTrack.Aptitude => FakeInt.ChallengeMilestoneSkillBitsAptitude,
            _ => FakeInt.ChallengeMilestoneSkillBitsSsf,
        };
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

        if (PatchClass.Settings is not { Enabled: true, ChallengeAchievementRewardsEnabled: true })
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

        if (PatchClass.Settings is not { } s || !s.Enabled || !s.ChallengeAchievementRewardsEnabled)
            return;

        if (!SnapshotsByPlayerGuid.TryRemove(__instance.Guid.Full, out GrantXpSnapshot? snap))
            return;

        int newLevel = __instance.Level ?? 1;
        if (newLevel <= snap.LevelBefore)
            return;

        if (!snap.ChallengeActive)
            return;

        int cap = s.ChallengeBonusSegmentCapLevel > 0 ? s.ChallengeBonusSegmentCapLevel : 300;
        float r = s.ChallengeBonusPercentPerLevel;

        int c = __instance.GetProperty(FakeInt.ChallengeCompletionCount) ?? 0;
        int m = __instance.GetProperty(FakeInt.ChallengeRunMaxLevel) ?? 0;
        m = Math.Max(m, newLevel);

        var achievementLevels = s.ChallengeAchievementLevels;

        // One-time migration: old single ChallengeMilestoneClaimBits (legacy ACE name) → same bits on all four tracks (no duplicate skill grants).
        int legacyBits = __instance.GetProperty(FakeInt.ChallengeMilestoneClaimBits) ?? 0;
        if (legacyBits != 0)
        {
            foreach (SkillCreditTrack track in Enum.GetValues<SkillCreditTrack>())
            {
                FakeInt prop = BitsProperty(track);
                int cur = __instance.GetProperty(prop) ?? 0;
                __instance.SetProperty(prop, cur | legacyBits);
            }

            __instance.RemoveProperty(FakeInt.ChallengeMilestoneClaimBits);
        }

        if (achievementLevels is not null && achievementLevels.Count > 0)
        {
            for (int i = 0; i < achievementLevels.Count; i++)
            {
                int ml = achievementLevels[i];
                if (ml <= 0)
                    continue;

                if (snap.LevelBefore >= ml || newLevel < ml)
                    continue;

                int mask = 1 << i;
                int granted = 0;
                var credited = new List<string>();

                foreach (SkillCreditTrack track in Enum.GetValues<SkillCreditTrack>())
                {
                    if (!TrackActive(__instance, track))
                        continue;

                    FakeInt prop = BitsProperty(track);
                    int tb = __instance.GetProperty(prop) ?? 0;
                    if ((tb & mask) != 0)
                        continue;

                    tb |= mask;
                    __instance.SetProperty(prop, tb);
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

        int segmentEnd = cap * (c + 1);
        bool completedSegment = snap.LevelBefore < segmentEnd && newLevel >= segmentEnd;
        if (completedSegment)
        {
            c++;
            m = 0;
            __instance.SendMessage(
                $"Challenge segment complete (level {segmentEnd}): +{cap * r:0.####}% banked toward XP/luminance; furthest progress resets for the next climb (skill credits are not reset).");
        }

        __instance.SetProperty(FakeInt.ChallengeRunMaxLevel, m);
        __instance.SetProperty(FakeInt.ChallengeCompletionCount, c);
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

        int c = player.GetProperty(FakeInt.ChallengeCompletionCount) ?? 0;
        int m = player.GetProperty(FakeInt.ChallengeRunMaxLevel) ?? 0;
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
