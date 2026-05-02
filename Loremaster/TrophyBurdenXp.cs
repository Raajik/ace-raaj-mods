using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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

    [ThreadStatic]
    private static TrophyGiveSnapshot? _pendingGive;

    private sealed class TrophyGiveSnapshot
    {
        public long CoinBefore;
        public int StackBefore;
        public int PlannedUnits;
        public uint ItemWcid;
        public string ItemName = "";
        public int ItemValueSnapshot;
        public bool IsAttuned;
        public double PercentOfLevel;
        public string BurdenNote = "";
    }

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

    // Runs before RemoveItemForGive / emotes; records coin and item stats so postfix can award XP and include pyreal delta after NPC emotes.
    public static void OnGiveObjectToNpcPrefix(Player player, WorldObject target, WorldObject item, int amount)
    {
        _pendingGive = null;

        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyBurdenXp != true)
            return;

        if (player == null || target == null || item == null)
            return;

        if (amount <= 0)
            return;

        if (!TrophyCollectors.ContainsKey(target.WeenieClassId))
            return;

        if (item.Name == "IOU" && item.WeenieType == WeenieType.Book && target.Name == "Town Crier")
            return;

        if (item is PetDevice petDevice && petDevice.Pet is not null)
            return;

        if (player.IsOlthoiPlayer && target.CreatureType != CreatureType.Olthoi)
            return;

        if (target.EmoteManager.IsBusy)
            return;

        if (player.IsTrading && item.IsBeingTradedOrContainsItemBeingTraded(player.ItemsInTradeWindow))
            return;

        if (_blacklist.ContainsKey(item.WeenieClassId))
        {
            DebugLog($"Item {item.Name} (WCID {item.WeenieClassId}) is blacklisted, skipping");
            return;
        }

        var minValue = settings.TrophyMinBuyValue;
        if (minValue > 0)
        {
            var stackSize = Math.Max(1, item.StackSize ?? 1);
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

        var acceptAll = target.AiAcceptEverything && !item.IsStickyAttunedOrContainsStickyAttuned;
        if (!(target.HasGiveOrRefuseEmoteForItem(item, out var emoteResult) || acceptAll))
            return;

        if (!acceptAll && !(emoteResult.Category == EmoteCategory.Give && target.AllowGive))
            return;

        var stackBefore = Math.Max(1, item.StackSize ?? 1);
        var plannedUnits = acceptAll ? Math.Min(amount, stackBefore) : 1;

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
            var unitRaw = unitEncFromProp ?? (stackBefore > 1 && totalEnc > 0 ? totalEnc / stackBefore : totalEnc);
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

        _pendingGive = new TrophyGiveSnapshot
        {
            CoinBefore = player.CoinValue ?? 0,
            StackBefore = stackBefore,
            PlannedUnits = plannedUnits,
            ItemWcid = item.WeenieClassId,
            ItemName = string.IsNullOrWhiteSpace(item.Name) ? "Trophy" : item.Name.Trim(),
            ItemValueSnapshot = item.Value ?? 0,
            IsAttuned = isAttuned,
            PercentOfLevel = percentOfLevel,
            BurdenNote = burdenNote,
        };
    }

    public static void OnGiveObjectToNpcPostfix(Player player, WorldObject target, WorldObject item, int amount)
    {
        var snap = _pendingGive;
        _pendingGive = null;

        if (snap == null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyBurdenXp != true)
            return;

        if (player == null || target == null)
            return;

        if (!TrophyCollectors.ContainsKey(target.WeenieClassId))
            return;

        int stackAfter;
        if (item == null || item.IsDestroyed)
            stackAfter = 0;
        else
            stackAfter = item.StackSize ?? 0;

        var removed = snap.StackBefore - stackAfter;
        if (removed <= 0)
        {
            DebugLog($"{player.Name} trophy give postfix: no stack change (removed={removed}), skip XP");
            return;
        }

        var actualUnits = Math.Min(snap.PlannedUnits, removed);
        if (actualUnits <= 0)
            return;

        var xpToNext = player.GetXpToNextLevel();
        if (xpToNext <= 0)
            return;

        var perUnitBaseXp = xpToNext * snap.PercentOfLevel;

        var qc = Math.Clamp(settings.TrophyQualityBonusChance, 0.0, 1.0);
        var pc = Math.Clamp(settings.TrophyPristineBonusChance, 0.0, 1.0);

        long bonusXp = 0;
        var multSum = 0;
        var plain = 0;
        var qOnly = 0;
        var pOnly = 0;
        var perfect = 0;

        for (var u = 0; u < actualUnits; u++)
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

        var coinAfter = player.CoinValue ?? 0;
        var pyrealDelta = coinAfter - snap.CoinBefore;

        DebugLog(
            $"{player.Name} turned in {actualUnits}x {snap.ItemName} (attuned={snap.IsAttuned}, per-unit base%={snap.PercentOfLevel:P2}), multSum={multSum}, awarding {bonusXp}, pyrealDelta={pyrealDelta}");

        if (bonusXp <= 0)
            return;

        ExternalXpGrants.GrantQuestXpWithoutMultiplier(player, bonusXp);
        AppendLog(settings, player, snap.ItemWcid, snap.ItemName, snap.ItemValueSnapshot, bonusXp, snap.IsAttuned, actualUnits, multSum, plain, qOnly, pOnly, perfect, pyrealDelta);

        var show = QuestXpAwardDisplay.EstimateCharacterXpAfterAchievementChain(player, bonusXp);
        var pctOfLevelTotal = xpToNext > 0 ? bonusXp / (double)xpToNext * 100.0 : 0.0;

        var pyrealClause = pyrealDelta != 0
            ? $" and {pyrealDelta:N0} pyreals"
            : "";

        var list = BuildTurnInList(snap.ItemName, plain, qOnly, pOnly, perfect);
        var msg = new StringBuilder();
        msg.Append($"You receive {show:N0} XP{pyrealClause} from turning in {list}.");
        msg.Append($" (~{pctOfLevelTotal:F2}% of level to next");
        var rollParts = BuildRollSummaryParts(perfect, pOnly, qOnly).ToList();
        if (rollParts.Count > 0)
        {
            msg.Append(" — ");
            msg.Append(string.Join(", ", rollParts));
        }
        msg.Append(')');
        msg.Append(snap.BurdenNote);
        msg.Append('.');

        player.SendMessage(msg.ToString());
    }

    static string BuildTurnInList(string itemName, int plain, int qOnly, int pOnly, int perfect)
    {
        var parts = new List<string>();
        if (plain > 0)
            parts.Add($"{itemName} (x{plain:N0})");
        if (qOnly > 0)
            parts.Add($"Quality {itemName} (x{qOnly:N0})");
        if (pOnly > 0)
            parts.Add($"Pristine {itemName} (x{pOnly:N0})");
        if (perfect > 0)
            parts.Add($"Perfect {itemName} (x{perfect:N0})");

        if (parts.Count == 0)
            return itemName;

        if (parts.Count == 1)
            return parts[0];

        if (parts.Count == 2)
            return $"{parts[0]} and {parts[1]}";

        return string.Join(", ", parts.GetRange(0, parts.Count - 1)) + ", and " + parts[^1];
    }

    static IEnumerable<string> BuildRollSummaryParts(int perfect, int pOnly, int qOnly)
    {
        if (perfect > 0)
            yield return $"{perfect:N0} Perfect (×6)";
        if (pOnly > 0)
            yield return $"{pOnly:N0} Pristine (×3)";
        if (qOnly > 0)
            yield return $"{qOnly:N0} Quality (×2)";
    }

    private static void AppendLog(
        Settings settings,
        Player player,
        uint itemWcid,
        string itemName,
        int itemValueSnapshot,
        long xpAwarded,
        bool isAttuned,
        int units,
        int multSum,
        int plain,
        int qOnly,
        int pOnly,
        int perfect,
        long pyrealDelta)
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
                item = itemName,
                wcid = itemWcid,
                value = itemValueSnapshot,
                units,
                multSum,
                plain,
                qOnly,
                pOnly,
                perfect,
                attuned = isAttuned,
                xp = xpAwarded,
                pyrealDelta,
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
