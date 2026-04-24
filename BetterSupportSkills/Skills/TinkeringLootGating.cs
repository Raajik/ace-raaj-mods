using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.TinkeringLootGating))]
internal static class TinkeringLootGating
{
    static readonly EquipMask ArmorLocations =
        EquipMask.HeadWear | EquipMask.ChestWear | EquipMask.AbdomenWear |
        EquipMask.UpperArmWear | EquipMask.LowerArmWear | EquipMask.HandWear |
        EquipMask.UpperLegWear | EquipMask.LowerLegWear | EquipMask.FootWear;

    static readonly EquipMask JewelryLocations =
        EquipMask.FingerWear | EquipMask.WristWearLeft | EquipMask.WristWearRight | EquipMask.NeckWear;

    public static void PostfixGenerateTreasure(Creature __instance, DamageHistoryInfo killer, Corpse corpse, List<WorldObject> __result)
    {
        if (corpse?.Inventory == null || corpse.Inventory.Count == 0)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableTinkeringLootGating != true)
            return;

        var player = killer?.TryGetPetOwnerOrAttacker() as Player;
        if (player == null)
            return;

        bool hasAnyTinkering = HasAnyTinkering(player);

        foreach (var item in corpse.Inventory.Values.ToList())
        {
            if (item.GetProperty(FakeBool.GrowthItem) != true)
                continue;

            if (!hasAnyTinkering)
            {
                StripItemLeveling(item);
                continue;
            }

            var classification = ClassifyItem(item);
            int bonus = GetMatchingSkillBonus(player, classification, settings);
            if (bonus > 0 && item.ItemMaxLevel.HasValue)
            {
                int newMax = item.ItemMaxLevel.Value + bonus;
                item.ItemMaxLevel = newMax;
            }
        }
    }

    static bool HasAnyTinkering(Player player)
    {
        return IsTrainedOrSpec(player, Skill.WeaponTinkering)
            || IsTrainedOrSpec(player, Skill.ArmorTinkering)
            || IsTrainedOrSpec(player, Skill.ItemTinkering)
            || IsTrainedOrSpec(player, Skill.MagicItemTinkering);
    }

    static bool IsTrainedOrSpec(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        return cs != null && cs.AdvancementClass >= SkillAdvancementClass.Trained;
    }

    static bool IsSpecialized(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        return cs != null && cs.AdvancementClass == SkillAdvancementClass.Specialized;
    }

    enum ItemClassification
    {
        Unknown,
        Weapon,
        Armor,
        MagicItem,
        Clothing,
    }

    static ItemClassification ClassifyItem(WorldObject item)
    {
        var wt = item.WeenieType;
        var loc = item.ValidLocations ?? 0;

        if (wt is WeenieType.MeleeWeapon or WeenieType.MissileLauncher)
            return ItemClassification.Weapon;

        if (wt == WeenieType.Caster)
            return ItemClassification.MagicItem;

        if (wt == WeenieType.Clothing)
        {
            if (loc.HasFlag(EquipMask.Shield) || (loc & ArmorLocations) != 0)
                return ItemClassification.Armor;

            if ((loc & JewelryLocations) != 0)
                return ItemClassification.MagicItem;

            return ItemClassification.Clothing;
        }

        return ItemClassification.Unknown;
    }

    static int GetMatchingSkillBonus(Player player, ItemClassification classification, Settings settings)
    {
        Skill? skill = classification switch
        {
            ItemClassification.Weapon => Skill.WeaponTinkering,
            ItemClassification.Armor => Skill.ArmorTinkering,
            ItemClassification.MagicItem => Skill.MagicItemTinkering,
            ItemClassification.Clothing => Skill.ItemTinkering,
            _ => null,
        };

        if (skill == null)
            return 0;

        var gatingSettings = settings.TinkeringLootGating;
        if (gatingSettings == null)
            return 0;

        if (IsSpecialized(player, skill.Value))
            return gatingSettings.MaxLevelBonusSpecialized;

        if (IsTrainedOrSpec(player, skill.Value))
            return gatingSettings.MaxLevelBonusTrained;

        return 0;
    }

    static void StripItemLeveling(WorldObject item)
    {
        item.RemoveProperty(FakeBool.GrowthItem);
        item.ItemXpStyle = null;
        item.ItemBaseXp = null;
        item.ItemTotalXp = null;
        item.ItemMaxLevel = null;
    }
}
