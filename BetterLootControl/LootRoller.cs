using ACE.Common;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using System.Reflection;

namespace SharedLoot;

public static class LootRoller
{
    public static WorldObject? TryCreateRandomItem(LootConfig config)
    {
        if (config is null)
            return null;

        var roll = ThreadSafeRandom.Next(0.0f, 1.0f);

        // Salvage rolls independently with its own chance before the normal rarity chain.
        // Note: BetterLootControl handles guaranteed salvage separately; this method is
        // used by other callers (Loremaster, Lockboxes) that want a single random item.
        if (config.salvage?.items != null && config.salvage.items.Count > 0
            && roll < config.SalvageChance)
        {
            return CreateItemFromCategory(config.salvage);
        }

        LootCategory? category = null;

        // Check each category for valid items - with null checks
        if (config.extremelyRare?.items != null && config.extremelyRare.items.Count > 0
            && roll < config.ExtremelyRareChance)
            category = config.extremelyRare;
        else if (config.rare?.items != null && config.rare.items.Count > 0
            && roll < config.ExtremelyRareChance + config.RareChance)
            category = config.rare;
        else if (config.uncommon?.items != null && config.uncommon.items.Count > 0
            && roll < config.ExtremelyRareChance + config.RareChance + config.UncommonChance)
            category = config.uncommon;
        else if (config.common?.items != null && config.common.items.Count > 0)
            category = config.common;

        if (category is null)
            return null;

        return CreateItemFromCategory(category);
    }

    /// <summary>
    /// Guaranteed regular salvage bag. Always creates one if salvage pool has items.
    /// </summary>
    public static WorldObject? TryCreateSalvageItem(LootConfig config)
    {
        if (config?.salvage?.items == null || config.salvage.items.Count == 0)
            return null;
        return CreateItemFromCategory(config.salvage);
    }

    /// <summary>
    /// Bonus imbue salvage roll. 25% chance independent.
    /// </summary>
    public static WorldObject? TryCreateImbueSalvageItem(LootConfig config)
    {
        if (config?.imbueSalvage?.items == null || config.imbueSalvage.items.Count == 0)
            return null;
        if (ThreadSafeRandom.Next(0.0f, 1.0f) >= config.ImbueSalvageChance)
            return null;
        return CreateItemFromCategory(config.imbueSalvage);
    }

    /// <summary>
    /// Bonus foolproof imbue salvage roll. 5% chance independent.
    /// Foolproof items do NOT stack (they break if stacked).
    /// </summary>
    public static WorldObject? TryCreateFoolproofImbueSalvageItem(LootConfig config)
    {
        if (config?.foolproofImbueSalvage?.items == null || config.foolproofImbueSalvage.items.Count == 0)
            return null;
        if (ThreadSafeRandom.Next(0.0f, 1.0f) >= config.FoolproofImbueSalvageChance)
            return null;
        return CreateItemFromCategory(config.foolproofImbueSalvage);
    }

    /// <summary>
    /// Rolls independently for a bonus gear item (in addition to normal rarity loot).
    /// If EmpyreanAlteration is loaded, item may spawn pre-awakened / pre-imbued.
    /// </summary>
    public static WorldObject? TryCreateGearItem(LootConfig config)
    {
        if (config?.gear?.items == null || config.gear.items.Count == 0)
            return null;

        if (ThreadSafeRandom.Next(0.0f, 1.0f) >= config.GearChance)
            return null;

        var item = CreateItemFromCategory(config.gear);
        if (item != null)
        {
            TryApplyEmpyreanAlteration(item);
            ApplyGearEnhancements(item);
        }

        return item;
    }

