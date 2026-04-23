using ACE.Entity.Enum;
using EmpyreanAlteration;

namespace EmpyreanAlteration.Mutators;

// LootGrowthItem: initializes loot-generated items with item XP and optional pre-imbues.
internal class LootGrowthItem : Mutator
{
    public override bool TryMutateLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject item)
    {
        if (!PatchClass.Settings.EnableLootItemLeveling && !PatchClass.Settings.EnableLootItemPreImbue)
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

        if (PatchClass.Settings.EnableLootItemLeveling)
        {
            if (TryInitLootItemXp(profile, roll, item))
                mutated = true;
        }

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
        return true;
    }

    private static bool ApplyCleave(WorldObject item)
    {
        int current = item.GetProperty(PropertyInt.Cleaving) ?? 0;
        item.SetProperty(PropertyInt.Cleaving, current + 1);
        return true;
    }

    private static bool ApplyMultistrike(WorldObject item)
    {
        int current = item.GetProperty(PropertyInt.LumAugSurgeChanceRating) ?? 0;
        item.SetProperty(PropertyInt.LumAugSurgeChanceRating, current + 1);
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
        return true;
    }
}
