namespace Loremaster;

public static class LoremasterExtensions
{
    // ─────────────────────────────────────────────────────────────────────────
    // Quest Point helpers
    // ─────────────────────────────────────────────────────────────────────────

    public static float Value(this CharacterPropertiesQuestRegistry quest)
    {
        if (PatchClass.Settings is null)
            return 0f;

        return PatchClass.Settings.QuestBonuses.TryGetValue(quest.QuestName, out var points)
            ? points
            : PatchClass.Settings.DefaultPoints;
    }

    public static void UpdateQuestPoints(this Player player)
    {
        if (PatchClass.Settings is null || player.QuestManager is null) return;

        var basePoints = PatchClass.Settings.UseAccountWideQuests
            ? player.CalculateAccountQuestPoints()
            : player.CalculateQuestPoints();

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

    // Adds to the persisted extra QP pool (milestones, repeat-solve awards). Call UpdateQuestPoints if needed.
    public static void AddExtraQuestPoints(this Player player, float amount)
    {
        var cur = (float)(player.GetProperty(LMFloat.QuestPointsExtra) ?? 0);
        player.SetProperty(LMFloat.QuestPointsExtra, cur + amount);
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
        var baseFactor = 1.0 + qp * PatchClass.Settings.BonusPerQuestPoint / 100.0;
        var chaos = player.GetProperty(LMFloat.ChaosQuestBonusMultiplier);
        if (chaos is double cd && cd > 1.001)
            return baseFactor * cd;
        return baseFactor;
    }

    // Sum of Item XP Boost on equipped items; Empyrean-style (1 + sum) multiplier factor.
    public static double GetEquipmentXpMultiplierFactor(this Player player)
    {
        double sum = 0;
        foreach (var w in player.EquippedObjects.Values)
            sum += w.GetProperty(FakeFloat.ItemXpBoost) ?? 0f;
        return 1.0 + sum;
    }

    // Enlightenment term: either (1 + pooled FakeFloat 11012) or linear (1 + enlightenment × EnlightenmentBonusPercentPer / 100), controlled by Settings.
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

    // Full multiplicative chain: base retention × QP × equipment × augments × enlightenment × challenge mode.
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

    // Returns the quest cooldown reduction fraction (0–1). Effective wait = fullRepeatTime * (1 - reduction).
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
    // Account-wide unique quest count (for milestones)
    // ─────────────────────────────────────────────────────────────────────────

    public static int GetAccountUniqueQuestCount(this Player player)
    {
        var accountId = player.Account?.AccountId;
        if (accountId is null)
            return player.QuestManager?.GetQuests().Count(x => x.HasSolves()) ?? 0;

        return GetAccountUniqueQuestNames(player, accountId.Value).Count;
    }

    private static HashSet<string> GetAccountUniqueQuestNames(Player player, uint accountId)
    {
        var solvedQuestNames = new HashSet<string>(StringComparer.OrdinalIgnoreCase);

        foreach (var onlinePlayer in PlayerManager.GetAllOnline())
        {
            if (onlinePlayer.Account?.AccountId != accountId)
                continue;
            var qm = onlinePlayer.QuestManager;
            if (qm is null)
                continue;
            foreach (var quest in qm.GetQuests().Where(x => x.HasSolves()))
                solvedQuestNames.Add(quest.QuestName);
        }

        var offlineCharacterIds = PlayerManager.GetAllOffline()
            .Where(p => p.Account?.AccountId == accountId)
            .Select(p => p.Guid.Full)
            .ToHashSet();

        if (offlineCharacterIds.Count > 0)
        {
            using var context = new ACE.Database.Models.Shard.ShardDbContext();
            var offlineQuests = context.CharacterPropertiesQuestRegistry
                .Where(q => offlineCharacterIds.Contains(q.CharacterId) && q.NumTimesCompleted > 0)
                .Select(q => q.QuestName)
                .ToList();
            foreach (var questName in offlineQuests)
                solvedQuestNames.Add(questName);
        }

        return solvedQuestNames;
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Per-player notification helpers
    // ─────────────────────────────────────────────────────────────────────────

    // Returns the player's personal preference for a notify flag. If unset: NotifyQuest (QP) defaults true;
    // kill/quest XP and luminance defaults come from Loremaster Settings.json (NotifyKillXpDefault, etc.).
    public static bool Notify(this Player player, FakeBool flag)
    {
        var configured = player.GetProperty(flag);
        if (configured.HasValue)
            return configured.Value;

        if (flag == LMBool.NotifyQuest)
            return true;

        var s = PatchClass.Settings;
        if (s is null)
            return false;

        if (flag == LMBool.NotifyKillXp)
            return s.NotifyKillXpDefault;
        if (flag == LMBool.NotifyQuestXp)
            return s.NotifyQuestXpDefault;
        if (flag == LMBool.NotifyKillLuminance)
            return s.NotifyKillLuminanceDefault;
        if (flag == LMBool.NotifyQuestLuminance)
            return s.NotifyQuestLuminanceDefault;

        return false;
    }

    // Toggles a notify flag and confirms to the player. Returns the new state.
    public static bool ToggleNotify(this Player player, FakeBool flag, string label)
    {
        var next = !player.Notify(flag);
        player.SetProperty(flag, next);
        player.SendMessage($"[Loremaster] {label} notifications {(next ? "enabled" : "disabled")}.");
        return next;
    }

    // Format a QP gain/loss line in the same style as LeyLineLedger bank output (==== header, indented line).
    public static string FormatQpNotification(string line) =>
        $"==== Quest Points ====\n  {line}";

    // ─────────────────────────────────────────────────────────────────────────
    // Completion bonus helpers
    // ─────────────────────────────────────────────────────────────────────────

    // XP needed for the next level (DAT table, then quadratic extrapolation above cap).
    public static long GetXpToNextLevel(this Player player)
    {
        var level = player.Level ?? 1;

        var xpTable = DatManager.PortalDat.XpTable;
        if (xpTable?.CharacterLevelXPList is not null)
        {
            var levelList = xpTable.CharacterLevelXPList;

            // Within the vanilla table: use actual values
            if (level + 1 < levelList.Count)
                return (long)(levelList[level + 1] - levelList[level]);
        }

        // At or above cap (275+): extrapolate with quadratic fit
        // Derived by fitting cost-per-level over levels 200–274 (max error 0.22%)
        return ExtrapolateXpCost(level);
    }

    private static long ExtrapolateXpCost(int level)
    {
        // cost(L) = 1973*L² - 585787*L + 48728021
        const double a =  1973.0;
        const double b = -585787.0;
        const double c =  48728021.0;
        var cost = a * level * level + b * level + c;
        return Math.Max(0, (long)cost);
    }

    public static long GetCompletionBonusXp(string questName, Player player)
    {
        if (PatchClass.Settings is null || !PatchClass.Settings.EnableCompletionBonusXp)
            return 0;

        var xpToNextLevel = player.GetXpToNextLevel();
        if (xpToNextLevel <= 0) return 0;

        var settings = PatchClass.Settings;

        // Per-quest override is an absolute fraction of next-level XP (same as historical DefaultCompletionBonusXpMultiplier).
        if (settings.CompletionBonusXpOverrides.TryGetValue(questName, out var overrideFraction))
        {
            if (overrideFraction <= 0f) return 0;
            return (long)(xpToNextLevel * overrideFraction);
        }

        var qp = player.GetProperty(FakeFloat.QuestBonus) ?? 0;
        var fraction = settings.DefaultCompletionBonusXpMultiplier
            + qp * settings.CompletionBonusPerQuestPoint / 100f;

        if (fraction <= 0f) return 0;

        return (long)(xpToNextLevel * fraction);
    }

    // Grants the completion bonus XP (first or repeat solve when EnableCompletionBonusXp is true).
    public static void GrantCompletionBonuses(this Player player, string questName)
    {
        var bonusXp = GetCompletionBonusXp(questName, player);
        if (bonusXp > 0)
        {
            PatchClass.RunWithoutQuestXpMultiplier(() =>
            {
                player.GrantXP(bonusXp, XpType.Quest, ShareType.None);
            });
            if (player.Notify(LMBool.NotifyQuestXp))
                player.SendMessage($"[Loremaster] Completion bonus for {questName}: {bonusXp:N0} XP!");
        }
    }

    public static void GrantRepeatSolveLoot(this Player player, string questName)
    {
        if (!PatchClass.Settings.EnableRepeatSolveLoot) return;

        var cfg = LootConfigStore.GetLoadedOrDefault();
        var chain = new ActionChain();
        chain.AddAction(player, () =>
        {
            var item = LootRoller.TryCreateRandomItem(cfg);
            if (item is null)
            {
                ModManager.Log($"[Loremaster] Repeat-loot roll produced no item for {player.Name} (quest {questName}).", ModManager.LogLevel.Warn);
                return;
            }

            if (!player.TryAddToInventory(item))
            {
                item.Location = player.Location.InFrontOf(0.5f);
                item.EnterWorld();
                player.SendMessage($"[Loremaster] Your inventory was full — {item.Name} dropped at your feet.");
            }
            else if (player.Notify(LMBool.NotifyQuest))
            {
                player.SendMessage(FormatQpNotification($"Repeat solve of {questName} rewarded: {item.Name}!"));
            }
        });
        chain.EnqueueChain();
    }

    public static bool TryAwardRepeatQuestPoints(this Player player, string questName, float questPointValue)
    {
        if (PatchClass.Settings is null || !PatchClass.Settings.EnableRepeatQuestPoints)
            return false;
        if (questPointValue <= 0)
            return false;

        var now = (long)Time.GetUnixTime();
        var cooldown = PatchClass.Settings.RepeatQuestPointCooldownSeconds;
        if (cooldown <= 0)
            return false;

        var json = player.GetProperty(LMString.RepeatQuestPointTimestamps);
        Dictionary<string, long> map;
        try
        {
            map = string.IsNullOrWhiteSpace(json)
                ? new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase)
                : JsonSerializer.Deserialize<Dictionary<string, long>>(json!) ?? new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase);
        }
        catch
        {
            map = new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase);
        }