    // Selects uniformly from categories at or above `floor` (all with items), then picks a random item within.
    // Falls back to the next lower floor if no category qualifies. Returns null if nothing qualifies.
    public static WorldObject? TryCreateFromMinRarity(LootConfig config, LootRarityFloor floor)
    {
        if (config is null) return null;

        var candidates = new List<LootCategory>();
        if ((int)floor <= (int)LootRarityFloor.Any && config.common?.items?.Count > 0)
            candidates.Add(config.common);
        if ((int)floor <= (int)LootRarityFloor.Uncommon && config.uncommon?.items?.Count > 0)
            candidates.Add(config.uncommon);
        if ((int)floor <= (int)LootRarityFloor.Rare && config.rare?.items?.Count > 0)
            candidates.Add(config.rare);
        if (config.extremelyRare?.items?.Count > 0)
            candidates.Add(config.extremelyRare);

        // Fall back progressively if nothing qualifies at this floor
        if (candidates.Count == 0)
        {
            if (floor > LootRarityFloor.Any)
                return TryCreateFromMinRarity(config, (LootRarityFloor)((int)floor - 1));
            return null;
        }

        var category = candidates[ThreadSafeRandom.Next(0, candidates.Count - 1)];
        return CreateItemFromCategory(category);
    }

    // One weighted bonus item for timed events (sale landblocks, etc.). Dominant common pool;
    // other pools contribute by explicit weights only (no extra GearChance / ImbueSalvageChance rolls).
    public static WorldObject? TryCreateBonusEventLoot(LootConfig config, BonusEventLootWeights options)
    {
        if (config is null || options is null || !options.Enable || options.ProcChance <= 0)
            return null;

        if (ThreadSafeRandom.Next(0.0f, 1.0f) >= options.ProcChance)
            return null;

        var candidates = new List<(double weight, Func<WorldObject?> create)>();

        void ConsiderCategory(double w, LootCategory? cat)
        {
            if (w <= 0 || cat?.items == null || cat.items.Count == 0)
                return;
            candidates.Add((w, () => CreateItemFromCategory(cat)));
        }

        ConsiderCategory(options.CommonWeight, config.common);
        ConsiderCategory(options.UncommonWeight, config.uncommon);
        ConsiderCategory(options.RareWeight, config.rare);
        ConsiderCategory(options.ExtremelyRareWeight, config.extremelyRare);
        ConsiderCategory(options.SalvageWeight, config.salvage);

        if (options.GearWeight > 0 && config.gear?.items != null && config.gear.items.Count > 0)
        {
            candidates.Add((options.GearWeight, () =>
            {
                var item = CreateItemFromCategory(config.gear);
                if (item != null)
                {
                    TryApplyEmpyreanAlteration(item);
                    ApplyGearEnhancements(item);
                }
                return item;
            }));
        }

        ConsiderCategory(options.ImbueSalvageWeight, config.imbueSalvage);
        ConsiderCategory(options.FoolproofImbueSalvageWeight, config.foolproofImbueSalvage);

        double total = 0;
        foreach (var c in candidates)
            total += c.weight;

        if (total <= 0 || candidates.Count == 0)
            return null;

        double r = ThreadSafeRandom.Next(0.0f, 1.0f) * total;
        foreach (var (weight, create) in candidates)
        {
            r -= weight;
            if (r <= 0)
                return create();
        }

        return candidates[^1].create();
    }

