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
        if (!ChallengeModesActiveBridge.PlayerHasActiveChallenge(player))
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

        float basePoints;
        if (ChallengeModesActiveBridge.PlayerHasActiveChallenge(player))
        {
            basePoints = (float)(player.GetProperty(LMFloat.ChallengeRunQuestPoints) ?? 0f);
        }
        else
        {
            basePoints = PatchClass.Settings.UseAccountWideQuests
                ? player.CalculateAccountQuestPoints()
                : player.CalculateQuestPoints();
        }

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
        var msF = Math.Max(0.0, 1.0 + (player.GetProperty(LMFloat.AccountMilestoneBonus) ?? 0f));

        return baseF * qpF * eqF * augF * enF * cmF * msF;
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

    // ─────────────────────────────────────────────────────────────────────────
    // Level XP helpers
    // ─────────────────────────────────────────────────────────────────────────

    public static long GetXpToNextLevel(this Player player)
    {
        var level = player.Level ?? 1;
        var xpTable = DatManager.PortalDat.XpTable;
        if (xpTable?.CharacterLevelXPList is not null)
        {
            var list = xpTable.CharacterLevelXPList;
            if (level + 1 < list.Count)
                return (long)(list[level + 1] - list[level]);
        }
        // Quadratic extrapolation above DAT cap (same constants as WorldEvents LevelXpMath)
        const double a = 1973.0, b = -585787.0, c = 48728021.0;
        return Math.Max(0, (long)(a * level * level + b * level + c));
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Account quest lookup (DB + online memory)
    // ─────────────────────────────────────────────────────────────────────────

    public static int GetAccountUniqueQuestCount(this Player player)
    {
        var accountId = player.Account?.AccountId;
        if (accountId is null)
            return player.QuestManager?.GetQuests().Count(q => q.HasSolves()) ?? 0;
        return GetAccountUniqueQuestNames(player, accountId.Value).Count;
    }

    static IReadOnlyList<string> GetAccountUniqueQuestNames(Player player, uint accountId)
    {
        try
        {
            using var ctx = new ShardDbContext();
            var charIds = ctx.Character.AsNoTracking()
                .Where(c => c.AccountId == accountId && !c.IsDeleted)
                .Select(c => c.Id)
                .ToHashSet();

            var names = ctx.CharacterPropertiesQuestRegistry.AsNoTracking()
                .Where(q => charIds.Contains(q.CharacterId) && q.NumTimesCompleted > 0)
                .Select(q => q.QuestName)
                .ToHashSet(StringComparer.OrdinalIgnoreCase);

            // Merge in-memory quests from any online characters on the same account
            foreach (var online in PlayerManager.GetAllOnline())
            {
                if (online.Account?.AccountId == accountId && online.QuestManager != null)
                    foreach (var q in online.QuestManager.GetQuests().Where(q => q.HasSolves()))
                        names.Add(q.QuestName);
            }

            return names.ToList();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] GetAccountUniqueQuestNames failed: {ex.Message}", ModManager.LogLevel.Warn);
            return Array.Empty<string>();
        }
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Notification preferences
    // ─────────────────────────────────────────────────────────────────────────

    public static bool Notify(this Player player, FakeBool property)
    {
        var stored = player.GetProperty(property);
        if (stored.HasValue) return stored.Value;

        var s = PatchClass.NotificationDefaults;
        return property switch
        {
            LMBool.NotifyKillXp         => s?.NotifyKillXpDefault ?? true,
            LMBool.NotifyQuestXp        => s?.NotifyQuestXpDefault ?? true,
            LMBool.NotifyKillLuminance  => s?.NotifyKillLuminanceDefault ?? true,
            LMBool.NotifyQuestLuminance => s?.NotifyQuestLuminanceDefault ?? true,
            _                           => true,
        };
    }

    public static void ToggleNotify(this Player player, FakeBool property, string flagName)
    {
        var current = player.Notify(property);
        player.SetProperty(property, !current);
        player.SendMessage($"[Loremaster] {flagName} notifications {(!current ? "enabled" : "disabled")}.");
    }

    public static string FormatQpNotification(string msg)
        => $"[Loremaster] {msg}";

    // ─────────────────────────────────────────────────────────────────────────
    // XP breakdown display
    // ─────────────────────────────────────────────────────────────────────────

    public static void SendMessageLinesAsSystem(Player player, string text)
    {
        foreach (var line in text.Split('\n', StringSplitOptions.RemoveEmptyEntries))
            player.SendMessage(line.TrimEnd('\r'), ChatMessageType.System);
    }

    public static void SendXpBonusBreakdown(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null) return;

        var baseF = Math.Clamp(s.StandardBaseXpRetentionPercent / 100.0, 0.0, 100.0);
        var qpF   = player.QuestBonus();
        var eqF   = player.GetEquipmentXpMultiplierFactor();
        var augF  = (double)s.AugmentXpMultiplier;
        var enF   = player.GetEnlightenmentMultiplierFactor();
        var cmF   = (double)s.ChallengeModeXpMultiplier;
        var total = player.GetTotalXpMultiplier();

        var qp = player.GetProperty(FakeFloat.QuestBonus) ?? 0;
        player.SendMessage($"[Loremaster] XP multiplier ({total * 100:0.##}% of raw):");
        player.SendMessage($"  Base retention : {baseF * 100:0.##}%");
        player.SendMessage($"  Quest Bonus    : ×{qpF:0.####}  ({qp:0.##} QP)");
        if (Math.Abs(eqF - 1.0) > 0.0001)
            player.SendMessage($"  Equipment      : ×{eqF:0.####}");
        if (Math.Abs(augF - 1.0) > 0.0001)
            player.SendMessage($"  Augments       : ×{augF:0.####}");
        if (Math.Abs(enF - 1.0) > 0.0001)
            player.SendMessage($"  Enlightenment  : ×{enF:0.####}");
        if (Math.Abs(cmF - 1.0) > 0.0001)
            player.SendMessage($"  Challenge Mode : ×{cmF:0.####}");
    }

    public static void SendXpBonusBreakdownDetailed(Player player)
    {
        SendXpBonusBreakdown(player);

        var qp         = player.GetProperty(FakeFloat.QuestBonus) ?? 0;
        var stampMult  = player.GetProperty(LMFloat.RepeatStampMultiplier) ?? 0;
        var extra      = player.GetProperty(LMFloat.QuestPointsExtra) ?? 0;
        var chaos      = player.GetProperty(LMFloat.ChaosQuestBonusMultiplier);

        if (extra > 0.0001f)
            player.SendMessage($"  QP breakdown   : {qp - extra:0.##} from flags, +{extra:0.##} bonus pool = {qp:0.##} total");
        if (stampMult > 0.0001)
            player.SendMessage($"  Repeat stamps  : +{stampMult * 100:0.##}% from repeat solves");
        if (chaos is double cd && cd > 1.001)
            player.SendMessage($"  Chaos mult     : ×{cd:0.####}");

        var sb = new StringBuilder();
        ChallengeModesDetailBridge.AppendChallengeAchievementSection(sb, player);
        var section = sb.ToString().TrimEnd();
        if (!string.IsNullOrEmpty(section))
            SendMessageLinesAsSystem(player, section);
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Quest rewards — completion bonus XP, repeat stamp, loot
    // ─────────────────────────────────────────────────────────────────────────

    public static bool HasReceivedRepeatReward(this Player player, string questName)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.EnableRepeatRewardOnceOnly) return false;

        var stored = player.GetProperty(LMString.RepeatRewardsGranted);
        if (string.IsNullOrEmpty(stored)) return false;

        try
        {
            var timestamps = JsonSerializer.Deserialize<Dictionary<string, long>>(stored);
            if (timestamps?.TryGetValue(questName, out var lastGranted) == true)
            {
                var now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
                return now - lastGranted < s.RepeatStampCooldownSeconds;
            }
        }
        catch { }
        return false;
    }

    public static void MarkRepeatRewardGranted(this Player player, string questName)
    {
        var stored = player.GetProperty(LMString.RepeatRewardsGranted);
        Dictionary<string, long>? timestamps = null;
        if (!string.IsNullOrEmpty(stored))
        {
            try { timestamps = JsonSerializer.Deserialize<Dictionary<string, long>>(stored); } catch { }
        }
        timestamps ??= new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase);

        timestamps[questName] = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        player.SetProperty(LMString.RepeatRewardsGranted, JsonSerializer.Serialize(timestamps));
    }

    public static void GrantCompletionBonuses(this Player player, string questName)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.EnableCompletionBonusXp) return;

        float fraction;
        if (s.CompletionBonusXpOverrides.TryGetValue(questName, out var ovr))
        {
            if (ovr <= 0) return;
            fraction = ovr;
        }
        else
        {
            var qp = (float)(player.GetProperty(FakeFloat.QuestBonus) ?? 0);
            fraction = s.DefaultCompletionBonusXpMultiplier + qp * s.CompletionBonusPerQuestPoint / 100f;
            if (fraction <= 0) return;
        }

        var xpToNext = player.GetXpToNextLevel();
        if (xpToNext <= 0) return;

        var amount = (long)(xpToNext * fraction);
        if (amount <= 0) return;

        ExternalXpGrants.GrantQuestXpWithoutMultiplier(player, amount);

        if (player.Notify(LMBool.NotifyQuestXp))
        {
            var show = QuestXpAwardDisplay.EstimateCharacterXpAfterAchievementChain(player, amount);
            player.SendMessage($"[Loremaster] Completion bonus: +{show:N0} XP.");
        }
    }

    public static bool TryAwardRepeatQuestPoints(this Player player, string questName, float qpVal)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.EnableRepeatStampSystem || qpVal <= 0) return false;

        Dictionary<string, long>? timestamps = null;
        var stored = player.GetProperty(LMString.RepeatQuestPointTimestamps);
        if (!string.IsNullOrEmpty(stored))
        {
            try { timestamps = JsonSerializer.Deserialize<Dictionary<string, long>>(stored); } catch { }
        }
        timestamps ??= new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase);

        var now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        if (timestamps.TryGetValue(questName, out var lastAwarded)
            && now - lastAwarded < s.RepeatStampCooldownSeconds)
            return false;

        timestamps[questName] = now;
        player.SetProperty(LMString.RepeatQuestPointTimestamps, JsonSerializer.Serialize(timestamps));

        var bonus = s.RepeatStampBonusPerStamp * qpVal;
        player.AddRepeatStamp(bonus);

        if (player.Notify(LMBool.NotifyQuest))
            player.SendMessage(FormatQpNotification($"+{bonus:0.###} repeat stamp bonus from {questName}"));

        return true;
    }

    public static void GrantRepeatSolveLoot(this Player player, string lootKey)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.EnableRepeatSolveLoot) return;

        var item = LootRoller.TryCreateRandomItem(LootConfigStore.GetLoadedOrDefault());
        if (item == null) return;

        player.TryCreateInInventoryWithNetworking(item);
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Achievement broadcasts and achievement pool
    // ─────────────────────────────────────────────────────────────────────────

    public static void CheckAndBroadcastAchievement(this Player player, int prevCount, int newCount)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.EnableAchievementBroadcasts) return;

        foreach (var threshold in s.AchievementThresholds)
        {
            if (prevCount < threshold && newCount >= threshold)
            {
                float bonusQp;
                if (s.AchievementBonusQPOverrides.TryGetValue(threshold, out var ovr))
                    bonusQp = ovr;
                else
                    bonusQp = s.AchievementBonusQPBase * s.AchievementBonusQPPercent / 100f;

                if (bonusQp > 0)
                {
                    player.AddExtraQuestPoints(bonusQp);
                    player.UpdateQuestPoints();
                }

                var msg = string.Format(s.AchievementBroadcastFormat,
                    player.Name, Ordinal(threshold), bonusQp.ToString("0.##"));
                foreach (var p in PlayerManager.GetAllOnline())
                    p.SendMessage(msg, ChatMessageType.Broadcast);

                ModManager.Log($"[Loremaster] Achievement: {msg}", ModManager.LogLevel.Info);
            }
        }

    }

    public static void UpdateAchievementPoolBonus(this Player player, double contribution)
    {
        var cur = (float)(player.GetProperty(LMFloat.AchievementPoolBonus) ?? 0f);
        player.SetProperty(LMFloat.AchievementPoolBonus, cur + (float)contribution);
    }

    static string Ordinal(int n) =>
        (n % 100) switch
        {
            11 or 12 or 13 => $"{n}th",
            _ => (n % 10) switch
            {
                1 => $"{n}st",
                2 => $"{n}nd",
                3 => $"{n}rd",
                _ => $"{n}th",
            }
        };
}
