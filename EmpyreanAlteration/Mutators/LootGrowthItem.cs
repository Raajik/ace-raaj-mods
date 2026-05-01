using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Network.GameMessages.Messages;
using EmpyreanAlteration;

namespace EmpyreanAlteration.Mutators;

// LootGrowthItem: initializes loot-generated items with item XP and optional pre-awakened / pre-imbue.
// Also handles quest equipment via TryMutateEmoteGive: guaranteed pre-awaken + workmanship + imbue.
internal class LootGrowthItem : Mutator
{
    public override bool TryMutateLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject item)
    {
        if (!PatchClass.Settings.EnableLootItemLeveling && !PatchClass.Settings.EnableLootItemPreImbue && !PatchClass.Settings.EnableLootItemPreAwaken)
            return false;

        Settings settings = PatchClass.Settings;
        if (ShouldStripVanillaCapOnlyItemLevel(settings, roll, item))
            StripVanillaCapOnlyItemLevel(item);

        // Skip items that already participate in a leveling system.
        if (item.HasItemLevel)
            return false;

        // Skip EmpyreanAlteration GrowthItem mutator items (FakeBool.GrowthItem).
        if (item.GetProperty(FakeBool.GrowthItem) == true)
            return false;

        // Non-empty list filters by WeenieType; null or [] means "any equippable gear shape" (empty JSON [] would
        // otherwise make Contains fail for every item and hide all loot XP bars).
        WeenieType[] eligible = PatchClass.Settings.LootItemLevelingEligibleWeenieTypes;
        if (eligible is { Length: > 0 })
        {
            if (!eligible.Contains(item.WeenieType))
                return false;
        }
        else if (!ItemLevelingEligibility.IsEquippableGearShape(item))
            return false;

        bool mutated = false;

        // Wield requirement cap: tier * 50 so items match their source's difficulty
        ApplyWieldRequirementCap(item, profile.Tier);

        // Pre-awakened roll (LivingEquipment-style profiles) — runs first so it can skip EA's default XP init
        if (PatchClass.Settings.EnableLootItemPreAwaken)
        {
            if (TryPreAwakenLootItem(item, profile.Tier))
                mutated = true;
        }

        // Normal loot item XP init — only if pre-awaken didn't apply
        // NOTE: Standard loot item leveling is disabled — pre-awaken (LivingEquipment profiles)
        // is the only source of item XP on loot. Pre-imbue still runs independently.
        if (!mutated && PatchClass.Settings.EnableLootItemLeveling)
        {
            // Intentionally skipped: EnableLootItemLeveling is kept true in Settings.json only
            // to satisfy the gate check above. Loot items do NOT get standard EA XP curves.
            // Only TryPreAwakenLootItem (above) grants item XP, with LivingEquipment profiles.
            mutated = false;
        }

        // Pre-imbue is independent of awaken status
        if (PatchClass.Settings.EnableLootItemPreImbue)
        {
            if (TryPreImbueLootItem(item))
                mutated = true;
        }

        return mutated;
    }

    static bool ShouldStripVanillaCapOnlyItemLevel(Settings settings, TreasureRoll roll, WorldObject item)
    {
        if (!settings.LootGrowthReplaceVanillaCapWithoutItemXp)
            return false;

        if (!item.HasItemLevel)
            return false;

        if (item.GetProperty(FakeBool.GrowthItem) == true)
            return false;

        if (item.ItemXpStyle == ItemXpStyle.ScalesWithLevel && item.ItemBaseXp.HasValue && item.ItemBaseXp.Value > 0)
            return false;

        bool noItemXpTrack = item.ItemXpStyle != ItemXpStyle.ScalesWithLevel
            && (!item.ItemBaseXp.HasValue || item.ItemBaseXp.Value == 0);

        if (!noItemXpTrack)
            return false;

        if (roll.ItemType == TreasureItemType.Cloak)
            return true;

        if (roll.ItemType == TreasureItemType.Undef
            && item.ValidLocations.HasValue
            && (item.ValidLocations.Value & EquipMask.Cloak) != 0)
            return true;

        return false;
    }

    static void StripVanillaCapOnlyItemLevel(WorldObject item)
    {
        item.ItemMaxLevel = null;
        item.ItemTotalXp = null;
        item.ItemBaseXp = null;
        item.ItemXpStyle = null;
    }

    // Cap wield requirements so loot tiers match the source creature's difficulty.
    // Formula: tier * 50 — tier 1 = 50, tier 2 = 100, tier 3 = 150, etc.
    static void ApplyWieldRequirementCap(WorldObject item, int tier)
    {
        int cap = Math.Clamp(tier, 1, 8) * 50;
        var wieldProps = new[] { PropertyInt.WieldDifficulty, PropertyInt.WieldDifficulty2, PropertyInt.WieldDifficulty3, PropertyInt.WieldDifficulty4 };
        foreach (var prop in wieldProps)
        {
            var diff = item.GetProperty(prop);
            if (diff.HasValue && diff.Value > cap)
                item.SetProperty(prop, cap);
        }
    }

    // ── Pre-awaken (LivingEquipment-style profile) ──────────────────────
    private static bool TryPreAwakenLootItem(WorldObject item, int treasureTier)
    {
        if (item.GetProperty((PropertyBool)40130) == true) // IsAwakened
            return false;

        float chance = PatchClass.Settings.LootItemPreAwakenChance;
        if (chance <= 0) return false;
        if (Random.Shared.NextDouble() > chance / 100.0) return false;

        int tier = RollWeightedIndex(PatchClass.Settings.LootItemPreAwakenTierWeights) + 1;
        var maxLevels = PatchClass.Settings.LootItemPreAwakenMaxLevels;
        if (tier > maxLevels.Count) return false;
        int maxLevel = maxLevels[tier - 1];

        var profiles = PatchClass.Settings.LootItemPreAwakenXpProfiles;
        var profileWeights = PatchClass.Settings.LootItemPreAwakenProfileWeights;
        if (profiles.Count == 0) return false;

        // Roll profile for this tier
        var tierWeights = tier <= profileWeights.Count ? profileWeights[tier - 1] : profileWeights[^1];
        int profileIdx = RollWeightedIndex(tierWeights);
        if (profileIdx >= profiles.Count) profileIdx = 0;
        var profile = profiles[profileIdx];

        string originalName = item.Name ?? "Item";
        item.SetProperty((PropertyString)11033, originalName); // OriginalName

        item.SetProperty((PropertyString)11034, profile.Name); // ProfileName
        item.SetProperty(PropertyInt64.ItemBaseXp, profile.ItemBaseXp);
        item.SetProperty(PropertyInt.ItemMaxLevel, maxLevel);
        item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);
        item.SetProperty(PropertyInt64.ItemTotalXp, 0);
        item.SetProperty((PropertyBool)40130, true); // IsAwakened
        item.SetProperty((PropertyInt)40131, tier); // AwakenedTier
        item.SetProperty(FakeBool.GrowthItem, true);

        // Rename: replace material prefix with "Living"
        string materialName = GetMaterialName(item);
        string prefix = PatchClass.Settings.LootItemPreAwakenPrefix;
        string newName;
        if (!string.IsNullOrEmpty(materialName) && originalName.StartsWith(materialName, StringComparison.OrdinalIgnoreCase))
            newName = prefix + originalName.Substring(materialName.Length);
        else
            newName = prefix + " " + originalName;
        item.SetProperty(PropertyString.Name, newName);
        item.CalculateObjDesc();

        // Visual overlay
        uint uiFx = PatchClass.Settings.LootItemPreAwakenUiEffects;
        item.SetProperty(PropertyInt.UiEffects, (int)uiFx);

        if (PatchClass.Settings.Verbose)
            ModManager.Log($"[EmpyreanAlteration] Pre-awakened drop: {originalName} -> {newName} (tier {tier}, max {maxLevel}, profile {profile.Name})", ModManager.LogLevel.Info);

        return true;
    }

    private static string GetMaterialName(WorldObject item)
    {
        var materialType = item.GetProperty(PropertyInt.MaterialType);
        if (!materialType.HasValue || materialType.Value == 0) return string.Empty;
        try { return ((MaterialType)materialType.Value).ToString(); }
        catch { return string.Empty; }
    }

    private static int RollWeightedIndex(List<float> weights)
    {
        if (weights.Count == 0) return 0;
        float total = 0;
        foreach (var w in weights) total += w;
        if (total <= 0) return 0;
        float roll = (float)Random.Shared.NextDouble() * total;
        float cumulative = 0;
        for (int i = 0; i < weights.Count; i++)
        {
            cumulative += weights[i];
            if (roll <= cumulative) return i;
        }
        return weights.Count - 1;
    }

    // ── Normal loot XP init ─────────────────────────────────────────────
    private static bool TryInitLootItemXp(TreasureDeath profile, TreasureRoll roll, WorldObject item)
    {
        if (item.HasItemLevel)
            return false;

        bool tierBand = PatchClass.Settings.UseTreasureTierItemMaxLevelBand;
        ItemLevelProfile profileSettings;
        if (tierBand)
        {
            (int lo, int hi) = LootTierItemMaxLevel.GetBand(profile.Tier, PatchClass.Settings);
            profileSettings = new ItemLevelProfile(
                PatchClass.Settings.LootItemXpBase,
                PatchClass.Settings.LootItemXpScale,
                lo,
                hi);
        }
        else
        {
            profileSettings = new ItemLevelProfile(
                PatchClass.Settings.LootItemXpBase,
                PatchClass.Settings.LootItemXpScale,
                PatchClass.Settings.LootItemMaxLevelMin,
                PatchClass.Settings.LootItemMaxLevelMax);
        }

        if (!ItemLeveling.ApplyItemLevelProfile(item, profile.Tier, profileSettings, PatchClass.Settings, uniformLootCapRoll: tierBand))
            return false;

        // Ensure item starts at level 0; chaos failures are the sole leveling trigger.
        item.ItemTotalXp = 0;

        item.SetProperty(FakeBool.GrowthItem, true);

        // Tier/category for QuestItemGrowthLevelEngine (WeaponQuestGrowth spell tier, etc.). Do not set QuestGrowthItemBool
        // here: that flag is for quest inventory init and has been observed to break client XP bars on fresh loot.
        // OnItemLevelUp runs catch-up when GrowthItem is true and QuestGrowthTreasureTierInt is set (loot/quest init only).
        item.SetProperty(QuestItemGrowthProperties.QuestItemCategoryInt, (int)item.WeenieType);
        item.SetProperty(QuestItemGrowthProperties.QuestGrowthTreasureTierInt, profile.Tier);

        return true;
    }

    private static bool TryPreImbueLootItem(WorldObject item)
    {
        if (item.ImbuedEffect != 0)
            return false;

        double chance = PatchClass.Settings.LootItemPreImbueChance;
        if (chance <= 0)
            return false;

        if (Random.Shared.NextDouble() > chance)
            return false;

        WeenieType weenieType = item.WeenieType;
        bool isWeapon = weenieType is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster;
        bool isArmor = weenieType is WeenieType.Clothing;
        bool isShield = QuestGrowthItemHelpers.IsShield(item);

        if (isWeapon)
            return TryApplyWeaponSpecial(item);
        if (isArmor || isShield)
            return TryApplyDefenseImbue(item);
        return false;
    }

    // Exclusive weighted pool for weapons — one outcome, no conflicting imbue combos.
    // Weights: Rend 40, SecondaryImbue 25, Slayer 20, Cleave 10, Multistrike 5
    private static bool TryApplyWeaponSpecial(WorldObject item)
    {
        int roll = Random.Shared.Next(100);
        if (roll < 40) return ApplyElementalRend(item);
        if (roll < 65) return ApplySecondaryImbue(item);
        if (roll < 85) return ApplySlayer(item);
        if (roll < 95) return ApplyCleave(item);
        return ApplyMultistrike(item);
    }

    private static readonly (ImbuedEffectType Rend, DamageType DamageType)[] RendPool =
    {
        (ImbuedEffectType.AcidRending,     DamageType.Acid),
        (ImbuedEffectType.BludgeonRending, DamageType.Bludgeon),
        (ImbuedEffectType.ColdRending,     DamageType.Cold),
        (ImbuedEffectType.ElectricRending, DamageType.Electric),
        (ImbuedEffectType.FireRending,     DamageType.Fire),
        (ImbuedEffectType.NetherRending,   DamageType.Nether),
        (ImbuedEffectType.PierceRending,   DamageType.Pierce),
        (ImbuedEffectType.SlashRending,    DamageType.Slash),
    };

    private static bool ApplyElementalRend(WorldObject item)
    {
        var (rend, damageType) = RendPool[Random.Shared.Next(RendPool.Length)];
        item.ImbuedEffect |= rend;
        item.SetProperty(PropertyInt.DamageType, (int)damageType);
        RefreshImbueUiEffects(item);
        return true;
    }

    private static bool ApplySecondaryImbue(WorldObject item)
    {
        ImbuedEffectType[] pool =
        {
            ImbuedEffectType.CriticalStrike,
            ImbuedEffectType.CripplingBlow,
            ImbuedEffectType.ArmorRending,
        };
        item.ImbuedEffect |= pool[Random.Shared.Next(pool.Length)];
        RefreshImbueUiEffects(item);
        return true;
    }

    private static readonly CreatureType[] SlayerPool =
    {
        CreatureType.Deru,
        CreatureType.Drudge,
        CreatureType.Eater,
        CreatureType.Golem,
        CreatureType.Olthoi,
        CreatureType.Shadow,
        CreatureType.Tumerok,
        CreatureType.Tusker,
        CreatureType.Undead,
        CreatureType.Virindi,
    };

    private static bool ApplySlayer(WorldObject item)
    {
        CreatureType target = SlayerPool[Random.Shared.Next(SlayerPool.Length)];
        item.SetProperty(PropertyInt.SlayerCreatureType, (int)target);
        item.SetProperty(PropertyFloat.SlayerDamageBonus, 1.5);
        RefreshImbueUiEffects(item);
        return true;
    }

    private static bool ApplyCleave(WorldObject item)
    {
        int current = item.GetProperty(PropertyInt.Cleaving) ?? 0;
        item.SetProperty(PropertyInt.Cleaving, current + 1);
        RefreshImbueUiEffects(item);
        return true;
    }

    private static bool ApplyMultistrike(WorldObject item)
    {
        int current = item.GetProperty(PropertyInt.LumAugSurgeChanceRating) ?? 0;
        item.SetProperty(PropertyInt.LumAugSurgeChanceRating, current + 1);
        RefreshImbueUiEffects(item);
        return true;
    }

    private static bool TryApplyDefenseImbue(WorldObject item)
    {
        ImbuedEffectType[] pool =
        {
            ImbuedEffectType.MagicDefense,
            ImbuedEffectType.MeleeDefense,
            ImbuedEffectType.MissileDefense,
        };
        item.ImbuedEffect |= pool[Random.Shared.Next(pool.Length)];
        RefreshImbueUiEffects(item);
        return true;
    }

    // ── UiEffects coloring for imbued items ─────────────────────────────
    static void RefreshImbueUiEffects(WorldObject item)
    {
        var imbued = item.ImbuedEffect;
        if (imbued == 0) return;

        int ui = item.GetProperty(PropertyInt.UiEffects) ?? 0;

        // Elemental rends → damage-type color
        if (imbued.HasFlag(ImbuedEffectType.AcidRending))
            ui |= (int)UiEffects.Acid;           // green
        if (imbued.HasFlag(ImbuedEffectType.BludgeonRending))
            ui |= (int)UiEffects.Frost;          // white
        if (imbued.HasFlag(ImbuedEffectType.ColdRending))
            ui |= (int)UiEffects.Frost;          // white
        if (imbued.HasFlag(ImbuedEffectType.ElectricRending))
            ui |= (int)UiEffects.Lightning;      // purple
        if (imbued.HasFlag(ImbuedEffectType.FireRending))
            ui |= (int)UiEffects.Fire;           // red / orange
        if (imbued.HasFlag(ImbuedEffectType.NetherRending))
            ui |= (int)UiEffects.Nether;         // dark purple
        if (imbued.HasFlag(ImbuedEffectType.PierceRending))
            ui |= (int)(UiEffects.BoostHealth | UiEffects.BoostStamina); // red outline in AC client (20)
        if (imbued.HasFlag(ImbuedEffectType.SlashRending))
            ui |= (int)UiEffects.Fire;           // red / orange

        // Defense imbues
        if (imbued.HasFlag(ImbuedEffectType.MagicDefense))
            ui |= (int)UiEffects.Magical;         // blue
        if (imbued.HasFlag(ImbuedEffectType.MeleeDefense))
            ui |= (int)UiEffects.BoostStamina;    // yellow
        if (imbued.HasFlag(ImbuedEffectType.MissileDefense))
            ui |= (int)UiEffects.Lightning;       // purple

        // Secondary weapon imbues (CS/CB/AR) — add magical blue if no element already set
        if (imbued.HasFlag(ImbuedEffectType.CriticalStrike)
            || imbued.HasFlag(ImbuedEffectType.CripplingBlow)
            || imbued.HasFlag(ImbuedEffectType.ArmorRending))
        {
            if ((ui & ~1) == 0) // only magical or nothing
                ui |= (int)UiEffects.Magical;
        }

        // Slayer — purple outline
        if (item.GetProperty(PropertyInt.SlayerCreatureType).HasValue)
            ui |= (int)UiEffects.Lightning;

        // Elemental rends get icon underlay priority over secondary imbues
        if (imbued == 0) return;

        if (imbued.HasFlag(ImbuedEffectType.AcidRending))        item.IconUnderlayId = 0x06003355;
        else if (imbued.HasFlag(ImbuedEffectType.BludgeonRending)) item.IconUnderlayId = 0x0600335a;
        else if (imbued.HasFlag(ImbuedEffectType.ColdRending))    item.IconUnderlayId = 0x06003353;
        else if (imbued.HasFlag(ImbuedEffectType.ElectricRending)) item.IconUnderlayId = 0x06003354;
        else if (imbued.HasFlag(ImbuedEffectType.FireRending))    item.IconUnderlayId = 0x06003359;
        else if (imbued.HasFlag(ImbuedEffectType.PierceRending))   item.IconUnderlayId = 0x0600335b;
        else if (imbued.HasFlag(ImbuedEffectType.SlashRending))   item.IconUnderlayId = 0x0600335c;
        else if (imbued.HasFlag(ImbuedEffectType.ArmorRending))  item.IconUnderlayId = 0x06003356;
        else if (imbued.HasFlag(ImbuedEffectType.CripplingBlow)) item.IconUnderlayId = 0x06003357;
        else if (imbued.HasFlag(ImbuedEffectType.CriticalStrike)) item.IconUnderlayId = 0x06003358;

        item.SetProperty(PropertyInt.UiEffects, ui);
    }

    // ── Quest equipment (emote give) ────────────────────────────────────
    // Guaranteed pre-awaken + workmanship + imbue for equippable gear received from NPCs.
    public override bool TryMutateEmoteGive(HashSet<Mutation> mutations, WorldObject item, WorldObject giver, Player player)
    {
        if (!ItemLevelingEligibility.IsEquippableGearShape(item))
            return false;

        Settings s = PatchClass.Settings;
        if (!s.Enabled) return false;

        bool mutated = false;

        // Guaranteed pre-awaken (always tier 1 Lesser)
        if (s.EnableLootItemPreAwaken && item.GetProperty((PropertyBool)40130) != true)
        {
            mutated |= TryApplyQuestPreAwaken(item, s);
        }

        // Workmanship so items are tinkerable
        if (s.EnableQuestItemWorkmanship)
        {
            int wm = Random.Shared.Next(s.QuestItemWorkmanshipMin, s.QuestItemWorkmanshipMax + 1);
            if (item.ItemWorkmanship == null || item.ItemWorkmanship < wm)
                item.ItemWorkmanship = wm;
            mutated = true;
        }

        // Guaranteed imbue on weapons
        bool isWeapon = item.WeenieType is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster;
        if (isWeapon)
        {
            mutated |= TryApplyWeaponSpecial(item);
        }

        if (mutated && s.Verbose)
            ModManager.Log($"[EmpyreanAlteration] Quest item pre-awakened: {item.Name} (workmanship {item.ItemWorkmanship})", ModManager.LogLevel.Info);

        return mutated;
    }

    private static bool TryApplyQuestPreAwaken(WorldObject item, Settings s)
    {
        int maxLevel = s.LootItemPreAwakenMaxLevels.Count > 0 ? s.LootItemPreAwakenMaxLevels[0] : 25; // Tier 1 (Lesser)
        var profiles = s.LootItemPreAwakenXpProfiles;

        // Always Casual profile for quest items (easiest leveling)
        var profile = profiles.FirstOrDefault(p => p.Name == "Casual") ?? (profiles.Count > 0 ? profiles[0] : null);
        if (profile == null) return false;

        string originalName = item.Name ?? "Item";
        item.SetProperty((PropertyString)11033, originalName);

        item.SetProperty((PropertyString)11034, profile.Name);
        item.SetProperty(PropertyInt64.ItemBaseXp, profile.ItemBaseXp);
        item.SetProperty(PropertyInt.ItemMaxLevel, maxLevel);
        item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);
        item.SetProperty(PropertyInt64.ItemTotalXp, 0);
        item.SetProperty((PropertyBool)40130, true);
        item.SetProperty((PropertyInt)40131, 1);
        item.SetProperty(FakeBool.GrowthItem, true);

        // Rename
        string materialName = GetMaterialName(item);
        string prefix = s.LootItemPreAwakenPrefix;
        string newName;
        if (!string.IsNullOrEmpty(materialName) && originalName.StartsWith(materialName, StringComparison.OrdinalIgnoreCase))
            newName = prefix + originalName.Substring(materialName.Length);
        else
            newName = prefix + " " + originalName;
        item.SetProperty(PropertyString.Name, newName);
        item.CalculateObjDesc();

        item.SetProperty(PropertyInt.UiEffects, (int)s.LootItemPreAwakenUiEffects);

        return true;
    }
}
