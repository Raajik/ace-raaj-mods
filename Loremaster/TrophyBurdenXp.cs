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

    private static void DebugLog(string msg)
    {
#if LM_TROPHY_BURDEN_XP_DEBUG
        ModManager.Log($"[LM TrophyXp] {msg}", ModManager.LogLevel.Info);
#endif
    }

    public static void Initialize()
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyBurdenXp != true)
            return;

        if (settings.TrophyCollectorWcids != null)
        {
            foreach (var wcid in settings.TrophyCollectorWcids)
            {
                TrophyCollectors[wcid] = true;
            }
        }

        ModManager.Log($"[LM] TrophyBurdenXp initialized with {TrophyCollectors.Count} collectors", ModManager.LogLevel.Info);
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

        // Many trophy/collectible weenies have EncumbranceVal 0; without a floor the formula yields no bonus.
        var rawBurden = item.EncumbranceVal ?? 0;
        var minWhenZero = Math.Max(0, settings.TrophyEncumbranceWhenZero);
        var burden = rawBurden > 0 ? rawBurden : minWhenZero;
        if (burden <= 0)
        {
            DebugLog($"Item {item.Name} has no burden and TrophyEncumbranceWhenZero is 0, skipping");
            return;
        }

        var xpToNext = player.GetXpToNextLevel();
        if (xpToNext <= 0)
        {
            DebugLog($"{player.Name} is at max level, no XP to award");
            return;
        }

        double percentOfLevel = (burden / 100.0) * 0.15;
        var baseBonusXp = (long)(xpToNext * percentOfLevel);

        var qc = Math.Clamp(settings.TrophyQualityBonusChance, 0.0, 1.0);
        var pc = Math.Clamp(settings.TrophyPristineBonusChance, 0.0, 1.0);
        var rolledQuality = qc > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < (float)qc;
        var rolledPristine = pc > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < (float)pc;

        var mult = 1;
        if (rolledQuality)
            mult *= 2;
        if (rolledPristine)
            mult *= 3;

        var bonusXp = (long)Math.Min((double)baseBonusXp * mult, long.MaxValue);

        DebugLog(
            $"{player.Name} turned in {item.Name} (raw burden={rawBurden}, effective={burden}), base={baseBonusXp}, mult={mult}, awarding {bonusXp}");

        if (bonusXp > 0)
        {
            // Same as parchment / completion-bonus: pre-scale for shard xp_modifier, skip retention chain (ExternalXpGrants).
            ExternalXpGrants.GrantQuestXpWithoutMultiplier(player, bonusXp);

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
                1 => "",
                2 => " — double yield",
                3 => " — triple yield",
                6 => " — exceptional specimen (×6)",
                _ => "",
            };

            var burdenNote = rawBurden <= 0 && minWhenZero > 0
                ? $" (treat as {minWhenZero} burden; item has no listed encumbrance)"
                : "";

            var show = QuestXpAwardDisplay.EstimateCharacterXpAfterMilestoneChain(player, bonusXp);
            player.SendMessage(
                $"[Loremaster] {prefix}{itemName} turned in for +{show:N0} XP (~{pctDisplay:F2}% of level{yieldNote}){burdenNote}.");
        }
    }
}