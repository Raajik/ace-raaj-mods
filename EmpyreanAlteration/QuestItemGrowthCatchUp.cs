namespace EmpyreanAlteration;

// Applies quest-growth level-up effects when XP jumps multiple steps or replays missed levels.
internal static class QuestItemGrowthCatchUp
{
    internal static void ApplyCatchUpGrowth(WorldObject item, int prevItemLevel, int currentLevel, bool questGrowth, Player player, Settings s)
    {
        if (item == null || player == null)
            return;

        int lastApplied = item.GetProperty(QuestItemGrowthProperties.QuestGrowthLastAppliedItemLevelInt) ?? prevItemLevel;
        if (lastApplied < 0)
            lastApplied = 0;

        int? maxLv = item.ItemMaxLevel;
        if (lastApplied > currentLevel || (maxLv > 0 && lastApplied > maxLv.Value))
        {
            int? badStored = item.GetProperty(QuestItemGrowthProperties.QuestGrowthLastAppliedItemLevelInt);
            ModManager.Log(
                $"[EmpyreanAlteration] Resetting last-applied item level tracker for {item.Name} ({item.WeenieClassId}): stored={badStored} prev={prevItemLevel} current={currentLevel} max={maxLv}",
                ModManager.LogLevel.Warn);
            lastApplied = prevItemLevel;
            item.RemoveProperty(QuestItemGrowthProperties.QuestGrowthLastAppliedItemLevelInt);
        }

        int start = Math.Max(prevItemLevel, lastApplied) + 1;
        if (start > currentLevel)
            return;

        int phantomOffset = item.GetProperty(QuestItemGrowthProperties.QuestGrowthPhantomTierOffsetInt) ?? 0;

        int delta = currentLevel - prevItemLevel;
        int summarizeAt = Math.Max(1, s.QuestGrowthCatchUpSummarizeMinLevels);
        bool summarize = delta >= summarizeAt;
        QuestItemGrowthLevelEngine.GrowthSummary? summary = summarize ? new QuestItemGrowthLevelEngine.GrowthSummary() : null;

        for (int level = start; level <= currentLevel; level++)
        {
            int growthTier = QuestGrowthTierMath.GrowthTierForDisplayLevel(level, phantomOffset);

            // Big catch-ups already send one player summary; skip per-level Info spam on the server console.
            if (!summarize)
            {
                ModManager.Log(
                    $"[EmpyreanAlteration] OnItemLevelUp: {item.Name} ({item.WeenieClassId}) display {level}/{item.ItemMaxLevel} growthTier={growthTier} questGrowth={questGrowth}",
                    ModManager.LogLevel.Info);
            }

            bool applied = QuestItemGrowthLevelEngine.ApplyLevelUp(item, player, growthTier, s, emitMessages: !summarize, summary: summary, maxAttempts: 4);
            if (!applied)
            {
                ModManager.Log(
                    $"[EmpyreanAlteration] No growth effect applied: {item.Name} ({item.WeenieClassId}) type={item.WeenieType} level {level}/{item.ItemMaxLevel}",
                    ModManager.LogLevel.Warn);
            }

            if (summary != null)
                summary.LevelsApplied++;

            item.SetProperty(QuestItemGrowthProperties.QuestGrowthLastAppliedItemLevelInt, level);
        }

        if (summarize && summary != null && CanSendPlayerChat(player))
        {
            string msg = BuildCatchUpSummaryMessage(item, delta, summary);
            player.SendMessage(msg);
        }

        // Force client sync: send current item XP/cap values so the client XP bar and level display match the server
        if (player.Session?.Network != null)
        {
            try
            {
                if (item.ItemTotalXp.HasValue)
                    player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt64(item, PropertyInt64.ItemTotalXp, item.ItemTotalXp.Value));
                if (item.ItemMaxLevel.HasValue)
                    player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.ItemMaxLevel, item.ItemMaxLevel.Value));
            }
            catch { }
        }
    }

    private static bool CanSendPlayerChat(Player? player) =>
        player != null && player.Session?.Network != null;

    private static string BuildCatchUpSummaryMessage(WorldObject item, int delta, QuestItemGrowthLevelEngine.GrowthSummary summary)
    {
        List<string> parts = new();

        if (summary.Imbues.Count > 0)
        {
            string imbues = string.Join(
                ", ",
                summary.Imbues
                    .OrderByDescending(k => k.Value)
                    .ThenBy(k => k.Key, StringComparer.OrdinalIgnoreCase)
                    .Select(k => k.Value == 1 ? k.Key : $"{k.Value} {k.Key}"));
            parts.Add($"imbues ({imbues})");
        }

        if (summary.Salvage.Count > 0)
        {
            string salvage = string.Join(
                ", ",
                summary.Salvage
                    .OrderByDescending(k => k.Value.count)
                    .ThenBy(k => k.Key, StringComparer.OrdinalIgnoreCase)
                    .Select(k =>
                    {
                        if (k.Value.count <= 1)
                            return $"{k.Key} ({k.Value.totalValue})";
                        return $"{k.Value.count} {k.Key} ({k.Value.totalValue} total)";
                    }));
            parts.Add($"tinkers ({salvage})");
        }

        if (summary.Spells.Count > 0)
        {
            string spells = string.Join(
                ", ",
                summary.Spells
                    .OrderByDescending(k => k.Value)
                    .ThenBy(k => k.Key, StringComparer.OrdinalIgnoreCase)
                    .Select(k => k.Value == 1 ? k.Key : $"{k.Value}x {k.Key}"));
            parts.Add($"spells/cantrips ({spells})");
        }

        if (summary.DamageGained > 0)
            parts.Add($"+{summary.DamageGained} Damage");
        if (summary.WeaponAttackPercentSteps > 0)
            parts.Add($"+{summary.WeaponAttackPercentSteps}% weapon offense (steps)");
        if (summary.WeaponMeleeDefPercentSteps > 0)
            parts.Add($"+{summary.WeaponMeleeDefPercentSteps}% weapon defense (steps)");
        if (summary.WeaponOakSpeedSteps > 0)
            parts.Add($"{summary.WeaponOakSpeedSteps} attack speed improvement(s) (weapon time)");
        if (summary.WeaponMeleeVarianceTightenSteps > 0)
            parts.Add($"{summary.WeaponMeleeVarianceTightenSteps} melee variance tighten(s) (Granite-like)");
        if (summary.MinorCantripCount > 0)
            parts.Add($"{summary.MinorCantripCount} minor cantrip(s)");
        if (summary.MinorFlatDamageCount > 0)
            parts.Add($"{summary.MinorFlatDamageCount} minor +Damage proc(s)");
        if (summary.MinorDamageRatingCount > 0)
            parts.Add($"+{summary.MinorDamageRatingCount} Damage Rating (minor)");
        if (summary.MinorCritDamageRatingCount > 0)
            parts.Add($"+{summary.MinorCritDamageRatingCount} Crit Damage Rating (minor)");
        if (summary.RareWeaponCleavingSteps > 0)
            parts.Add($"+{summary.RareWeaponCleavingSteps} Cleaving (rare)");
        if (summary.RareWeaponSurgeSteps > 0)
            parts.Add($"+{summary.RareWeaponSurgeSteps} surge rating (rare)");
        if (summary.ArmorLevelGained > 0)
            parts.Add($"+{summary.ArmorLevelGained} Armor Level");
        if (summary.GearDamageRatingSteps > 0)
            parts.Add($"+{summary.GearDamageRatingSteps} Damage Rating (gear)");
        if (summary.GearCritDamageRatingSteps > 0)
            parts.Add($"+{summary.GearCritDamageRatingSteps} Crit Damage Rating (gear)");
        if (summary.GearDamageResistRatingSteps > 0)
            parts.Add($"+{summary.GearDamageResistRatingSteps} Damage Resist Rating");
        if (summary.GearCritDamageResistRatingSteps > 0)
            parts.Add($"+{summary.GearCritDamageResistRatingSteps} Crit Damage Resist Rating");
        if (summary.GearHealingBoostRatingGained > 0)
            parts.Add($"+{summary.GearHealingBoostRatingGained} Healing Boost Rating");
        if (summary.GearVitalityRatingGained > 0)
            parts.Add($"+{summary.GearVitalityRatingGained} Vitality Rating");
        if (summary.MaxManaGained > 0)
            parts.Add($"+{summary.MaxManaGained} Max Mana");
        if (summary.ValueReductions > 0)
            parts.Add($"{summary.ValueReductions} value reductions");

        string tail = parts.Count > 0 ? string.Join("; ", parts) : "no changes (unexpected)";

        if (parts.Count == 0 && summary.NoEffectRolls > 0)
            tail = $"no changes after {summary.NoEffectRolls} attempts (unexpected)";

        string name = item.Name ?? "item";
        return $"Your {name} gained {delta} levels at once. Combined effect: {tail}.";
    }
}
