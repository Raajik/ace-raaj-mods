namespace EmpyreanAlteration;

// Quest weapon spell ladder, WQG imbue rules, equal stat rolls, and weighted minor outcomes.
internal static class WeaponQuestGrowth
{
    // Rare per-level rolls: +1 Cleaving (stacks on each successful roll until RareCleavingMax) and/or one-time +1 LumAugSurgeChanceRating
    // when the weapon has no surge rating yet (roll pool skipped if LumAugSurgeChanceRating is already > 0). Runs before imbue/ladder.
    internal static bool TryApplyRarePropertyLevelUp(
        WorldObject item,
        Player player,
        int level,
        Settings settings,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        if (item == null || player == null || settings?.WeaponQuestGrowth is not { } wq || !wq.Enabled || !wq.RareWeaponPropertyGrowthEnabled)
            return false;

        WeenieType wt = item.WeenieType;
        if (wt is not (WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster))
            return false;

        double pCleave = ClampRareChance(wq.RareCleavingChancePerLevel);
        double pSurge = ClampRareChance(wq.RareSurgeChancePerLevel);

        bool any = false;
        List<string> parts = new();

        // Cleaving: each successful rare proc adds +1 until cap (multiple level-ups can keep raising it).
        if (Random.Shared.NextDouble() < pCleave)
        {
            int cur = item.GetProperty(PropertyInt.Cleaving) ?? 0;
            if (cur < wq.RareCleavingMax)
            {
                item.SetProperty(PropertyInt.Cleaving, cur + 1);
                if (summary != null)
                    summary.RareWeaponCleavingSteps++;
                any = true;
                parts.Add($"+1 Cleaving ({cur} -> {cur + 1})");
            }
        }

        // Surge / multistrike-style rating: only eligible while the weapon has no rating yet (do not roll or stack from this path if already present).
        int surgeBefore = item.GetProperty(PropertyInt.LumAugSurgeChanceRating) ?? 0;
        if (surgeBefore == 0 && Random.Shared.NextDouble() < pSurge)
        {
            item.SetProperty(PropertyInt.LumAugSurgeChanceRating, 1);
            if (summary != null)
                summary.RareWeaponSurgeSteps++;
            any = true;
            parts.Add($"+1 surge rating (0 -> 1)");
        }

        if (!any)
            return false;

        if (emitMessages)
        {
            string detail = string.Join("; ", parts);
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} -- rare growth: {detail}.");
        }

