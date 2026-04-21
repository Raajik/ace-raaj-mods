namespace EmpyreanAlteration;

// Pine-like Value, Linen-like Burden, Moonstone-like ItemMaxMana when higher-priority growth branches fail.
internal static class QuestGrowthUtilityHelper
{
    internal static bool TryApplyUtility(
        WorldObject item,
        Player player,
        int level,
        Settings settings,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        if (item == null || player == null || settings == null)
            return false;

        QuestGrowthUtilitySettings cfg = settings.QuestGrowthUtility;
        if (!cfg.Enabled)
            return false;

        int wV = Math.Max(0, cfg.ValueReductionWeight);
        int wB = Math.Max(0, cfg.BurdenReductionWeight);
        int wM = Math.Max(0, cfg.ItemMaxManaWeight);
        int total = wV + wB + wM;
        if (total <= 0)
            return false;

        int pick = Random.Shared.Next(0, total);
        if (pick < wV)
            return TryApplyValueReduction(item, player, level, cfg, emitMessages, summary);

        if (pick < wV + wB)
            return TryApplyBurdenReduction(item, player, level, cfg, emitMessages, summary);

        return TryApplyItemMaxMana(item, player, level, cfg, emitMessages, summary);
    }

    private static bool TryApplyValueReduction(
        WorldObject item,
        Player player,
        int level,
        QuestGrowthUtilitySettings cfg,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int? value = item.GetProperty(PropertyInt.Value);
        if (!value.HasValue || value.Value <= 1)
            return false;

        double mult = cfg.ValueMultiplier;
        if (mult <= 0 || mult >= 1.0)
            mult = 0.75;

        int beforeValue = value.Value;
        int afterValue = Math.Max(1, (int)Math.Floor(beforeValue * mult));
        if (afterValue >= beforeValue)
            return false;

        item.SetProperty(PropertyInt.Value, afterValue);

        int? suv = item.GetProperty(PropertyInt.StackUnitValue);
        if (suv.HasValue && suv.Value > 1)
            item.SetProperty(PropertyInt.StackUnitValue, Math.Max(1, (int)Math.Floor(suv.Value * mult)));

        summary?.ValueReductions += 1;
        if (emitMessages)
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and becomes less valuable (Value {beforeValue} \u2192 {afterValue}).");
        return true;
    }

    private static bool TryApplyBurdenReduction(
        WorldObject item,
        Player player,
        int level,
        QuestGrowthUtilitySettings cfg,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int min = cfg.BurdenReductionMin;
        int max = cfg.BurdenReductionMax;
        if (min > max)
            (min, max) = (max, min);

        int enc = item.EncumbranceVal ?? 0;
        if (enc <= 0)
            return false;

        int delta = min == max ? min : Random.Shared.Next(min, max + 1);
        if (delta <= 0)
            return false;

        int after = Math.Max(0, enc - delta);
        item.EncumbranceVal = after;
        summary?.AddSalvage("Burden", delta);
        if (emitMessages)
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and becomes lighter (Burden {enc} \u2192 {after}).");
        return true;
    }

    private static bool TryApplyItemMaxMana(
        WorldObject item,
        Player player,
        int level,
        QuestGrowthUtilitySettings cfg,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int min = cfg.ItemMaxManaMin;
        int max = cfg.ItemMaxManaMax;
        if (min > max)
            (min, max) = (max, min);

        int delta = min == max ? min : Random.Shared.Next(min, max + 1);
        if (delta <= 0)
            return false;

        int beforeMana = item.ItemMaxMana ?? 0;
        int afterMana = beforeMana + delta;
        item.ItemMaxMana = afterMana;
        summary?.MaxManaGained += delta;
        if (emitMessages)
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +{delta} Max Mana ({beforeMana} \u2192 {afterMana}).");
        return true;
    }
}