        if (map.TryGetValue(questName, out var last) && now - last < cooldown)
            return false;

        map[questName] = now;
        player.SetProperty(LMString.RepeatQuestPointTimestamps, JsonSerializer.Serialize(map));
        player.AddExtraQuestPoints(questPointValue);
        player.UpdateQuestPoints();

        if (player.Notify(LMBool.NotifyQuest))
        {
            player.SendMessage(FormatQpNotification(
                $"+{questPointValue:0.##} QP repeat award for {questName} (once per {cooldown / 3600.0:0.#} h per quest)"));
        }

        return true;
    }

    public static string BuildXpBonusBreakdown(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null)
            return "";

        player.UpdateQuestPoints();
        var qp = player.GetProperty(FakeFloat.QuestBonus) ?? 0;
        var qpF = player.QuestBonus();
        var eqF = player.GetEquipmentXpMultiplierFactor();
        var augF = Math.Max(0.0, s.AugmentXpMultiplier);
        var enF = Math.Max(0.0, player.GetEnlightenmentMultiplierFactor());
        var cmF = Math.Max(0.0, s.ChallengeModeXpMultiplier);
        var totalF = player.GetTotalXpMultiplier();

        var qpDeltaPct = (qpF - 1.0) * 100.0;
        var eqDeltaPct = (eqF - 1.0) * 100.0;
        var augDeltaPct = (augF - 1.0) * 100.0;
        var enDeltaPct = (enF - 1.0) * 100.0;
        var cmDeltaPct = (cmF - 1.0) * 100.0;

        var sb = new StringBuilder();
        sb.AppendLine($"Base XP: {s.StandardBaseXpRetentionPercent:0.##}%");
        sb.AppendLine("===============");
        sb.AppendLine($"Quest Points: +{qpDeltaPct:0.##}% of base XP ({qp:0.##} QP × {s.BonusPerQuestPoint}% per QP)");
        sb.AppendLine($"Equipment: +{eqDeltaPct:0.##}%");
        sb.AppendLine($"Augments: +{augDeltaPct:0.##}%");
        if (s.UseEnlightenmentPoolForXpMultiplier)
        {
            var pool = player.GetProperty(LMFloat.EnlightenmentPoolBonus) ?? 0f;
            sb.AppendLine($"Enlightenment pool: +{enDeltaPct:0.##}% (pool +{pool:0.####} from level/10000 contributions)");
        }
        else
            sb.AppendLine($"Enlightenment: +{enDeltaPct:0.##}% ({player.Enlightenment} × {s.EnlightenmentBonusPercentPer}% per enlightenment)");
        sb.AppendLine($"Challenge Mode Bonuses: +{cmDeltaPct:0.##}%");
        sb.AppendLine("===============");
        sb.AppendLine($"Total XP Multiplier: {totalF * 100.0:0.##}%");
        return sb.ToString();
    }

    // One chat line per SendMessage with System type avoids the client appending ♪ to each newline-split line.
    public static void SendMessageLinesAsSystem(Player player, string text)
    {
        if (string.IsNullOrEmpty(text))
            return;

        foreach (var raw in text.Split(new[] { '\r', '\n' }, StringSplitOptions.RemoveEmptyEntries))
        {
            var line = raw.TrimEnd().Replace("\u266a", "").TrimEnd();
            if (line.Length == 0)
                continue;

            player.SendMessage(line, ChatMessageType.System);
        }
    }

    public static void SendXpBonusBreakdown(Player player)
    {
        SendMessageLinesAsSystem(player, BuildXpBonusBreakdown(player));
    }

    // ─────────────────────────────────────────────────────────────────────────
    // Milestone broadcast helpers
    // ─────────────────────────────────────────────────────────────────────────

    public static void CheckAndBroadcastMilestone(this Player player, int previousCount, int newCount)
    {
        var settings = PatchClass.Settings;
        if (settings is null || !settings.EnableMilestoneBroadcasts)
            return;

        foreach (var threshold in settings.MilestoneThresholds)
        {
            if (previousCount < threshold && newCount >= threshold)
            {
                var bonusQp = settings.MilestoneBonusQPOverrides.TryGetValue(threshold, out var qp)
                    ? qp
                    : (settings.MilestoneBonusQPPercent / 100f) * settings.MilestoneBonusQPBase;
                if (bonusQp > 0)
                {
                    player.AddExtraQuestPoints(bonusQp);
                    player.UpdateQuestPoints();
                }

                var message = string.Format(settings.MilestoneBroadcastFormat,
                    player.Name, Ordinal(threshold), bonusQp);
                foreach (var online in PlayerManager.GetAllOnline())
                    online.SendMessage(message, ChatMessageType.Broadcast);
                ModManager.Log($"[Loremaster] Milestone broadcast: {message}");
            }
        }
    }

    private static string Ordinal(int n)
    {
        var mod100 = n % 100;
        if (mod100 >= 11 && mod100 <= 13) return $"{n}th";
        return (n % 10) switch
        {
            1 => $"{n}st",
            2 => $"{n}nd",
            3 => $"{n}rd",
            _ => $"{n}th"
        };
    }
}