        return true;
    }

    private static double ClampRareChance(double p) => Math.Clamp(p, 0.0, 0.01);

    internal static bool TryApplySpellLadder(
        WorldObject item,
        Player player,
        int level,
        Settings settings,
        bool emitMessages,
        out string? appliedDescription)
    {
        appliedDescription = null;
        if (item == null || settings?.WeaponQuestGrowth == null || !settings.WeaponQuestGrowth.Enabled)
            return false;

        WeenieType wt = item.WeenieType;
        if (wt is not (WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster))
            return false;

        IReadOnlyList<string> ladder = GetSpellLineOrder(wt);
        int treasureTier = ReadTreasureTier(item, settings);
        WeaponQuestGrowthSettings wq = settings.WeaponQuestGrowth;

        bool allowNew = settings.SpellGrowth?.AllowNewSpellLinesOnLevelUp ?? false;

        return SpellGrowthHelper.TryOrderedWeaponSpellLadderStep(
            item,
            player,
            level,
            ladder,
            wt,
            treasureTier,
            wq.SpellUpgradeChance,
            wq.SpellAddChance,
            allowNew,
            emitMessages,
            out appliedDescription);
    }

    // Equal-weight stat branch: +Damage, +WeaponOffense%, +WeaponDefense%, melee-only Granite-like variance tighten, Oak-style speed (melee/missile when WeaponTime > 0).
    internal static bool TryApplyStatBranch(
        WorldObject item,
        Player player,
        int level,
        Settings settings,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary,
        out string? appliedDescription)
    {
        appliedDescription = null;
        if (item == null || settings?.WeaponQuestGrowth == null || !settings.WeaponQuestGrowth.Enabled)
            return false;

        WeenieType wt = item.WeenieType;
        if (wt is not (WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster))
            return false;

        List<int> outcomes = BuildStatOutcomeIndices(wt, item);
        if (outcomes.Count == 0)
            return false;

        int pick = outcomes[Random.Shared.Next(0, outcomes.Count)];
        WeaponQuestGrowthSettings wq = settings.WeaponQuestGrowth;

        switch (pick)
        {
            case 0:
            {
                int before = item.Damage ?? 0;
                item.Damage = before + 1;
                if (summary != null)
                    summary.DamageGained += 1;
                appliedDescription = "+1 Damage";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Damage ({before} -> {before + 1}).");
                return true;
            }
            case 1:
            {
                double cur = item.WeaponOffense ?? 0.0;
                item.WeaponOffense = cur + 0.01;
                if (summary != null)
                    summary.WeaponAttackPercentSteps += 1;
                appliedDescription = "+1% weapon offense";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1% weapon offense.");
                return true;
            }
            case 2:
            {
                double cur = item.WeaponDefense ?? 0.0;
                item.WeaponDefense = cur + 0.01;
                if (summary != null)
                    summary.WeaponMeleeDefPercentSteps += 1;
                appliedDescription = "+1% weapon defense";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1% weapon defense.");
                return true;
            }
            case 3:
            {
                int spd = (int)(item.WeaponTime ?? 0);
                int delta = Math.Max(1, wq.OakSpeedDelta);
                item.WeaponTime = Math.Max(0, spd - delta);
                if (summary != null)
                    summary.WeaponOakSpeedSteps += 1;
                appliedDescription = $"attack speed improved (-{delta} weapon time)";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and attacks faster (weapon time {spd} -> {item.WeaponTime}).");
                return true;
            }
            case 4:
            {
                int p = Math.Clamp(wq.MeleeDamageVarianceTightenPercent, 1, 99);
                double beforeVar = item.DamageVariance ?? 1.0;
                ApplyGraniteLikeDamageVarianceTighten(item, p);
                if (summary != null)
                    summary.WeaponMeleeVarianceTightenSteps += 1;
                appliedDescription = $"damage variance tightened ({p}%, Granite-like)";
                if (emitMessages)
                    player.SendMessage(
                        $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and tightens damage variance by {p}% (variance {beforeVar:0.###} -> {item.DamageVariance:0.###}), raising typical rolls.");
                return true;
            }
            default:
                return false;
        }
    }

    // Same math as QuestGrowthSalvageEffectApplier DamageVariance success path.
    private static void ApplyGraniteLikeDamageVarianceTighten(WorldObject item, int percentReduce)
    {
        double factor = 1.0 - (percentReduce / 100.0);
        if (factor <= 0.0)
            factor = 0.01;

        double cur = item.DamageVariance ?? 1.0;
        item.DamageVariance = (float)(cur * factor);
    }

    // 0=Damage, 1=Offense%, 2=Defense%, 3=Oak speed (melee/missile only), 4=melee variance tighten.
    private static List<int> BuildStatOutcomeIndices(WeenieType wt, WorldObject item)
    {
        List<int> list = new() { 0, 1, 2 };

        if (wt == WeenieType.MeleeWeapon)
            list.Add(4);

        bool allowOak = wt is WeenieType.MeleeWeapon or WeenieType.MissileLauncher;
        if (allowOak && (item.WeaponTime ?? 0) > 0)
            list.Add(3);

        return list;
    }

    // LowMinorOutcomeChance gate, then weighted cantrip vs +base damage vs +damage rating vs +crit damage rating.
    internal static bool TryApplyMinorOutcome(
        WorldObject item,
        Player player,
        int level,
        Settings settings,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary,
        out string? appliedDescription)
    {
        appliedDescription = null;
        WeaponQuestGrowthSettings? wq = settings?.WeaponQuestGrowth;
        if (item == null || wq == null || !wq.Enabled)
            return false;

        if (Random.Shared.NextDouble() > wq.LowMinorOutcomeChance)
            return false;

        WeenieType wt = item.WeenieType;
        if (wt is not (WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster))
            return false;

        double cW = Math.Max(0, wq.MinorCantripWeight);
        double dW = Math.Max(0, wq.MinorFlatDamageWeight);
        double kW = Math.Max(0, wq.MinorCritDamageWeight);
        double drW = Math.Max(0, wq.MinorDamageRatingWeight);
        double t = cW + dW + kW + drW;
        if (t <= 0)
            return false;

        double r = Random.Shared.NextDouble() * t;
        IReadOnlyList<string> frags = GetMinorCantripFragments(wt);

        if (r < cW)
        {
            if (settings.SpellGrowth?.AllowNewSpellLinesOnLevelUp == true
                && SpellGrowthHelper.TryAddMinorCantripByNameFragments(item, wt, frags, out string? sn))
            {
                appliedDescription = $"minor cantrip ({sn})";
                if (summary != null)
                    summary.MinorCantripCount++;
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains a minor cantrip ({sn}).");
                return true;
            }

            double rem = dW + kW + drW;
            if (rem <= 0)
                return false;

            double sub = Random.Shared.NextDouble() * rem;
            if (sub < dW)
                return ApplyMinorFlatDamage(item, player, level, emitMessages, summary, out appliedDescription);
            if (sub < dW + kW)
                return ApplyMinorCritRating(item, player, level, emitMessages, summary, out appliedDescription);

            return ApplyMinorDamageRating(item, player, level, emitMessages, summary, out appliedDescription);
        }

        if (r < cW + dW)
            return ApplyMinorFlatDamage(item, player, level, emitMessages, summary, out appliedDescription);

        if (r < cW + dW + kW)
            return ApplyMinorCritRating(item, player, level, emitMessages, summary, out appliedDescription);

        return ApplyMinorDamageRating(item, player, level, emitMessages, summary, out appliedDescription);
    }

    private static bool ApplyMinorFlatDamage(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary,
        out string? appliedDescription)
    {
        appliedDescription = null;
        int before = item.Damage ?? 0;
        item.Damage = before + 1;
        if (summary != null)
        {
            summary.DamageGained++;
            summary.MinorFlatDamageCount++;
        }
        appliedDescription = "+1 base Damage (minor)";
        if (emitMessages)
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 base Damage ({before} -> {before + 1}) from a minor surge.");
        return true;
    }

    private static bool ApplyMinorDamageRating(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary,
        out string? appliedDescription)
    {
        appliedDescription = null;
        int drBefore = item.GetProperty(PropertyInt.DamageRating) ?? 0;
        item.SetProperty(PropertyInt.DamageRating, drBefore + 1);
        if (summary != null)
            summary.MinorDamageRatingCount++;
        appliedDescription = "+1 damage rating (minor)";
        if (emitMessages)
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Damage Rating ({drBefore} -> {drBefore + 1}).");
        return true;
    }

    private static bool ApplyMinorCritRating(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary,
        out string? appliedDescription)
    {
        appliedDescription = null;
        int critBefore = item.GetProperty(PropertyInt.CritDamageRating) ?? 0;
        item.SetProperty(PropertyInt.CritDamageRating, critBefore + 1);
        if (summary != null)
            summary.MinorCritDamageRatingCount++;
        appliedDescription = "+1 crit damage rating (minor)";
        if (emitMessages)
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Crit Damage Rating ({critBefore} -> {critBefore + 1}).");
        return true;
    }

    private static IReadOnlyList<string> GetMinorCantripFragments(WeenieType wt)
    {
        return wt switch
        {
            WeenieType.MissileLauncher => new[]
            {
                "Blood thirst",
                "Swift hunter",
                "Minor defender",
            },
            WeenieType.Caster => new[]
            {
                "Spirit thirst",
                "Minor defender",
            },
            _ => new[]
            {
                "Blood thirst",
                "Swift hunter",
                "Minor defender",
                "Heart thirst",
            },
        };
    }

    private static int ReadTreasureTier(WorldObject item, Settings settings)
    {
        int? stored = item.GetProperty(QuestItemGrowthProperties.QuestGrowthTreasureTierInt);
        if (stored.HasValue && stored.Value > 0)
            return stored.Value;

        return 1;
    }

    private static IReadOnlyList<string> GetSpellLineOrder(WeenieType wt)
    {
        return wt switch
        {
            WeenieType.MissileLauncher => new[]
            {
                "Blood Drinker",
                "Defender",
                "Swift Killer",
            },
            WeenieType.Caster => new[]
            {
                "Spirit Drinker",
                "Defender",
                "Swift Killer",
            },
            _ => new[]
            {
                "Blood Drinker",
                "Heart Seeker",
                "Defender",
                "Swift Killer",
            },
        };
    }
}
