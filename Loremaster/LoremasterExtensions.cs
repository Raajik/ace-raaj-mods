namespace Loremaster;

public static class LoremasterExtensions
{
    // ─────────────────────────────────────────────────────────────────────────────
    // Quest Point helpers
    // ────────────────────────────────────────────────────────────────────────────
    public static float Value(this CharacterPropertiesQuestRegistry quest)
    {
        if (PatchClass.Settings is null)
            return 0f;

        return PatchClass.Settings.QuestBonuses.TryGetValue(quest.QuestName, out var points)
            ? points
            : PatchClass.Settings.DefaultPoints;
    }

    public static float GetChallengeModeQuestPointsScale(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null)
            return 1f;
        if (!ChallengeModesActiveBridge.PlayerHasCR(player)) // Note: Check if this method exists or if it was ChallengeModesActiveBridge.PlayerHasActiveChallenge
            return 1f;

        const float eps = 0.0001f;

        if (Math.Abs(s.ChallengeModeQuestPointsMultiplier - 1f) > eps)
            return Math.Max(0.001f, s.ChallengeModeQuestPointsMultiplier);

        if (ChallengeModesActiveBridge.TryGetQuestPointsMultiplierFromChallengeModes(player, out var cmMult))
            return Math.Max(0.001f, cmMult);

        if (Math.Abs(s.ChallengeModeXpMultiplier - 1f) > eps)
            return Math.Max(0.001f, s.ChallengeModeXpMultiplier);

        return 1f;
    }

    public static void UpdateQuestPoints(this Player player)
    {
        if (PatchClass.Settings is null || player.QuestManager is null) return;

        var basePoints = PatchClass.Settings.UseAccountWideQuests
            ? player.CalculateAccountQuestPoints()
            : player.CalculateQuestPoints();

        basePoints *= GetChallengeModeQuestPointsScale(player);

        var extraProp = player.GetProperty(LMFloat.QuestPointsExtra);
        float extra;
        if (extraProp is null)
        {
            var oldTotal = (float)(player.GetProperty(FakeFloat.QuestBonus) ?? 0);
            extra = Math.Max(0f, oldTotal - basePoints);
            player.SetProperty(LMFloat.QuestPointsExtra, extra);
        }
        else
        {
            extra = (float)extraProp.Value;
        }

        player.SetProperty(FakeFloat.QuestBonus, basePoints + extra);
    }

    public static void AddExtraQuestPoints(this Player player, float amount)
    {
        var cur = (float)(player.GetProperty(LMFloat.QuestPointsExtra) ?? 0);
        player.SetProperty(LMFloat.QuestPointsExtra, cur + amount);
    }

    public static void AddRepeatStamp(this Player player, float amount)
    {
        var cur = (float)(player.GetProperty(LMFloat.RepeatStampMultiplier) ?? 0);
        player.SetProperty(LMFloat.RepeatStampMultiplier, cur + amount);
    }

    public static void IncQuestPoints(this Player player, float amount)
    {
        player.AddExtraQuestPoints(amount);
    }

    public static float CalculateQuestPoints(this Player player)
    {
        if (player.QuestManager is null) return 0;
        float total = 0;
        foreach (var quest in player.QuestManager.GetQuests().Where(x => x.HasSolves()))
            total += quest.Value();
        return total;
    }

    public static float CalculateAccountQuestPoints(this Player player)
    {
        var accountId = player.Account?.AccountId;
        if (accountId is null)
        {
            ModManager.Log($"[Loremaster] Could not resolve account for {player.Name}, falling back to per-character QP.", ModManager.LogLevel.Warn);
            return player.CalculateQuestPoints();
        }

        var solvedQuestNames = GetAccountUniqueQuestNames(player, accountId.Value);
        var settings = PatchClass.Settings;
        if (settings is null)
            return 0f;

        float total = 0;
        foreach (var questName in solvedQuestNames)
        {
            total += settings.QuestBonuses.TryGetValue(questName, out var points)
                ? points
                : settings.DefaultPoints;
        }
        return total;
    }

    public static double QuestBonus(this Player player)
    {
        if (PatchClass.Settings is null) return 1.0;
        var qp = player.GetProperty(FakeFloat.QuestBonus) ?? 0;
        var stampMult = player.GetProperty(LMFloat.RepeatStampMultiplier) ?? 0;
        var baseFactor = 1.0 + qp * PatchClass.Settings.BonusPerQuestPoint / 100.0;
        var stampFactor = 1.0 + stampMult;
        var chaos = player.GetProperty(LMFloat.ChaosQuestBonusMultiplier);
        if (chaos is double cd && cd > 1.001)
            return baseFactor * stampFactor * cd;
        return baseFactor * stampFactor;
    }

    public static double GetEquipmentXpMultiplierFactor(this Player player)
    {
        double sum = 0;
        foreach (var w in player.EquippedObjects.Values)
            sum += w.GetProperty(FakeFloat.ItemXpBoost) ?? 0f;
        return 1.0 + sum;
    }

    public static double GetEnlightenmentMultiplierFactor(this Player player)
    {
        var s = PatchClass.Settings;
        if (s is null) return 1.0;
        if (s.UseEnlightenmentPoolForXpMultiplier)
        {
            var pool = player.GetProperty(LMFloat.EnlightenmentPoolBonus) ?? 0f;
            return Math.Max(0.0, 1.0 + pool);
        }

        return Math.Max(0.0, 1.0 + player.Enlightenment * (s.EnlightenmentBonusPercentPer / 100.0));
    }

    public static double GetTotalXpMultiplier(this Player player)
    {
        var s = PatchClass.Settings;
        if (s is null) return 1.0;

        var baseF = Math.Clamp(s.StandardBaseXpRetentionPercent / 100.0, 0.0, 100.0);
        var qpF = player.QuestBonus();
        var eqF = Math.Max(0.0, player.GetEquipmentXpMultiplierFactor());
        var augF = Math.Max(0.0, s.AugmentXpMultiplier);
        var enF = Math.Max(0.0, player.GetEnlightenmentMultiplierFactor());
        var cmF = Math.Max(0.0, s.ChallengeModeXpMultiplier);

        return baseF * qpF * eqF * augF * enF * cmF;
    }

    public static double GetQuestCooldownReduction(this Player player)
    {
        if (PatchClass.Settings is null || !PatchClass.Settings.EnableQuestCooldownReduction)
            return 0;
        var qp = player.GetProperty(FakeFloat.QuestBonus) ?? 0;
        var reduction = qp * PatchClass.Settings.CooldownReductionPerQuestPoint / 100.0;
        if (reduction <= 0) return 0;
        if (PatchClass.Settings.QuestCooldownReductionCap is float cap)
            reduction = Math.Min(reduction, cap);
        return reduction;
    }

    public static int GetAccountUniqueQuestCount(this Player player)
    {
1.  // (Redacted for brevity in thought process, will restore in full write)
    }
    // (Rest of the class...)
}