// Single active parchment: template row (1-based) + progress. Cooldown Unix seconds on 12100.
internal static class LMParchmentInt
{
    internal const PropertyInt ActiveTemplate = (PropertyInt)12020;

    internal const PropertyInt Progress = (PropertyInt)12021;

    // Rolled explore destination when ExploreLandblockRawPool is used (0 = use template ExploreLandblockRaw).
    internal const PropertyInt ExploreTargetLandblockRaw = (PropertyInt)12022;

    // Rolled kill target when KillTargetCreatureWcidPool is used and TargetCreatureWcid is 0.
    internal const PropertyInt RuntimeKillTargetWcid = (PropertyInt)12023;

    // 1 when RuntimeKillTargetWcid is a rare pool entry (caps effective KillCount to 1).
    internal const PropertyInt RuntimeKillTargetRare = (PropertyInt)12024;

    // Fetch contract: rolled WCID and stack when FetchItemWeightedPool is used.
    internal const PropertyInt RuntimeFetchItemWcid = (PropertyInt)12025;

    internal const PropertyInt RuntimeFetchItemCount = (PropertyInt)12026;

    internal const PropertyInt64 CooldownUntilUnix = (PropertyInt64)12100;
}

// Per-player notify preference IDs (FakeBool 11000–11004, safe Loremaster range).
// Stored on the character — persist across sessions, toggled via /qb <flag>.
internal static class LMBool
{
    internal const FakeBool ParchmentVendorContract = (FakeBool)11015; // temp listing on bartender vendor

    internal const FakeBool NotifyQuest          = (FakeBool)11000; // QP gains/losses
    internal const FakeBool NotifyKillXp         = (FakeBool)11001; // kill XP boost
    internal const FakeBool NotifyQuestXp        = (FakeBool)11002; // quest XP boost
    internal const FakeBool NotifyKillLuminance  = (FakeBool)11003; // kill luminance boost
    internal const FakeBool NotifyQuestLuminance = (FakeBool)11004; // quest luminance boost
}
