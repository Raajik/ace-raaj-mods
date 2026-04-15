namespace EmpyreanAlteration;

// Quest-growth item level-up effects (salvage-like rolls, imbues, spell growth).
internal static class QuestItemGrowthLevelEngine
{
    private const double WeaponImbueChanceWhenNone = 0.8;
    private const double WeaponExtraImbueChance = 0.1;

    internal sealed class GrowthSummary
    {
        internal int LevelsApplied;
        internal Dictionary<string, int> Imbues = new(StringComparer.OrdinalIgnoreCase);
        internal Dictionary<string, (int count, long totalValue)> Salvage = new(StringComparer.OrdinalIgnoreCase);
        internal Dictionary<string, int> Spells = new(StringComparer.OrdinalIgnoreCase);
        internal int DamageGained;
        internal int ArmorLevelGained;
        internal int MaxManaGained;
        internal int ValueReductions;
        internal int NoEffectRolls;
        internal int WeaponAttackPercentSteps;
        internal int WeaponMeleeDefPercentSteps;
        internal int WeaponOakSpeedSteps;
        internal int MinorCantripCount;
        internal int MinorFlatDamageCount;
        internal int MinorCritDamageRatingCount;
        internal int MinorDamageRatingCount;
        internal int WeaponMeleeVarianceTightenSteps;

        internal void AddImbue(string imbueName)
        {
            if (string.IsNullOrWhiteSpace(imbueName))
                imbueName = "Imbue";
            Imbues.TryGetValue(imbueName, out int c);
            Imbues[imbueName] = c + 1;
        }

        internal void AddSalvage(string ruleName, int value)
        {
            if (string.IsNullOrWhiteSpace(ruleName))
                ruleName = "Enhancement";
            Salvage.TryGetValue(ruleName, out var cur);
            Salvage[ruleName] = (cur.count + 1, cur.totalValue + value);
        }

        internal void AddSpell(string desc)
        {
            if (string.IsNullOrWhiteSpace(desc))
                desc = "Spell";
            Spells.TryGetValue(desc, out int c);
            Spells[desc] = c + 1;
        }
    }

    internal static bool ApplyLevelUp(WorldObject item, Player player, int level, Settings settings)
    {
        return ApplyLevelUp(item, player, level, settings, emitMessages: true, summary: null, maxAttempts: 1);
    }

    internal static bool ApplyLevelUp(WorldObject item, Player player, int level, Settings settings, bool emitMessages, GrowthSummary? summary, int maxAttempts)
    {
        if (item == null || player == null)
            return false;

        // Basic category routing; jewelry is detected primarily by name.
        WeenieType type = item.WeenieType;
        string name = item.Name ?? string.Empty;
        bool isJewelry = IsJewelry(name);

        if (maxAttempts < 1)
            maxAttempts = 1;

        bool applied = false;
        for (int attempt = 0; attempt < maxAttempts; attempt++)
        {
            applied =
                isJewelry
                    ? TryApplyJewelryLevelUp(item, player, level, settings, emitMessages, summary)
                    : type is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster
                        ? TryApplyWeaponLevelUp(item, player, level, settings, emitMessages, summary)
                        : type == WeenieType.Clothing
                            ? TryApplyArmorLevelUp(item, player, level, settings, emitMessages, summary)
                            : false;

            if (applied)
                break;

            if (summary != null)
                summary.NoEffectRolls += 1;
        }

        // Fallback: ensure at least a small visible bump for any leveled equippable item.
        if (!applied && IsEquippableForFallback(item))
        {
            ApplyMinimalFallback(item, player, level, emitMessages, summary);
            applied = true;
        }

        return applied;
    }