    internal static WorldObject? CreateItemFromCategory(LootCategory category)
    {
        if (category.items is null || category.items.Count == 0)
            return null;

        if (category.items.Count == 0)
            return null;

        int randomIndex = ThreadSafeRandom.Next(0, category.items.Count - 1);
        var selectedItem = category.items[randomIndex];

        try
        {
            WorldObject item = WorldObjectFactory.CreateNewWorldObject((uint)selectedItem.wcid);
            if (item is null)
                return null;

            int stackSize;

            // Auto-detect crystals, pearls, jewels for 1-3 stacking
            bool isCrystalPearlOrJewel = item.Name.Contains("Crystal", StringComparison.OrdinalIgnoreCase)
                                      || item.Name.Contains("Pearl", StringComparison.OrdinalIgnoreCase)
                                      || item.Name.Contains("Jewel", StringComparison.OrdinalIgnoreCase)
                                      || item.Name.Contains("Gem", StringComparison.OrdinalIgnoreCase);

            // Foolproof items must NOT stack — they break when stacked
            bool isFoolproof = item.Name.Contains("Foolproof", StringComparison.OrdinalIgnoreCase);

            if (isCrystalPearlOrJewel && !isFoolproof)
            {
                stackSize = ThreadSafeRandom.Next(1, 3);
            }
            else if (selectedItem.stackSizeMin > 0 && selectedItem.stackSizeMax >= selectedItem.stackSizeMin)
            {
                stackSize = ThreadSafeRandom.Next(selectedItem.stackSizeMin, selectedItem.stackSizeMax);
            }
            else
            {
                stackSize = selectedItem.stackSize;
                if (category.stackSizeChance > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < category.stackSizeChance)
                    stackSize *= 2;
            }

            // Drudge charm tiers must stay low-stack for quest turn-ins; do not force 100 stacks.
            // Enable stacking for non-salvage, non-foolproof items when stackSize > 1
            if (stackSize > 1 && !SalvageBagShaper.IsSalvageWcid((uint)selectedItem.wcid) && !isFoolproof
                && !IsDrudgeCharmTierWcid((uint)selectedItem.wcid))
            {
                item.MaxStackSize = 100;
            }

            item.SetStackSize(stackSize);

            // Apply salvage bag shape if this is a salvage WCID
            SalvageBagShaper.ApplyShape(item);

            return item;
        }
        catch
        {
            return null;
        }
    }

    static bool IsDrudgeCharmTierWcid(uint wcid) =>
        wcid is 24835u or 850271u or 850272u or 850273u;

