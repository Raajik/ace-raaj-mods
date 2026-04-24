using System.Text;
using ACE.Server.WorldObjects;

namespace ChallengeModes.Features;

// Consumed via reflection from Loremaster /qb detailed (no project reference).
public static class LoremasterXpDetail
{
    // Returns 0 when achievement rewards are off or ChallengeModes is disabled.
    public static double GetAchievementBonusPercent(Player player)
    {
        if (PatchClass.Settings is not { } s || !s.Enabled || !s.ChallengeAchievementRewardsEnabled)
            return 0;
        return ChallengeAchievementGrants.GetChallengeBonusBreakdown(player, s).TotalPercent;
    }

    public static void AppendChallengeAchievementSection(StringBuilder sb, Player player)
    {
        sb.AppendLine("--- ChallengeModes achievement (XP / luminance) ---");
        if (PatchClass.Settings is not { } s || !s.Enabled)
        {
            sb.AppendLine("ChallengeModes is disabled in ChallengeModes/Settings.json.");
            return;
        }

        if (!s.ChallengeAchievementRewardsEnabled)
        {
            sb.AppendLine("Achievement rewards off (ChallengeAchievementRewardsEnabled=false). No segment % on GrantXP/EarnLuminance.");
            return;
        }

        ChallengeAchievementGrants.ChallengeBonusBreakdown b =
            ChallengeAchievementGrants.GetChallengeBonusBreakdown(player, s);
        sb.AppendLine(
            $"Percent per level toward a segment: {b.PercentPerLevel:0.#####}% (ChallengeBonusPercentPerLevel).");
        sb.AppendLine($"Segment length: {b.SegmentCap} levels (ChallengeBonusSegmentCapLevel).");
        sb.AppendLine($"Segments completed (banks cap × % each): {b.CompletionCount} (ChallengeCompletionCount).");
        sb.AppendLine(
            $"Furthest level this segment (climb): {b.RunMaxLevel} (ChallengeRunMaxLevel; does not drop on death).");
        sb.AppendLine($"Your current level: {b.CurrentLevel}.");
        sb.AppendLine(
            $"Levels counting toward this segment for the partial term: {b.ProgressLevels:0.####}.");
        sb.AppendLine(
            $"Banked from completed segments: +{b.BankedPercent:0.####}% (= completions × segmentCap × %/level).");
        sb.AppendLine($"Partial this segment: +{b.PartialPercent:0.####}% (= progressLevels × %/level).");
        sb.AppendLine(
            $"Total achievement bonus (additive): +{b.TotalPercent:0.####}% (banked + partial; one pooled value, not per SSF vs Hardcore).");
        double mult = 1.0 + b.TotalPercent / 100.0;
        sb.AppendLine($"GrantXP / EarnLuminance multiplier from achievement: ×{mult:0.######} (= 1 + total%/100).");
        sb.AppendLine(
            "Skill credits at ChallengeAchievementLevels are per challenge track (SSF / Hardcore / alternate / aptitude), once each; the % above is from segment progress only.");
        sb.AppendLine(
            "Chaos mode multiplies the Loremaster Quest Points factor (FakeFloat 11013), not this achievement %.");
        sb.AppendLine(
            $"Challenge active now: {(PatchClass.PlayerHasActiveChallenge(player) ? "yes" : "no")} (furthest grows while leveling with a /cm mode).");
    }
}
