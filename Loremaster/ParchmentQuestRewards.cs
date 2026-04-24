namespace Loremaster;

internal static class ParchmentQuestRewards
{
    internal const string TierEasyLootKey        = "LMParchmentTierEasy";
    internal const string TierAverageLootKey     = "LMParchmentTierAverage";
    internal const string TierChallengingLootKey = "LMParchmentTierChallenging";

    internal static string TierLootKey(ParchmentTemplateSettings t) =>
        NormalizeTier(t.Tier) switch
        {
            ParchmentTierKind.Challenging => TierChallengingLootKey,
            ParchmentTierKind.Average     => TierAverageLootKey,
            _                             => TierEasyLootKey,
        };

    internal static void GrantTierXpAndRepeatLoot(Player player, ParchmentTemplateSettings template)
    {
        var cfg = PatchClass.Settings?.BarkeeperParchments;
        if (cfg is null)
            return;

        var (minF, maxF) = GetTierXpBand(cfg, template);
        if (minF > 0 && maxF > 0 && maxF >= minF)
        {
            var xpToNext = player.GetXpToNextLevel();
            if (xpToNext > 0)
            {
                var roll = minF + (float)(Random.Shared.NextDouble() * (maxF - minF));
                var amount = (long)(xpToNext * roll);
                if (amount > 0)
                {
                    ExternalXpGrants.GrantQuestXpWithoutMultiplier(player, amount);
                    if (player.Notify(LMBool.NotifyQuestXp))
                    {
                        var show = QuestXpAwardDisplay.EstimateCharacterXpAfterAchievementChain(player, amount);
                        player.SendMessage($"[Loremaster] Parchment tier XP: {show:N0}.");
                    }
                }
            }
        }

        player.GrantRepeatSolveLoot(TierLootKey(template));
    }

    static (float min, float max) GetTierXpBand(BarkeeperParchmentsSettings cfg, ParchmentTemplateSettings t) =>
        NormalizeTier(t.Tier) switch
        {
            ParchmentTierKind.Challenging => (cfg.TierChallengingXpPercentMin, cfg.TierChallengingXpPercentMax),
            ParchmentTierKind.Average     => (cfg.TierAverageXpPercentMin, cfg.TierAverageXpPercentMax),
            _                             => (cfg.TierEasyXpPercentMin, cfg.TierEasyXpPercentMax),
        };

    static ParchmentTierKind NormalizeTier(string? tier) =>
        (tier ?? "").Trim().ToLowerInvariant() switch
        {
            "average" or "medium" or "normal" => ParchmentTierKind.Average,
            "challenging" or "hard" or "difficult" => ParchmentTierKind.Challenging,
            _ => ParchmentTierKind.Easy,
        };

    enum ParchmentTierKind
    {
        Easy,
        Average,
        Challenging,
    }
}
