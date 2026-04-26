using System.Collections.Concurrent;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.Network;
using ACE.Server.WorldObjects;

namespace Loremaster;

internal static class TrophyBurdenXp
{
    private static readonly ConcurrentDictionary<uint, bool> TrophyCollectors = new();
    private static readonly ConcurrentDictionary<uint, bool> _blacklist = new();
    private static string? _logPath;
    private static readonly object _logLock = new();

    private static void DebugLog(string msg)
    {
#if LM_TROPHY_BURDEN_XP_DEBUG
        ModManager.Log($"[LM TrophyXp] {msg}", ModManager.LogLevel.Info);
#endif
    }

    public static void Initialize()
    {
        var settings = PatchClass.Settings;
        TrophyCollectors.Clear();
        _blacklist.Clear();

        if (settings?.EnableTrophyBurdenXp != true)
            return;

        if (settings.TrophyCollectorWcids != null)
            foreach (var wcid in settings.TrophyCollectorWcids)
                TrophyCollectors[wcid] = true;

        if (settings.TrophyBlacklistWcids != null)
            foreach (var wcid in settings.TrophyBlacklistWcids)
                _blacklist[wcid] = true;

        TryMergeQolCollectors();

        if (settings.TrophyLogEnabled)
        {
            var modDir = PatchClass.GetModDirectory();
            if (!string.IsNullOrEmpty(modDir))
            {
                var dataDir = Path.Combine(modDir, "Data");
                Directory.CreateDirectory(dataDir);
                _logPath = Path.Combine(dataDir, "TrophyLog.jsonl");
            }
        }
        else
        {
            _logPath = null;
        }

        ModManager.Log($"[LM] TrophyBurdenXp initialized with {TrophyCollectors.Count} collectors, {_blacklist.Count} blacklisted WCIDs", ModManager.LogLevel.Info);
    }

