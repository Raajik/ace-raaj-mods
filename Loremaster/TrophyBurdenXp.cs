using System.Collections.Concurrent;
using System.Collections.Generic;
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

    public static void HandleGiveRequest(Player player, WorldObject? target, WorldObject? item, int giveAmount)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyBurdenXp != true)
            return;

        if (target == null || item == null || player == null)
            return;

        if (giveAmount <= 0)
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

        var stackSize = Math.Max(1, item.StackSize ?? 1);
        // ACE validates giveAmount <= stackSize before transfer; clamp defensively.
        var units = Math.Min(giveAmount, stackSize);

        // Minimum value threshold per unit — blocks cheap vendor items (stack Value is total in ACE)
        var minValue = settings.TrophyMinBuyValue;
        if (minValue > 0)
        {
            int unitVal = item.StackUnitValue ?? 0;
            if (unitVal <= 0)
                unitVal = stackSize > 1 ? (item.Value ?? 0) / stackSize : (item.Value ?? 0);
            if (unitVal < minValue)
            {
                DebugLog($"Item {item.Name} unit value {unitVal} < minimum {minValue}, skipping");
                return;
            }
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
            var totalEnc = item.EncumbranceVal ?? 0;
            var unitEncFromProp = item.StackUnitEncumbrance;
            var unitRaw = unitEncFromProp ?? (stackSize > 1 && totalEnc > 0 ? totalEnc / stackSize : totalEnc);
            var minWhenZero = Math.Max(0, settings.TrophyEncumbranceWhenZero);
            var burden = unitRaw > 0 ? unitRaw : minWhenZero;
            if (burden <= 0)
            {
                DebugLog($"Item {item.Name} has no burden and TrophyEncumbranceWhenZero is 0, skipping");
                return;
            }
            percentOfLevel = (burden / 100.0) * 0.15;
            burdenNote = unitRaw <= 0 && minWhenZero > 0
                ? $" (treat as {minWhenZero} burden per item; stack has no unit encumbrance)"
                : "";
        }

        var perUnitBaseXp = xpToNext * percentOfLevel;

        var qc = Math.Clamp(settings.TrophyQualityBonusChance, 0.0, 1.0);
        var pc = Math.Clamp(settings.TrophyPristineBonusChance, 0.0, 1.0);

        long bonusXp = 0;
        var multSum = 0;
        var plain = 0;
        var qOnly = 0;
        var pOnly = 0;
        var perfect = 0;

        for (var u = 0; u < units; u++)
        {
            var rolledQuality = qc > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < (float)qc;
            var rolledPristine = pc > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < (float)pc;
            var mult = 1;
            if (rolledQuality)
                mult *= 2;
            if (rolledPristine)
                mult *= 3;
            multSum += mult;
            if (rolledQuality && rolledPristine)
                perfect++;
            else if (rolledPristine)
                pOnly++;
            else if (rolledQuality)
                qOnly++;
            else
                plain++;

            var chunk = (long)Math.Min(perUnitBaseXp * mult, long.MaxValue);
            bonusXp = (long)Math.Min((double)bonusXp + chunk, long.MaxValue);
        }

        DebugLog(
            $"{player.Name} turned in {units}x {item.Name} (attuned={isAttuned}, per-unit base%={percentOfLevel:P2}), multSum={multSum}, awarding {bonusXp}");

        if (bonusXp > 0)
        {
            ExternalXpGrants.GrantQuestXpWithoutMultiplier(player, bonusXp);
            AppendLog(settings, player, item, bonusXp, isAttuned, units, multSum, plain, qOnly, pOnly, perfect);

            var itemName = string.IsNullOrWhiteSpace(item.Name) ? "Trophy" : item.Name.Trim();
            string lead;
            if (units == 1)
            {
                if (perfect == 1)
                    lead = "Perfect " + itemName;
                else if (pOnly == 1)
                    lead = "Pristine " + itemName;
                else if (qOnly == 1)
                    lead = "Quality " + itemName;
                else
                    lead = itemName;
            }
            else
            {
                lead = $"{units:N0}× {itemName}";
            }

            var pctOfLevelTotal = xpToNext > 0 ? bonusXp / (double)xpToNext * 100.0 : 0.0;
            var rollBits = new List<string>();
            if (perfect > 0)
                rollBits.Add($"{perfect} perfect (×6)");
            if (pOnly > 0)
                rollBits.Add($"{pOnly} pristine (×3)");
            if (qOnly > 0)
                rollBits.Add($"{qOnly} quality (×2)");
            var rollNote = rollBits.Count > 0 ? " — " + string.Join(", ", rollBits) : "";

            var show = QuestXpAwardDisplay.EstimateCharacterXpAfterAchievementChain(player, bonusXp);
            player.SendMessage(
                $"[Loremaster] {lead} turned in for +{show:N0} XP (~{pctOfLevelTotal:F2}% of level to next{rollNote}){burdenNote}.");
        }
    }

    private static void AppendLog(
        Settings settings,
        Player player,
        WorldObject item,
        long xpAwarded,
        bool isAttuned,
        int units,
        int multSum,
        int plain,
        int qOnly,
        int pOnly,
        int perfect)
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
                units,
                multSum,
                plain,
                qOnly,
                pOnly,
                perfect,
                attuned = isAttuned,
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
