using System.Collections.Concurrent;

namespace AchievementUnlocked;

public static class AchievementManager
{
    static readonly Dictionary<string, Achievement> _achievements = new(StringComparer.OrdinalIgnoreCase);
    static readonly Dictionary<string, int> _indexById = new(StringComparer.OrdinalIgnoreCase);
    static readonly List<Achievement> _ordered = new();
    static readonly ConcurrentDictionary<uint, HashSet<string>> AccountUnlocks = new();
    static readonly ConcurrentDictionary<uint, float> AccountPoolBonus = new();
    static string AccountDataPath = "";
    static string AccountTierProgressPath = "";
    static Settings? _settings;
    static bool _initialized;

    // In-memory cache of account-wide progress (quests + kills) for fast tier evaluation
    static readonly ConcurrentDictionary<uint, int> AccountProgressCache = new();

    static string LegacyAccountDataPath => AchievementUnlockedDataPaths.InLegacyModRoot("AccountAchievements.json");
    static string LegacyAccountPoolBonusPath => AchievementUnlockedDataPaths.InLegacyModRoot("AccountPoolBonus.json");
    static string LegacyAccountMilestoneBonusPath => AchievementUnlockedDataPaths.InLegacyModRoot("AccountMilestoneBonus.json");

    public static event Action<Player, Achievement>? OnAchievementUnlocked;

    public static IReadOnlyList<Achievement> AllAchievements => _ordered;

    public static void Initialize(Settings settings)
    {
        _initialized = false;
        _settings = settings;
        _achievements.Clear();
        _indexById.Clear();
        _ordered.Clear();

        if (settings.Achievements is null)
        {
            _initialized = true;
            AchievementActivityTelemetry.Bind(settings);
            return;
        }

        for (int i = 0; i < settings.Achievements.Count; i++)
        {
            var ach = settings.Achievements[i];
            if (string.IsNullOrWhiteSpace(ach.Id))
            {
                ModManager.Log($"[AchievementUnlocked] Achievement at index {i} has no Id; skipping.", ModManager.LogLevel.Warn);
                continue;
            }

            if (_achievements.ContainsKey(ach.Id))
            {
                ModManager.Log($"[AchievementUnlocked] Duplicate achievement Id '{ach.Id}' at index {i}; skipping.", ModManager.LogLevel.Warn);
                continue;
            }

            if (i >= settings.MaxAchievementCount)
            {
                ModManager.Log($"[AchievementUnlocked] Achievement '{ach.Id}' at index {i} exceeds MaxAchievementCount ({settings.MaxAchievementCount}); skipping.", ModManager.LogLevel.Warn);
                continue;
            }

            _achievements[ach.Id] = ach;
            _indexById[ach.Id] = i;
            _ordered.Add(ach);
        }

        _initialized = true;

        AccountDataPath = AchievementUnlockedDataPaths.InModData("AccountAchievements.json");
        AccountTierProgressPath = AchievementUnlockedDataPaths.InModData("AccountTierProgress.json");
        Directory.CreateDirectory(Path.GetDirectoryName(AccountDataPath)!);
        LoadAccountData();
        LoadAccountPoolBonus();
        LoadAccountMilestoneBonus();
        ModManager.Log($"[AchievementUnlocked] Initialized {_ordered.Count} achievements.", ModManager.LogLevel.Info);
        AchievementActivityTelemetry.Bind(settings);
    }

    // ── Account-Wide Progress Evaluation ──────────────────────────────────

    public static int EvaluateAccountProgressPoints(uint accountId)
    {
        if (_settings is null)
            return 0;

        int totalQuests = 0;
        int totalKills = 0;

        foreach (var online in PlayerManager.GetAllOnline())
        {
            if (online.Account?.AccountId != accountId)
                continue;

            totalQuests += online.GetProperty(AchievementProperties.CachedQuestCount) ?? 0;
            totalKills += online.GetProperty(AchievementProperties.LifetimeKills) ?? 0;
        }

        var killDiv = Math.Max(1, _settings.KillsPerQuestEquivalent);
        return totalQuests + (int)(totalKills / killDiv);
    }

    public static void RefreshAccountProgress(uint accountId)
    {
        var points = EvaluateAccountProgressPoints(accountId);
        AccountProgressCache[accountId] = points;
    }