    private static bool IsJewelry(string name)
    {
        if (string.IsNullOrWhiteSpace(name))
            return false;

        string n = name;
        if (n.Contains("Ring", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Bracelet", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Necklace", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Amulet", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Pendant", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Charm", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Trinket", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Moonstone", StringComparison.OrdinalIgnoreCase)) return true;

        return false;
    }

    private static bool TryApplyWeaponLevelUp(WorldObject item, Player player, int level, Settings settings)
    {
        return TryApplyWeaponLevelUp(item, player, level, settings, emitMessages: true, summary: null);
    }

    private static bool TryApplyWeaponLevelUp(WorldObject item, Player player, int level, Settings settings, bool emitMessages, GrowthSummary? summary)
    {
        // 1) Imbues, 2) weapon ladder + stat + minor (WeaponQuestGrowth), or legacy spell growth, 3) salvage-like bonuses.
        if (TryGrantImbue(item, player, level, settings, isArmorOrWeapon: true, emitMessages, summary))
            return true;

        if (settings.WeaponQuestGrowth is { Enabled: true })
        {
            if (WeaponQuestGrowth.TryApplySpellLadder(item, player, level, settings, emitMessages, out string? weaponLadderDesc))
            {
                if (summary != null && !string.IsNullOrWhiteSpace(weaponLadderDesc))
                    summary.AddSpell(weaponLadderDesc);
                return true;
            }

            if (WeaponQuestGrowth.TryApplyStatBranch(item, player, level, settings, emitMessages, summary, out _))
                return true;

            if (WeaponQuestGrowth.TryApplyMinorOutcome(item, player, level, settings, emitMessages, summary, out _))
                return true;
        }
        else if (SpellGrowthHelper.TryApplySpellGrowth(item, player, level, settings, emitMessages, out string? spellDesc))
        {
            if (summary != null && !string.IsNullOrWhiteSpace(spellDesc))
                summary.AddSpell(spellDesc);
            return true;
        }

        if (TryApplySalvageLikeBonus(item, player, level, settings, forWeapons: true, emitMessages, summary))
            return true;

        return false;
    }

    private static bool TryApplyArmorLevelUp(WorldObject item, Player player, int level, Settings settings)
    {
        return TryApplyArmorLevelUp(item, player, level, settings, emitMessages: true, summary: null);
    }

    private static bool TryApplyArmorLevelUp(WorldObject item, Player player, int level, Settings settings, bool emitMessages, GrowthSummary? summary)
    {
        // 1) Try a defensive imbue / effect first.
        if (TryGrantImbue(item, player, level, settings, isArmorOrWeapon: true, emitMessages, summary))
            return true;

        if (SpellGrowthHelper.TryApplySpellGrowth(item, player, level, settings, emitMessages, out string? spellDesc))
        {
            if (summary != null && !string.IsNullOrWhiteSpace(spellDesc))
                summary.AddSpell(spellDesc);
            return true;
        }

        if (TryApplySalvageLikeBonus(item, player, level, settings, forWeapons: false, emitMessages, summary))
            return true;

        return false;
    }

    private static bool TryApplyJewelryLevelUp(WorldObject item, Player player, int level, Settings settings)
    {
        return TryApplyJewelryLevelUp(item, player, level, settings, emitMessages: true, summary: null);
    }

    private static bool TryApplyJewelryLevelUp(WorldObject item, Player player, int level, Settings settings, bool emitMessages, GrowthSummary? summary)
    {
        // Jewelry: strongly prefer an imbue if none exists, then spells/cantrips, then fall back to defensive/utility salvage-like tweaks.
        if (TryGrantImbue(item, player, level, settings, isArmorOrWeapon: false, emitMessages, summary))
            return true;

        if (SpellGrowthHelper.TryApplySpellGrowth(item, player, level, settings, emitMessages, out string? spellDesc))
        {
            if (summary != null && !string.IsNullOrWhiteSpace(spellDesc))
                summary.AddSpell(spellDesc);
            return true;
        }

        if (TryApplySalvageLikeBonus(item, player, level, settings, forWeapons: false, emitMessages, summary, preferJewelry: true))
            return true;

        return false;
    }

    private static bool IsEquippableForFallback(WorldObject item)
    {
        WeenieType type = item.WeenieType;
        if (type == WeenieType.MeleeWeapon || type == WeenieType.MissileLauncher || type == WeenieType.Caster || type == WeenieType.Clothing)
            return true;

        // Some jewelry comes through as Generic; treat it as equippable if it looks like jewelry or has equip slots.
        if (IsJewelry(item.Name ?? string.Empty))
            return true;

        EquipMask? validLoc = item.ValidLocations;
        if (validLoc.HasValue && validLoc.Value != 0)
            return true;

        return false;
    }

    private static void ApplyMinimalFallback(WorldObject item, Player player, int level, bool emitMessages, GrowthSummary? summary)
    {
        if (item.WeenieType == WeenieType.MeleeWeapon || item.WeenieType == WeenieType.MissileLauncher || item.WeenieType == WeenieType.Caster)
        {
            int before = item.Damage ?? 0;
            int after = before + 1;
            item.Damage = after;
            summary?.DamageGained += 1;
            if (emitMessages)
                player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Damage ({before} \u2192 {after}).");
            return;
        }

        if (item.WeenieType == WeenieType.Clothing)
        {
            // Jewelry doesn't meaningfully use ArmorLevel; prefer burden reduction as a visible utility gain.
            if (IsJewelry(item.Name ?? string.Empty))
            {
                // Fallback order for jewelry:
                // 1) Pine-like: lower Value until it reaches 1.
                int? value = item.GetProperty(PropertyInt.Value);
                if (value.HasValue && value.Value > 1)
                {
                    int beforeValue = value.Value;
                    int afterValue = Math.Max(1, (int)Math.Floor(beforeValue * 0.75));
                    if (afterValue < beforeValue)
                    {
                        item.SetProperty(PropertyInt.Value, afterValue);

                        int? suv = item.GetProperty(PropertyInt.StackUnitValue);
                        if (suv.HasValue && suv.Value > 1)
                            item.SetProperty(PropertyInt.StackUnitValue, Math.Max(1, (int)Math.Floor(suv.Value * 0.75)));

                        if (summary != null)
                            summary.ValueReductions += 1;
                        if (emitMessages)
                            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and becomes less valuable (Value {beforeValue} \u2192 {afterValue}).");
                        return;
                    }
                }

                // 2) Moonstone-like: increase max mana.
                int beforeMana = item.ItemMaxMana ?? 0;
                int afterMana = beforeMana + 50;
                item.ItemMaxMana = afterMana;
                summary?.MaxManaGained += 50;
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +50 Max Mana ({beforeMana} \u2192 {afterMana}).");
                return;
            }

            int before = item.ArmorLevel ?? 0;
            int after = before + 1;
            item.ArmorLevel = after;
            summary?.ArmorLevelGained += 1;
            if (emitMessages)
                player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Armor Level ({before} \u2192 {after}).");
        }
    }

    private static bool TryGrantImbue(WorldObject item, Player player, int level, Settings settings, bool isArmorOrWeapon, bool emitMessages, GrowthSummary? summary)
    {
        WeenieType wt = item.WeenieType;
        bool isQuestWeapon = wt is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster;
        if (isArmorOrWeapon && isQuestWeapon && settings.WeaponQuestGrowth is { Enabled: true })
            return TryGrantWeaponQuestGrowthImbue(item, player, level, settings, emitMessages, summary);

        ImbuedEffectType current = item.ImbuedEffect;
        int currentCount = BitOperations.PopCount((uint)current);
        if (currentCount >= settings.QuestGrowthMaxImbueEffects)
            return false;

        double roll = Random.Shared.NextDouble();
        if (currentCount == 0)
        {
            if (roll > WeaponImbueChanceWhenNone)
                return false;
        }
        else
        {
            if (roll > WeaponExtraImbueChance)
                return false;
        }

        ImbuedEffectType? chosen = PickImbueForItem(item, current, isArmorOrWeapon);
        if (!chosen.HasValue)
            return false;

        item.ImbuedEffect |= chosen.Value;

        summary?.AddImbue(chosen.Value.ToString());
        if (emitMessages)
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains the {chosen.Value} imbue.");
        return true;
    }

    private static ImbuedEffectType? PickImbueForItem(WorldObject item, ImbuedEffectType existing, bool isArmorOrWeapon)
    {
        int? damageTypeInt = item.GetProperty(PropertyInt.DamageType);
        DamageType damageType = damageTypeInt.HasValue ? (DamageType)damageTypeInt.Value : DamageType.Undef;

        // Element-appropriate rending first.
        ImbuedEffectType? preferred = damageType switch
        {
            DamageType.Acid => ImbuedEffectType.AcidRending,
            DamageType.Cold => ImbuedEffectType.ColdRending,
            DamageType.Electric => ImbuedEffectType.ElectricRending,
            DamageType.Fire => ImbuedEffectType.FireRending,
            DamageType.Pierce => ImbuedEffectType.PierceRending,
            DamageType.Slash => ImbuedEffectType.SlashRending,
            _ => null,
        };

        if (preferred.HasValue && (existing & preferred.Value) == 0)
            return preferred.Value;

        WeenieType type = item.WeenieType;

        // Fallback pools per category.
        ImbuedEffectType[] pool =
            type == WeenieType.MeleeWeapon || type == WeenieType.MissileLauncher || type == WeenieType.Caster
                ? new[]
                {
                    ImbuedEffectType.CriticalStrike,
                    ImbuedEffectType.CripplingBlow,
                    ImbuedEffectType.ArmorRending,
                    ImbuedEffectType.MagicDefense,
                    ImbuedEffectType.MeleeDefense,
                    ImbuedEffectType.MissileDefense,
                }
            : type == WeenieType.Clothing
                ? new[]
                {
                    ImbuedEffectType.MagicDefense,
                    ImbuedEffectType.MeleeDefense,
                    ImbuedEffectType.MissileDefense,
                }
                : new[]
                {
                    ImbuedEffectType.MagicDefense,
                    ImbuedEffectType.MeleeDefense,
                    ImbuedEffectType.MissileDefense,
                    ImbuedEffectType.Spellbook,
                };

        ImbuedEffectType[] remaining = pool.Where(p => (existing & p) == 0).ToArray();
        if (remaining.Length == 0)
            return null;

        int idx = Random.Shared.Next(0, remaining.Length);
        return remaining[idx];
    }

    // Elemental rend for the weapon's damage type is granted deterministically when missing; further imbues use SecondaryImbueChance only.
    private static bool TryGrantWeaponQuestGrowthImbue(WorldObject item, Player player, int level, Settings settings, bool emitMessages, GrowthSummary? summary)
    {
        ImbuedEffectType current = item.ImbuedEffect;
        int currentCount = BitOperations.PopCount((uint)current);
        if (currentCount >= settings.QuestGrowthMaxImbueEffects)
            return false;

        ImbuedEffectType? preferred = GetPreferredElementalRendIfMissing(item, current);
        if (preferred.HasValue)
        {
            item.ImbuedEffect |= preferred.Value;
            summary?.AddImbue(preferred.Value.ToString());
            if (emitMessages)
                player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains the {preferred.Value} imbue.");
            return true;
        }

        double p = settings.WeaponQuestGrowth!.SecondaryImbueChance;
        if (Random.Shared.NextDouble() > p)
            return false;

        ImbuedEffectType? chosen = PickSecondaryWeaponImbueOnly(current);
        if (!chosen.HasValue)
            return false;

        item.ImbuedEffect |= chosen.Value;
        summary?.AddImbue(chosen.Value.ToString());
        if (emitMessages)
            player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains the {chosen.Value} imbue.");
        return true;
    }

    private static ImbuedEffectType? GetPreferredElementalRendIfMissing(WorldObject item, ImbuedEffectType existing)
    {
        int? damageTypeInt = item.GetProperty(PropertyInt.DamageType);
        DamageType damageType = damageTypeInt.HasValue ? (DamageType)damageTypeInt.Value : DamageType.Undef;
        ImbuedEffectType? preferred = damageType switch
        {
            DamageType.Acid => ImbuedEffectType.AcidRending,
            DamageType.Cold => ImbuedEffectType.ColdRending,
            DamageType.Electric => ImbuedEffectType.ElectricRending,
            DamageType.Fire => ImbuedEffectType.FireRending,
            DamageType.Pierce => ImbuedEffectType.PierceRending,
            DamageType.Slash => ImbuedEffectType.SlashRending,
            _ => null,
        };

        if (!preferred.HasValue)
            return null;

        if ((existing & preferred.Value) != 0)
            return null;

        return preferred;
    }

    private static ImbuedEffectType? PickSecondaryWeaponImbueOnly(ImbuedEffectType existing)
    {
        ImbuedEffectType[] pool =
        {
            ImbuedEffectType.CriticalStrike,
            ImbuedEffectType.CripplingBlow,
            ImbuedEffectType.ArmorRending,
            ImbuedEffectType.MagicDefense,
            ImbuedEffectType.MeleeDefense,
            ImbuedEffectType.MissileDefense,
        };

        ImbuedEffectType[] remaining = pool.Where(p => (existing & p) == 0).ToArray();
        if (remaining.Length == 0)
            return null;

        int idx = Random.Shared.Next(0, remaining.Length);
        return remaining[idx];
    }

    private static bool TryApplySalvageLikeBonus(WorldObject item, Player player, int level, Settings settings, bool forWeapons, bool emitMessages, GrowthSummary? summary, bool preferJewelry = false)
    {
        // Reuse existing SalvageRules definitions (Iron, Granite, Oak, Brass, Velvet, Steel, etc.).
        if (settings.QuestGrowthSalvageRules == null || settings.QuestGrowthSalvageRules.Count == 0)
            return false;

        string[] weaponNames = { "Iron", "Granite", "Oak", "Brass", "Velvet", "Green Garnet", "Mahogany" };
        string[] armorNames = { "Steel", "Armoredillo Hide", "Bronze", "Ceramic", "Marble", "Reedshark Hide", "Wool" };
        string[] jewelryNames = { "Moonstone", "Pine", "Linen" };

        string[] targetNames = forWeapons ? weaponNames : (preferJewelry ? jewelryNames : armorNames);

        List<QuestGrowthSalvageTinkerRule> candidates = settings.QuestGrowthSalvageRules
            .Where(r => r.Enabled && r.Name != null && targetNames.Any(n => string.Equals(n, r.Name, StringComparison.OrdinalIgnoreCase)))
            .ToList();

        if (candidates.Count == 0)
            return false;

        QuestGrowthSalvageTinkerRule rule = candidates[Random.Shared.Next(0, candidates.Count)];
        int value = QuestGrowthSalvageEffectApplier.RollValue(rule);
        bool applied = QuestGrowthSalvageEffectApplier.ApplyEffect(item, rule, value, isFailure: false);
        if (!applied)
            return false;

        summary?.AddSalvage(rule.Name ?? "Enhancement", value);

        string desc = QuestGrowthSalvageEffectApplier.GetEffectDescription(rule, value, isFailure: false);
        if (!string.IsNullOrEmpty(desc))
        {
            if (emitMessages)
                player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and {desc}.");
        }
        else
        {
            string ruleName = string.IsNullOrWhiteSpace(rule.Name) ? "enhancement" : rule.Name!;
            string kind = string.IsNullOrWhiteSpace(rule.EffectKind) ? "effect" : rule.EffectKind!;
            if (emitMessages)
                player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains a {ruleName} {kind} bonus ({value}).");
        }

        return true;
    }
}