    static void TryMergeQolCollectors()
    {
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, "QOL", StringComparison.Ordinal))
                    continue;

                var patchClassType = asm.GetType("QOL.PatchClass");
                var settingsProp = patchClassType?.GetProperty("Settings", System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static);
                var settingsInstance = settingsProp?.GetValue(null);
                if (settingsInstance == null) continue;

                var settingsType = settingsInstance.GetType();
                var enabledProp = settingsType.GetProperty("EnableCollectorsAcceptAll");
                var enabled = enabledProp?.GetValue(settingsInstance) as bool? ?? false;
                if (!enabled) continue;

                var wcidProp = settingsType.GetProperty("CollectorWcids");
                var wcids = wcidProp?.GetValue(settingsInstance) as System.Collections.Generic.List<uint>;
                if (wcids == null) continue;

                foreach (var wcid in wcids)
                    TrophyCollectors[wcid] = true;

                ModManager.Log($"[LM] TrophyBurdenXp merged {wcids.Count} collectors from QOL.CollectorsAcceptAll", ModManager.LogLevel.Info);
                break;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LM] TrophyBurdenXp QOL collector merge failed: {ex.Message}", ModManager.LogLevel.Debug);
        }
    }

    public static void HandleGiveRequest(Player player, WorldObject? target, WorldObject? item)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyBurdenXp != true)
            return;

        if (target == null || item == null || player == null)
            return;

        var targetWcid = target.WeenieClassId;
        if (!TrophyCollectors.ContainsKey(targetWcid))
            return;

        // Blacklisted WCIDs are silently rejected
        if (_blacklist.ContainsKey(item.WeenieClassId))
        {
            DebugLog($"Item {item.Name} (WCID {item.WeenieClassId}) is blacklisted, skipping");
            return;
        }

        // Minimum value threshold — blocks cheap vendor items
        var minValue = settings.TrophyMinBuyValue;
        if (minValue > 0 && (item.Value ?? 0) < minValue)
        {
            DebugLog($"Item {item.Name} value {item.Value ?? 0} < minimum {minValue}, skipping");
            return;
        }

        var xpToNext = player.GetXpToNextLevel();
        if (xpToNext <= 0)
        {
            DebugLog($"{player.Name} is at max level, no XP to award");
            return;
        }

        var isAttuned = (item.GetProperty(PropertyInt.Attuned) ?? 0) > 0;

        double percentOfLevel;
        string burdenNote;

        if (isAttuned)
        {
            percentOfLevel = Math.Clamp(settings.TrophyAttunedXpFraction, 0f, 1f);
            if (percentOfLevel <= 0)
            {
                DebugLog($"Item {item.Name} is attuned and TrophyAttunedXpFraction is 0, skipping");
                return;
            }
            burdenNote = " (attuned item — flat rate)";
        }
        else
        {
            var rawBurden = item.EncumbranceVal ?? 0;
            var minWhenZero = Math.Max(0, settings.TrophyEncumbranceWhenZero);
            var burden = rawBurden > 0 ? rawBurden : minWhenZero;
            if (burden <= 0)
            {
                DebugLog($"Item {item.Name} has no burden and TrophyEncumbranceWhenZero is 0, skipping");
                return;
            }
            percentOfLevel = (burden / 100.0) * 0.15;
            burdenNote = rawBurden <= 0 && minWhenZero > 0
                ? $" (treat as {minWhenZero} burden; item has no listed encumbrance)"
                : "";
        }

        var baseBonusXp = (long)(xpToNext * percentOfLevel);

        var qc = Math.Clamp(settings.TrophyQualityBonusChance, 0.0, 1.0);
        var pc = Math.Clamp(settings.TrophyPristineBonusChance, 0.0, 1.0);
        var rolledQuality = qc > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < (float)qc;
        var rolledPristine = pc > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < (float)pc;

        var mult = 1;
        if (rolledQuality) mult *= 2;
        if (rolledPristine) mult *= 3;

        var bonusXp = (long)Math.Min((double)baseBonusXp * mult, long.MaxValue);

        DebugLog(
            $"{player.Name} turned in {item.Name} (attuned={isAttuned}, burden-base={percentOfLevel:P2}), base={baseBonusXp}, mult={mult}, awarding {bonusXp}");

        if (bonusXp > 0)
        {
            ExternalXpGrants.GrantQuestXpWithoutMultiplier(player, bonusXp);
            AppendLog(settings, player, item, bonusXp, isAttuned, mult);

            var itemName = string.IsNullOrWhiteSpace(item.Name) ? "Trophy" : item.Name.Trim();
            var prefix = "";
            if (rolledQuality && rolledPristine)
                prefix = "Exceptional pristine ";
            else if (rolledPristine)
                prefix = "Pristine ";
            else if (rolledQuality)
                prefix = "Quality ";

            var pctDisplay = percentOfLevel * mult * 100.0;
            var yieldNote = mult switch
            {
                2 => " — double yield",
                3 => " — triple yield",
                6 => " — exceptional specimen (×6)",
                _ => "",
            };

            var show = QuestXpAwardDisplay.EstimateCharacterXpAfterAchievementChain(player, bonusXp);
            player.SendMessage(
                $"[Loremaster] {prefix}{itemName} turned in for +{show:N0} XP (~{pctDisplay:F2}% of level{yieldNote}){burdenNote}.");
        }
    }

    private static void AppendLog(Settings settings, Player player, WorldObject item, long xpAwarded, bool isAttuned, int mult)
    {
        if (!settings.TrophyLogEnabled || _logPath == null)
            return;

        try
        {
            var entry = new
            {
                t = DateTimeOffset.UtcNow.ToUnixTimeSeconds(),
                player = player.Name ?? "",
                guid = player.Guid.Full,
                item = item.Name ?? "",
                wcid = item.WeenieClassId,
                value = item.Value ?? 0,
                attuned = isAttuned,
                mult,
                xp = xpAwarded,
            };
            var line = System.Text.Json.JsonSerializer.Serialize(entry);
            lock (_logLock)
                File.AppendAllText(_logPath, line + "\n");
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LM] TrophyLog write failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }
}