    public static void EvaluateAccountLoremasterTiers(uint accountId)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        RefreshAccountProgress(accountId);
        var points = AccountProgressCache.GetValueOrDefault(accountId, 0);
        var thresholds = _settings.LoremasterTierThresholds;

        foreach (var player in PlayerManager.GetAllOnline().Where(p => p.Account?.AccountId == accountId))
        {
            for (int tier = 1; tier <= thresholds.Count; tier++)
            {
                if (points >= thresholds[tier - 1])
                {
                    var id = $"LoreTier{tier}";
                    if (_achievements.ContainsKey(id))
                        UnlockAchievement(player, id);
                }
            }
        }
    }

    // ── Account-Wide Achievement Methods ──────────────────────────────────

    public static bool HasAccountAchievement(uint accountId, string id)
    {
        if (!_initialized) return false;
        return AccountUnlocks.TryGetValue(accountId, out var unlocks) && unlocks.Contains(id);
    }

    public static void UnlockAccountAchievement(uint accountId, string id)
    {
        if (!_initialized) return;
        var unlocks = AccountUnlocks.GetOrAdd(accountId, _ => new HashSet<string>());
        lock (unlocks)
        {
            if (unlocks.Add(id))
            {
                SaveAccountData();
                ModManager.Log($"[AchievementUnlocked] Account {accountId} unlocked '{id}' account-wide.", ModManager.LogLevel.Info);
            }
        }
    }

    static void LoadAccountData()
    {
        try
        {
            var path = ResolveLoadPath(AccountDataPath, LegacyAccountDataPath);
            if (path != null && File.Exists(path))
            {
                var json = File.ReadAllText(path);
                var data = JsonSerializer.Deserialize<Dictionary<uint, List<string>>>(json);
                if (data != null)
                {
                    AccountUnlocks.Clear();
                    foreach (var kvp in data)
                        AccountUnlocks[kvp.Key] = new HashSet<string>(kvp.Value);

                    if (path != AccountDataPath)
                    {
                        SaveAccountData();
                        TryDeleteLegacyFile(LegacyAccountDataPath);
                    }
                }
                ModManager.Log($"[AchievementUnlocked] Loaded account data for {AccountUnlocks.Count} accounts.", ModManager.LogLevel.Info);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[AchievementUnlocked] Failed to load account data: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void SaveAccountData()
    {
        try
        {
            Directory.CreateDirectory(Path.GetDirectoryName(AccountDataPath)!);
            var data = new Dictionary<uint, List<string>>();
            foreach (var kvp in AccountUnlocks)
                data[kvp.Key] = new List<string>(kvp.Value);

            var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(AccountDataPath, json);
            TryDeleteLegacyFile(LegacyAccountDataPath);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[AchievementUnlocked] Failed to save account data: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static string AccountPoolBonusPath => AccountDataPath.Replace("AccountAchievements.json", "AccountPoolBonus.json");

    static readonly ConcurrentDictionary<uint, float> AccountMilestoneBonus = new();
    static string AccountMilestoneBonusPath => AccountDataPath.Replace("AccountAchievements.json", "AccountMilestoneBonus.json");

    static void LoadAccountPoolBonus()
    {
        try
        {
            var path = ResolveLoadPath(AccountPoolBonusPath, LegacyAccountPoolBonusPath);
            if (File.Exists(path))
            {
                var json = File.ReadAllText(path);
                var data = JsonSerializer.Deserialize<Dictionary<uint, float>>(json);
                if (data != null)
                {
                    AccountPoolBonus.Clear();
                    foreach (var kvp in data)
                        AccountPoolBonus[kvp.Key] = kvp.Value;

                    if (path != AccountPoolBonusPath)
                    {
                        SaveAccountPoolBonus();
                        TryDeleteLegacyFile(LegacyAccountPoolBonusPath);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[AchievementUnlocked] Failed to load account pool bonus: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void SaveAccountPoolBonus()
    {
        try
        {
            var path = AccountPoolBonusPath;
            Directory.CreateDirectory(Path.GetDirectoryName(path)!);
            var data = new Dictionary<uint, float>();
            foreach (var kvp in AccountPoolBonus)
                data[kvp.Key] = kvp.Value;

            var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(path, json);
            TryDeleteLegacyFile(LegacyAccountPoolBonusPath);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[AchievementUnlocked] Failed to save account pool bonus: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void LoadAccountMilestoneBonus()
    {
        try
        {
            var path = ResolveLoadPath(AccountMilestoneBonusPath, LegacyAccountMilestoneBonusPath);
            if (File.Exists(path))
            {
                var json = File.ReadAllText(path);
                var data = JsonSerializer.Deserialize<Dictionary<uint, float>>(json);
                if (data != null)
                {
                    AccountMilestoneBonus.Clear();
                    foreach (var kvp in data)
                        AccountMilestoneBonus[kvp.Key] = kvp.Value;

                    if (path != AccountMilestoneBonusPath)
                    {
                        SaveAccountMilestoneBonus();
                        TryDeleteLegacyFile(LegacyAccountMilestoneBonusPath);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[AchievementUnlocked] Failed to load account milestone bonus: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void SaveAccountMilestoneBonus()
    {
        try
        {
            var path = AccountMilestoneBonusPath;
            Directory.CreateDirectory(Path.GetDirectoryName(path)!);
            var data = new Dictionary<uint, float>();
            foreach (var kvp in AccountMilestoneBonus)
                data[kvp.Key] = kvp.Value;

            var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(path, json);
            TryDeleteLegacyFile(LegacyAccountMilestoneBonusPath);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[AchievementUnlocked] Failed to save account milestone bonus: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static float GetAccountMilestoneBonus(uint accountId)
    {
        AccountMilestoneBonus.TryGetValue(accountId, out var val);
        return val;
    }

    public static void AddAccountMilestoneBonus(uint accountId, float amount)
    {
        if (amount <= 0) return;
        var newTotal = AccountMilestoneBonus.AddOrUpdate(accountId, amount, (_, old) => old + amount);
        SaveAccountMilestoneBonus();

        var propId = (FakeFloat)11016;
        foreach (var online in PlayerManager.GetAllOnline())
        {
            if (online.Account?.AccountId == accountId)
            {
                var current = (float)(online.GetProperty(propId) ?? 0f);
                if (Math.Abs(current - newTotal) > 0.0001f)
                    online.SetProperty(propId, newTotal);
            }
        }
    }

    static FakeBool UnlockProp(int index) => (FakeBool)(_settings?.BaseFakeBoolId ?? AchievementProperties.BaseFakeBoolId + index);
    static FakeInt ProgressProp(int index) => (FakeInt)(_settings?.BaseFakeIntId ?? AchievementProperties.BaseFakeIntId + index);

    public static bool HasAchievement(Player player, string id)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return false;

        if (!_indexById.TryGetValue(id, out var index))
            return false;

        return player.GetProperty(UnlockProp(index)) == true;
    }

    public static bool HasAllAchievements(Player player, IEnumerable<string> ids)
    {
        foreach (var id in ids)
            if (!HasAchievement(player, id))
                return false;
        return true;
    }

    public static bool HasAnyAchievement(Player player, IEnumerable<string> ids)
    {
        foreach (var id in ids)
            if (HasAchievement(player, id))
                return true;
        return false;
    }

    public static int GetProgress(Player player, string id)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return 0;

        if (!_indexById.TryGetValue(id, out var index))
            return 0;

        return player.GetProperty(ProgressProp(index)) ?? 0;
    }

    public static void SetProgress(Player player, string id, int value)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        if (!_indexById.TryGetValue(id, out var index))
            return;

        var oldVal = player.GetProperty(ProgressProp(index)) ?? 0;
        var clamped = Math.Max(0, value);
        player.SetProperty(ProgressProp(index), clamped);
        AchievementActivityTelemetry.LogExternalProgress(nameof(SetProgress), player, id, oldVal, clamped);
        TryUnlock(player, index);
    }

    public static void IncrementProgress(Player player, string id, int amount = 1)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true || amount <= 0)
            return;

        if (!_indexById.TryGetValue(id, out var index))
            return;

        var current = player.GetProperty(ProgressProp(index)) ?? 0;
        var next = current + amount;
        player.SetProperty(ProgressProp(index), next);
        AchievementActivityTelemetry.LogExternalProgress(nameof(IncrementProgress), player, id, current, next);
        TryUnlock(player, index);
    }

    public static void UnlockAchievement(Player player, string id, bool skipPrerequisites = false)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        if (!_indexById.TryGetValue(id, out var index))
        {
            ModManager.Log($"[AchievementUnlocked] UnlockAchievement failed: '{id}' not found in registry. Check Settings.json for invalid Type values or missing entries.", ModManager.LogLevel.Warn);
            return;
        }

        var ach = _ordered[index];

        if (!skipPrerequisites && !CheckPrerequisites(player, ach))
            return;

        var prop = UnlockProp(index);
        if (player.GetProperty(prop) == true)
            return; // already unlocked

        player.SetProperty(prop, true);
        GrantRewards(player, ach);

        // Default achievement bonus: +0.1% to the shared enlightenment/achievement XP pool (FakeFloat 11012)
        ApplyDefaultAchievementBonus(player);

        if (ach.AccountWide)
        {
            UnlockAccountAchievement(player.Account.AccountId, ach.Id);
            SyncAccountUnlocksToOnlineCharacters(player.Account.AccountId, ach.Id);
        }

        if (_settings.NotifyOnUnlock)
            NotifyUnlock(player, ach);

        if (ach.Id.StartsWith("LoreTier", StringComparison.OrdinalIgnoreCase))
            LogTierProgressionSpeed(player, ach);

        AchievementActivityTelemetry.LogUnlock(player, ach.Id, ach.Name);
        OnAchievementUnlocked?.Invoke(player, ach);
    }

    static void ApplyDefaultAchievementBonus(Player player)
    {
        if (player?.Account is null) return;

        var accountId = player.Account.AccountId;
        var poolId = (FakeFloat)11012;

        // Increment account-wide cumulative pool
        var newTotal = AccountPoolBonus.AddOrUpdate(accountId, 0.001f, (_, old) => old + 0.001f);
        SaveAccountPoolBonus();

        // Apply the account total to this character (ensures alts don't double-count)
        player.SetProperty(poolId, newTotal);

        // Sync to all other online characters on the same account
        foreach (var online in PlayerManager.GetAllOnline())
        {
            if (online.Account?.AccountId == accountId && online.Guid.Full != player.Guid.Full)
            {
                online.SetProperty(poolId, newTotal);
            }
        }
    }

    static readonly ConcurrentDictionary<string, DateTime> TierUnlockLogSentinel = new();

    static void LogTierProgressionSpeed(Player player, Achievement ach)
    {
        // Avoid duplicate logging if multiple characters on the account trigger the same tier
        var sentinelKey = $"{player.Account.AccountId}:{ach.Id}";
        if (!TierUnlockLogSentinel.TryAdd(sentinelKey, DateTime.UtcNow))
            return;

        var points = EvaluateAccountProgressPoints(player.Account.AccountId);
        var level = player.Level ?? 0;
        var creationTimestamp = player.GetProperty(PropertyFloat.CreationTimestamp) ?? 0;
        var ageDays = creationTimestamp > 0
            ? (DateTime.UtcNow - Time.GetDateTimeFromTimestamp((uint)creationTimestamp)).TotalDays
            : 0;

        ModManager.Log(
            $"[AchievementUnlocked] TIER_SPEED account={player.Account.AccountId} tier={ach.Id} points={points} level={level} charAgeDays={ageDays:0.0} player={player.Name}",
            ModManager.LogLevel.Info);
    }

    static void SyncAccountUnlocksToOnlineCharacters(uint accountId, string achievementId)
    {
        if (!_indexById.TryGetValue(achievementId, out var index))
            return;

        var prop = UnlockProp(index);
        foreach (var online in PlayerManager.GetAllOnline())
        {
            if (online.Account?.AccountId == accountId && online.GetProperty(prop) != true)
                online.SetProperty(prop, true);
        }
    }

    public static void SyncAllAccountAchievementsToCharacter(Player player)
    {
        if (!_initialized || player?.Account is null)
            return;

        var accountId = player.Account.AccountId;

        // Sync unlock flags
        if (AccountUnlocks.TryGetValue(accountId, out var unlocks))
        {
            lock (unlocks)
            {
                foreach (var id in unlocks)
                {
                    if (!_indexById.TryGetValue(id, out var index))
                        continue;

                    var prop = UnlockProp(index);
                    if (player.GetProperty(prop) != true)
                        player.SetProperty(prop, true);
                }
            }
        }

        // Sync pool bonus
        if (AccountPoolBonus.TryGetValue(accountId, out var poolTotal))
        {
            var poolId = (FakeFloat)11012;
            var current = (float)(player.GetProperty(poolId) ?? 0f);
            if (Math.Abs(current - poolTotal) > 0.0001f)
                player.SetProperty(poolId, poolTotal);
        }

        // Sync milestone bonus
        if (AccountMilestoneBonus.TryGetValue(accountId, out var milestoneTotal))
        {
            var milestoneId = (FakeFloat)11016;
            var current = (float)(player.GetProperty(milestoneId) ?? 0f);
            if (Math.Abs(current - milestoneTotal) > 0.0001f)
                player.SetProperty(milestoneId, milestoneTotal);
        }
    }

    public static void RevokeAchievement(Player player, string id)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        if (!_indexById.TryGetValue(id, out var index))
            return;

        player.RemoveProperty(UnlockProp(index));
    }

    public static bool CheckPrerequisites(Player player, Achievement ach)
    {
        if (ach.Prerequisites is null || ach.Prerequisites.Count == 0)
            return true;

        foreach (var pre in ach.Prerequisites)
        {
            if (!_indexById.TryGetValue(pre, out var preIndex))
                return false;

            if (player.GetProperty(UnlockProp(preIndex)) != true)
                return false;
        }

        return true;
    }

    public static void TryUnlock(Player player, int index)
    {
        if (index < 0 || index >= _ordered.Count)
            return;

        var ach = _ordered[index];

        if (player.GetProperty(UnlockProp(index)) == true)
            return;

        if (!CheckPrerequisites(player, ach))
            return;

        bool shouldUnlock = ach.Type switch
        {
            AchievementType.KillCreature or AchievementType.KillAny or AchievementType.CompleteQuest
                => (player.GetProperty(ProgressProp(index)) ?? 0) >= ach.RequiredCount,
            AchievementType.ReachLevel => (player.Level ?? 0) >= ach.RequiredValue,
            AchievementType.ReachSkill => false, // evaluated by caller / patch
            AchievementType.ReachSkillSet => false, // evaluated by caller / patch
            AchievementType.ReachAttribute => false, // evaluated by caller / patch
            AchievementType.ReachPropertyInt => false, // evaluated by caller / patch
            AchievementType.ReachPropertyFloat => false, // evaluated by caller / patch
            AchievementType.ReachProgressPoints => EvaluateProgressPoints(player) >= ach.RequiredValue,
            AchievementType.Custom => CheckPrerequisites(player, ach), // unlock when prerequisites are met
            _ => false,
        };

        if (shouldUnlock)
            UnlockAchievement(player, ach.Id);
    }

    public static int EvaluateProgressPoints(Player player)
    {
        if (_settings is null)
            return 0;

        var quests = player.GetProperty(AchievementProperties.CachedQuestCount) ?? 0;
        var kills = player.GetProperty(AchievementProperties.LifetimeKills) ?? 0;
        var killDiv = Math.Max(1, _settings.KillsPerQuestEquivalent);
        return quests + (int)(kills / killDiv);
    }

    public static void EvaluateLoremasterTiers(Player player)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        var points = EvaluateProgressPoints(player);
        var thresholds = _settings.LoremasterTierThresholds;

        for (int tier = 1; tier <= thresholds.Count; tier++)
        {
            if (points >= thresholds[tier - 1])
            {
                var id = $"LoreTier{tier}";
                if (_achievements.ContainsKey(id))
                    UnlockAchievement(player, id);
            }
        }
    }

    static void GrantRewards(Player player, Achievement ach)
    {
        if (ach.Rewards is null)
            return;

        foreach (var reward in ach.Rewards)
        {
            try
            {
                switch (reward.RewardType)
                {
                    case AchievementRewardType.Title:
                        if (Enum.TryParse<CharacterTitle>(reward.Target, out var title))
                            player.AddTitle(title);
                        break;
                    case AchievementRewardType.SkillCredits:
                        player.AddSkillCredits((int)reward.Value);
                        break;
                    case AchievementRewardType.Xp:
                        player.GrantXP((long)reward.Value, XpType.Quest, ShareType.None);
                        break;
                    case AchievementRewardType.Luminance:
                        player.GrantLuminance((long)reward.Value, XpType.Quest, ShareType.None);
                        break;
                    case AchievementRewardType.PropertyInt:
                        if (Enum.TryParse<PropertyInt>(reward.Target, out var propInt))
                            player.UpdateProperty(player, propInt, (int)reward.Value, true);
                        break;
                    case AchievementRewardType.PropertyFloat:
                        if (Enum.TryParse<PropertyFloat>(reward.Target, out var propFloat))
                            player.UpdateProperty(player, propFloat, (double)reward.Value, true);
                        break;
                    case AchievementRewardType.PropertyBool:
                        if (Enum.TryParse<PropertyBool>(reward.Target, out var propBool))
                            player.UpdateProperty(player, propBool, reward.Value != 0, true);
                        break;
                    case AchievementRewardType.Item:
                        if (uint.TryParse(reward.Target, out var wcid))
                        {
                            var item = WorldObjectFactory.CreateNewWorldObject(wcid);
                            if (item is not null)
                            {
                                if (item.MaxStackSize > 1 && reward.Value > 1)
                                {
                                    var desiredStack = (int)Math.Min(reward.Value, item.MaxStackSize.Value);
                                    item.SetStackSize(desiredStack);
                                }
                                player.TryCreateInInventoryWithNetworking(item);
                            }
                        }
                        break;
                    case AchievementRewardType.Command:
                        if (!string.IsNullOrWhiteSpace(reward.Target))
                        {
                            var cmd = reward.Target.TrimStart('/');
                            var handler = CommandManager.GetCommands()
                                .FirstOrDefault(h => h.Attribute?.Command.Equals(cmd, StringComparison.OrdinalIgnoreCase) == true);
                            if (handler?.Handler is Delegate del && player.Session is not null)
                            {
                                try { del.DynamicInvoke(player.Session, Array.Empty<string>()); }
                                catch (Exception ex)
                                {
                                    ModManager.Log($"[AchievementUnlocked] Command reward '/{cmd}' failed: {ex.Message}", ModManager.LogLevel.Warn);
                                }
                            }
                            else
                            {
                                ModManager.Log($"[AchievementUnlocked] Command reward '/{cmd}' not found.", ModManager.LogLevel.Warn);
                            }
                        }
                        break;
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[AchievementUnlocked] Reward grant failed for '{ach.Id}': {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    static readonly Dictionary<string, string> ClassFlavorMessages = new(StringComparer.OrdinalIgnoreCase)
    {
        ["ClassDruid"] = "has heard the whispers of the Old Growth. The wilds have found a new voice.",
        ["ClassElementalist"] = "has touched the Primal forces. Fire, frost, and storm now answer their call.",
        ["ClassNecromancer"] = "has walked through the veil. The grave yields its secrets to those who command with mastery.",
        ["ClassEnchanter"] = "has learned the hidden threads that bind beast and will. The weave bends to their hand.",
        ["ClassArtificer"] = "has awakened the latent song in every object. Even the smallest spark knows their name.",
        ["ClassRogue"] = "moves unseen through shadow and steel. The Crimson Covenant welcomes another blade.",
        ["ClassBerserker"] = "has abandoned restraint for raw fury. The battlefield trembles at their approach.",
        ["ClassCrusader"] = "has taken up the sacred burden. Faith, steel, and shield now walk as one.",
        ["ClassWindwalker"] = "has become one with the storm. Their blade carries the wind, and the wind carries death.",
        ["ClassBattlemage"] = "has shattered the wall between steel and spell. In their hands, both become one art.",
        ["ClassDeathKnight"] = "has bent the void to their will. Life flees before them, and death follows in their shadow."
    };

    static void NotifyUnlock(Player player, Achievement ach)
    {
        var prefix = _settings?.NotificationPrefix ?? "[AchievementUnlocked]";

        // Use flavorful messages for class achievements
        if (ach.Category.Equals("Classes", StringComparison.OrdinalIgnoreCase) && ClassFlavorMessages.TryGetValue(ach.Id, out var flavor))
        {
            player.SendMessage($"{prefix} You unlocked '{ach.Name}' -- {ach.Description}", ChatMessageType.Magic);

            if (_settings?.BroadcastOnUnlock == true)
            {
                var broadcast = $"{player.Name} {flavor}";
                PlayerManager.BroadcastToAll(new GameMessageSystemChat(broadcast, ChatMessageType.Magic));
            }
        }
        else
        {
            var msg = string.IsNullOrWhiteSpace(prefix) ? $"You unlocked '{ach.Name}' — {ach.Description}" : $"{prefix} You unlocked '{ach.Name}' — {ach.Description}";
            player.SendMessage(msg, ChatMessageType.Magic);

            if (_settings?.BroadcastOnUnlock == true)
            {
                var broadcast = $"{player.Name} unlocked the achievement '{ach.Name}'!";
                PlayerManager.BroadcastToAll(new GameMessageSystemChat(broadcast, ChatMessageType.Magic));
            }
        }
    }

    static string? ResolveLoadPath(string currentPath, string legacyPath)
    {
        if (File.Exists(currentPath))
            return currentPath;

        if (File.Exists(legacyPath))
            return legacyPath;

        return null;
    }

    static void TryDeleteLegacyFile(string path)
    {
        if (!File.Exists(path))
            return;

        try
        {
            File.Delete(path);
        }
        catch
        {
        }
    }

    // Internal hooks called by PatchClass

    internal static void OnCreatureKilled(Player player, Creature creature)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        for (int i = 0; i < _ordered.Count; i++)
        {
            var ach = _ordered[i];
            if (ach.Type != AchievementType.KillCreature && ach.Type != AchievementType.KillAny)
                continue;

            if (player.GetProperty(UnlockProp(i)) == true)
                continue;

            if (ach.Type == AchievementType.KillCreature)
            {
                if (!uint.TryParse(ach.Target, out var targetWcid) || creature.WeenieClassId != targetWcid)
                    continue;
            }

            if (!CheckPrerequisites(player, ach))
                continue;

            var current = player.GetProperty(ProgressProp(i)) ?? 0;
            var next = current + 1;
            player.SetProperty(ProgressProp(i), next);
            AchievementActivityTelemetry.LogKillAchievementProgress(player, ach.Id, next, ach.RequiredCount, creature.WeenieClassId);
            TryUnlock(player, i);
        }
    }

    internal static void OnQuestCompleted(Player player, string questName)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        for (int i = 0; i < _ordered.Count; i++)
        {
            var ach = _ordered[i];
            if (ach.Type != AchievementType.CompleteQuest)
                continue;

            if (player.GetProperty(UnlockProp(i)) == true)
                continue;

            if (!string.IsNullOrWhiteSpace(ach.Target))
            {
                var target = QuestManager.GetQuestName(ach.Target);
                var actual = QuestManager.GetQuestName(questName);
                if (!string.Equals(target, actual, StringComparison.OrdinalIgnoreCase))
                    continue;
            }

            if (!CheckPrerequisites(player, ach))
                continue;

            var current = player.GetProperty(ProgressProp(i)) ?? 0;
            var next = current + 1;
            player.SetProperty(ProgressProp(i), next);
            AchievementActivityTelemetry.LogQuestAchievementProgress(player, ach.Id, next, ach.RequiredCount, questName);
            TryUnlock(player, i);
        }
    }

    internal static void OnLevelChanged(Player player)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        for (int i = 0; i < _ordered.Count; i++)
        {
            var ach = _ordered[i];
            if (ach.Type != AchievementType.ReachLevel)
                continue;

            TryUnlock(player, i);
        }
    }

    internal static void OnSkillChanged(Player player, Skill skill, int newLevel)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        // Handle ReachSkill (single skill)
        for (int i = 0; i < _ordered.Count; i++)
        {
            var ach = _ordered[i];
            if (ach.Type != AchievementType.ReachSkill)
                continue;

            if (player.GetProperty(UnlockProp(i)) == true)
                continue;

            if (!string.IsNullOrWhiteSpace(ach.Target))
            {
                if (!Enum.TryParse<Skill>(ach.Target, out var targetSkill) || targetSkill != skill)
                    continue;
            }

            if (!CheckPrerequisites(player, ach))
                continue;

            var current = player.GetProperty(ProgressProp(i)) ?? 0;
            var best = Math.Max(current, newLevel);
            player.SetProperty(ProgressProp(i), best);
            if (best >= ach.RequiredValue)
                TryUnlock(player, i);
        }

        // Handle ReachSkillSet (multiple skills)
        for (int i = 0; i < _ordered.Count; i++)
        {
            var ach = _ordered[i];
            if (ach.Type != AchievementType.ReachSkillSet)
                continue;

            if (player.GetProperty(UnlockProp(i)) == true)
                continue;

            if (!CheckPrerequisites(player, ach))
                continue;

            var targetSkills = ach.Target.Split(',').Select(s => s.Trim()).ToList();
            int passCount = 0;

            foreach (var skillName in targetSkills)
            {
                if (!Enum.TryParse<Skill>(skillName, out var targetSkill))
                    continue;

                var cs = player.GetCreatureSkill(targetSkill);
                if (cs?.AdvancementClass != SkillAdvancementClass.Specialized)
                    continue;

                int baseSkill = (int)(cs.Ranks + cs.InitLevel);
                if (baseSkill >= ach.RequiredValue)
                    passCount++;
            }

            int required = ach.RequiredCount > 0 ? ach.RequiredCount : targetSkills.Count;
            var current = player.GetProperty(ProgressProp(i)) ?? 0;
            var best = Math.Max(current, passCount);
            player.SetProperty(ProgressProp(i), best);

            if (best >= required)
                TryUnlock(player, i);
        }
    }

    internal static void OnAttributeChanged(Player player, PropertyAttribute attribute, int newBase)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        for (int i = 0; i < _ordered.Count; i++)
        {
            var ach = _ordered[i];
            if (ach.Type != AchievementType.ReachAttribute)
                continue;

            if (player.GetProperty(UnlockProp(i)) == true)
                continue;

            if (!string.IsNullOrWhiteSpace(ach.Target))
            {
                if (!Enum.TryParse<PropertyAttribute>(ach.Target, out var targetAttr) || targetAttr != attribute)
                    continue;
            }

            if (!CheckPrerequisites(player, ach))
                continue;

            var current = player.GetProperty(ProgressProp(i)) ?? 0;
            var best = Math.Max(current, newBase);
            player.SetProperty(ProgressProp(i), best);
            if (best >= ach.RequiredValue)
                TryUnlock(player, i);
        }
    }

    internal static void OnPropertyIntChanged(Player player, PropertyInt property, int newValue)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        for (int i = 0; i < _ordered.Count; i++)
        {
            var ach = _ordered[i];
            if (ach.Type != AchievementType.ReachPropertyInt)
                continue;

            if (player.GetProperty(UnlockProp(i)) == true)
                continue;

            if (!string.IsNullOrWhiteSpace(ach.Target))
            {
                if (!Enum.TryParse<PropertyInt>(ach.Target, out var targetProp) || targetProp != property)
                    continue;
            }

            if (!CheckPrerequisites(player, ach))
                continue;

            var current = player.GetProperty(ProgressProp(i)) ?? 0;
            var best = Math.Max(current, newValue);
            player.SetProperty(ProgressProp(i), best);
            if (best >= ach.RequiredValue)
                TryUnlock(player, i);
        }
    }

    internal static void OnPropertyFloatChanged(Player player, PropertyFloat property, double newValue)
    {
        if (!_initialized || _settings?.EnableAchievementFramework != true)
            return;

        for (int i = 0; i < _ordered.Count; i++)
        {
            var ach = _ordered[i];
            if (ach.Type != AchievementType.ReachPropertyFloat)
                continue;

            if (player.GetProperty(UnlockProp(i)) == true)
                continue;

            if (!string.IsNullOrWhiteSpace(ach.Target))
            {
                if (!Enum.TryParse<PropertyFloat>(ach.Target, out var targetProp) || targetProp != property)
                    continue;
            }

            if (!CheckPrerequisites(player, ach))
                continue;

            var current = player.GetProperty(ProgressProp(i)) ?? 0;
            var best = Math.Max(current, (int)newValue);
            player.SetProperty(ProgressProp(i), best);
            if (best >= ach.RequiredValue)
                TryUnlock(player, i);
        }
    }
}