    /// <summary>
    /// Cross-mod bridge: if EmpyreanAlteration is loaded, runs its loot mutator on the item
    /// so it may spawn pre-awakened and/or pre-imbued.
    /// </summary>
    static void TryApplyEmpyreanAlteration(WorldObject item)
    {
        try
        {
            var eaAsm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "EmpyreanAlteration");
            if (eaAsm != null)
            {
                var type = eaAsm.GetType("EmpyreanAlteration.LootMutator");
                if (type != null)
                {
                    var method = type.GetMethod("ApplyToLootItem",
                        System.Reflection.BindingFlags.NonPublic |
                        System.Reflection.BindingFlags.Static);
                    if (method != null)
                    {
                        method.Invoke(null, new object[] { item, 5 });
                        return;
                    }
                }
            }
        }
        catch { /* swallow — EA not present or incompatible */ }
    }

    /// <summary>
    /// Rolls a synthetic tier (1-8) for gear items using the configured weights.
    /// </summary>
    internal static int RollGearTier()
    {
        var s = BetterLootControl.PatchClass.Settings;
        var weights = s.GearTierWeights;
        if (weights == null || weights.Count == 0)
            return ThreadSafeRandom.Next(1, 8);

        double total = 0;
        for (int i = 0; i < weights.Count && i < 8; i++)
            total += weights[i];

        if (total <= 0)
            return ThreadSafeRandom.Next(1, 8);

        var roll = ThreadSafeRandom.Next(0.0f, (float)total);
        double cumulative = 0;
        for (int i = 0; i < weights.Count && i < 8; i++)
        {
            cumulative += weights[i];
            if (roll <= cumulative)
                return i + 1;
        }
        return Math.Min(weights.Count, 8);
    }

    /// <summary>
    /// Applies ratings and/or equipment sets to a gear item based on its synthetic tier.
    /// Called after gear item creation (and after EA mutator, if present).
    /// </summary>
    internal static void ApplyGearEnhancements(WorldObject item)
    {
        if (item == null)
            return;

        var s = BetterLootControl.PatchClass.Settings;
        if (s == null)
            return;

        // Only apply to equippable gear shapes
        if (!IsEquippableGear(item))
            return;

        int tier = RollGearTier();

        // Try to apply Overtinked custom imbues (same 25% chance as vendor loot)
        TryApplyOvertinkedImbue(item);

        // If the item now has an imbue, ensure it also has at least one spell
        // (imbues are magical effects — non-magical items should not be imbued)
        if (item.ImbuedEffect != 0 || (item.GetProperty((PropertyInt)40133) ?? 0) > 0)
        {
            EnsureImbuedItemHasSpells(item);
        }

        // ── Ratings ──
        if (s.EnableLootRatings)
        {
            var chances = s.RatingChancePerTier;
            var mins = s.RatingValueMinPerTier;
            var maxs = s.RatingValueMaxPerTier;
            var types = s.RatingTypes;

            float chance = tier >= 1 && tier <= chances.Count
                ? (float)chances[tier - 1]
                : 0.5f;

            if (ThreadSafeRandom.Next(0.0f, 1.0f) < chance && types != null && types.Count > 0)
            {
                int minVal = tier >= 1 && tier <= mins.Count ? mins[tier - 1] : 1;
                int maxVal = tier >= 1 && tier <= maxs.Count ? maxs[tier - 1] : 3;
                if (minVal > maxVal) (minVal, maxVal) = (maxVal, minVal);

                int rollCount = ThreadSafeRandom.Next(s.RatingRollCountMin, s.RatingRollCountMax);
                var shuffled = types.OrderBy(_ => Random.Shared.Next()).ToList();

                for (int i = 0; i < rollCount && i < shuffled.Count; i++)
                {
                    int value = minVal == maxVal ? minVal : ThreadSafeRandom.Next(minVal, maxVal);
                    ApplyRating(item, shuffled[i], value);
                }
            }
        }

        // ── Equipment Sets ──
        if (s.EnableLootEquipmentSets)
        {
            var setChances = s.EquipmentSetChancePerTier;
            float setChance = tier >= 1 && tier <= setChances.Count
                ? (float)setChances[tier - 1]
                : 0.1f;

            if (ThreadSafeRandom.Next(0.0f, 1.0f) < setChance)
            {
                var setIds = s.EquipmentSetIds;
                if (setIds != null && setIds.Count > 0)
                {
                    int chosenId = setIds[ThreadSafeRandom.Next(0, setIds.Count - 1)];
                    item.SetProperty(PropertyInt.EquipmentSetId, chosenId);
                }
            }
        }
    }

    /// <summary>
    /// If an imbued item has no spells, adds 1-3 random loot spells so the imbue is always
    /// on a magical item. Uses a spell list common to weapons/armor.
    /// </summary>
    static void EnsureImbuedItemHasSpells(WorldObject item)
    {
        // Check if item already has spells (SpellDID or spell book)
        var spellDid = item.GetProperty(PropertyDataId.Spell);
        bool hasSpellDid = spellDid.HasValue && spellDid.Value > 0;
        bool hasSpellBook = item.Biota?.PropertiesSpellBook?.Count > 0;

        if (hasSpellDid || hasSpellBook)
            return;

        // No spells found — add some. Use a compact pool of common loot spells.
        // These are generic weapon/armor spells that ACE loot generation typically adds.
        int[] spellPool =
        {
            // Melee weapon spells
            2714,  // Blood Drinker VI
            2723,  // Heart Seeker VI
            2727,  // Defender VI
            // Armor spells
            2665,  // Bludgeoning Protection VI
            2666,  // Slashing Protection VI
            2663,  // Piercing Protection VI
            2667,  // Acid Protection VI
            2662,  // Flame Protection VI
            2664,  // Frost Protection VI
            2668,  // Lightning Protection VI
            // Caster/jewelry spells
            2645,  // Focus VI
            2646,  // Willpower VI
            2647,  // Coordination VI
            2648,  // Quickness VI
            2649,  // Self VI
            2650,  // Strength VI
            2651,  // Endurance VI
            2815,  // Hermetic Link VI
            2996,  // Moderate Magic Resistance
        };

        int count = ThreadSafeRandom.Next(1, 3);
        var shuffled = spellPool.OrderBy(_ => Random.Shared.Next()).Take(count).ToArray();

        foreach (int spellId in shuffled)
        {
            if (spellId <= 0) continue;
            try
            {
                if (item.Biota == null)
                    continue;
                item.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
                if (!item.Biota.PropertiesSpellBook.ContainsKey(spellId))
                {
                    item.Biota.PropertiesSpellBook[spellId] = 1.0f;
                }
            }
            catch { }
        }

        // Set Magical flag so the blue glow shows
        if (!item.UiEffects.HasValue || !item.UiEffects.Value.HasFlag(UiEffects.Magical))
        {
            item.UiEffects = (item.UiEffects ?? 0) | UiEffects.Magical;
        }
    }

    static bool IsEquippableGear(WorldObject item)
    {
        if (item == null)
            return false;

        var type = item.WeenieType;
        if (type is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster)
            return true;
        if (type == WeenieType.Clothing)
            return true;
        if (item.ValidLocations.HasValue && item.ValidLocations.Value != 0)
            return true;
        return false;
    }

    static void ApplyRating(WorldObject item, string ratingName, int value)
    {
        if (item == null || string.IsNullOrWhiteSpace(ratingName) || value <= 0)
            return;

        try
        {
            // Use reflection to find the WorldObject property by name (e.g., DamageRating, CritDamageRating, etc.)
            // Most ratings are int? properties on WorldObject.
            var prop = typeof(WorldObject).GetProperty(ratingName, BindingFlags.Instance | BindingFlags.Public);
            if (prop != null && prop.PropertyType == typeof(int?))
            {
                int? current = (int?)prop.GetValue(item);
                prop.SetValue(item, (current ?? 0) + value);
                return;
            }

            // Fallback: map known names to PropertyInt and use SetProperty
            PropertyInt? propInt = ratingName switch
            {
                "DamageRating" => PropertyInt.DamageRating,
                "CritDamageRating" => PropertyInt.CritDamageRating,
                "DamageResistRating" => PropertyInt.DamageResistRating,
                "CritDamageResistRating" => PropertyInt.CritDamageResistRating,
                "CritRating" => PropertyInt.CritRating,
                "HealingBoostRating" => PropertyInt.HealingBoostRating,
                "GearMaxHealth" => PropertyInt.GearMaxHealth,
                _ => null
            };

            if (propInt.HasValue)
            {
                int current = item.GetProperty(propInt.Value) ?? 0;
                item.SetProperty(propInt.Value, current + value);
            }
        }
        catch
        {
            // Swallow — bad rating name or property access failure
        }
    }

    /// <summary>
    /// 25% chance to apply Overtinked custom imbues (Hemorrhage, Cleaving, NetherRending, Shatter)
    /// to weapons and jewelry via reflection bridge.
    /// </summary>
    static void TryApplyOvertinkedImbue(WorldObject item)
    {
        if (item == null)
            return;

        // Only apply to weapons and jewelry
        bool isWeapon = item.WeenieType is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster;
        bool isJewelry = item.ItemType.HasFlag(ItemType.Jewelry);

        if (!isWeapon && !isJewelry)
            return;

        // 25% chance for custom Overtinked imbue
        if (ThreadSafeRandom.Next(0.0f, 1.0f) >= 0.25f)
            return;

        try
        {
            var overtinkedAssembly = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "Overtinked");
            if (overtinkedAssembly == null)
                return; // Overtinked not loaded

            var storeType = overtinkedAssembly.GetType("Overtinked.OvertinkedImbueStore");
            var flagsType = overtinkedAssembly.GetType("Overtinked.OvertinkedImbueFlags");

            if (storeType == null || flagsType == null)
                return;

            // Get the Add method: public static void Add(WorldObject target, OvertinkedImbueFlags flags)
            var addMethod = storeType.GetMethod("Add",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(WorldObject), flagsType },
                null);

            if (addMethod == null)
                return;

            // Roll which imbue(s) to apply
            var availableFlags = new[] { 8, 2, 4, 16 }; // Hemorrhage, Cleaving, NetherRending, Shatter
            int chosenFlag = availableFlags[ThreadSafeRandom.Next(0, availableFlags.Length - 1)];

            // Convert int to OvertinkedImbueFlags enum value
            var flagValue = Enum.ToObject(flagsType, chosenFlag);

            // Call OvertinkedImbueStore.Add(item, flags)
            addMethod.Invoke(null, new[] { item, flagValue });
        }
        catch
        {
            // Swallow — Overtinked not present or incompatible
        }
    }
}
