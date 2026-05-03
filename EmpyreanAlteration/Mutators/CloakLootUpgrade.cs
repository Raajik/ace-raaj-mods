using System.Reflection;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Factories.Entity;
using ACE.Server.Factories.Tables;

namespace EmpyreanAlteration.Mutators;

// Post-CreateAndMutateWcid: retail cloaks get Living awaken, optional defense imbue (LootGrowthItem parity), ratings, cloak set, armor cantrips, and no level wield.
internal class CloakLootUpgrade : Mutator
{
    public override bool CheckMutatesLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject? item = null)
    {
        if (item is null || roll is null)
            return false;

        Settings s = PatchClass.Settings;
        if (!s.Enabled || !s.EnableCloakLootUpgrade)
            return false;

        if (!LootGrowthItem.IsCloakRoll(roll, item))
            return false;

        return base.CheckMutatesLoot(mutations, profile, roll, item);
    }

    public override bool TryMutateLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject item)
    {
        Settings s = PatchClass.Settings;
        if (!s.Enabled || !s.EnableCloakLootUpgrade)
            return false;

        if (!LootGrowthItem.IsCloakRoll(roll, item))
            return false;

        int cloakTier = Math.Clamp(item.ItemMaxLevel ?? 1, 1, 5);

        LootGrowthItem.StripVanillaCapOnlyItemLevel(item);

        ClearLevelWield(item);

        int maxLevel = Math.Min(cloakTier * 5, s.ItemLevelingCap);
        if (maxLevel <= 0)
            return false;

        ApplyLivingPreAwakenCloak(item, s, maxLevel);

        LootGrowthItem.TryCloakLootDefenseImbue(item);

        item.EquipmentSetId = CloakChance.RollEquipmentSet();

        ApplyGuaranteedRatings(item, profile, s);

        ApplyRandomCantrips(item, profile, s);

        ClearLevelWield(item);

        item.CalculateObjDesc();

        if (s.Verbose)
            ModManager.Log($"[EmpyreanAlteration] CloakLootUpgrade: {item.Name} tier={cloakTier} maxLevel={maxLevel}", ModManager.LogLevel.Info);

        return true;
    }

    static void ClearLevelWield(WorldObject item)
    {
        item.WieldRequirements = 0;
        item.WieldDifficulty = null;
        item.WieldRequirements2 = 0;
        item.WieldDifficulty2 = null;
        item.WieldRequirements3 = 0;
        item.WieldDifficulty3 = null;
        item.WieldRequirements4 = 0;
        item.WieldDifficulty4 = null;
    }

    static void ApplyLivingPreAwakenCloak(WorldObject item, Settings s, int maxLevel)
    {
        if (item.GetProperty(LivingEquipmentProperties.IsAwakened) == true)
            return;

        var profile = LivingItemAwakener.GetDefaultProfile(s);
        string originalName = item.Name ?? "Item";
        item.SetProperty(LivingEquipmentProperties.OriginalName, originalName);

        if (profile != null)
        {
            item.SetProperty(LivingEquipmentProperties.ProfileName, profile.Name);
            item.SetProperty(PropertyInt64.ItemBaseXp, profile.ItemBaseXp);
            item.SetProperty(LivingEquipmentProperties.ProfileDivisor, profile.Divisor);
            item.SetProperty(LivingEquipmentProperties.ProfilePower, profile.Power);
        }
        else
        {
            item.SetProperty(PropertyInt64.ItemBaseXp, 15);
            item.SetProperty(LivingEquipmentProperties.ProfileDivisor, 8.0);
            item.SetProperty(LivingEquipmentProperties.ProfilePower, 3.2);
        }

        item.SetProperty(PropertyInt.ItemMaxLevel, maxLevel);
        item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);
        item.SetProperty(PropertyInt64.ItemTotalXp, 0);
        item.SetProperty(LivingEquipmentProperties.IsAwakened, true);
        item.SetProperty(LivingEquipmentProperties.AwakenedTier, 0);
        item.SetProperty(LivingEquipmentProperties.CurveVersion, s.ItemXpCurveVersion);
        item.SetProperty(FakeBool.GrowthItem, true);

        string materialName = GetMaterialName(item);
        string prefix = s.LootItemPreAwakenPrefix;
        string newName;
        if (!string.IsNullOrEmpty(materialName) && originalName.StartsWith(materialName, StringComparison.OrdinalIgnoreCase))
            newName = prefix + originalName.Substring(materialName.Length);
        else
            newName = prefix + " " + originalName;
        item.SetProperty(PropertyString.Name, newName);

        uint uiFx = s.LootItemPreAwakenUiEffects;
        item.SetProperty(PropertyInt.UiEffects, (int)uiFx);

        LootGrowthItem.RefreshImbueUiEffects(item);

        AwakenedCloakWeaveXpSeed.EnsureMinimumXpForWeave(item, s);
    }

    static string GetMaterialName(WorldObject item)
    {
        int? materialType = item.GetProperty(PropertyInt.MaterialType);
        if (!materialType.HasValue || materialType.Value == 0)
            return string.Empty;
        try
        {
            return ((MaterialType)materialType.Value).ToString();
        }
        catch
        {
            return string.Empty;
        }
    }

    static void ApplyGuaranteedRatings(WorldObject item, TreasureDeath profile, Settings s)
    {
        var types = s.CloakLootRatingTypes;
        if (types == null || types.Count == 0)
            return;

        int minCount = Math.Max(1, s.CloakLootRatingRollCountMin);
        int maxCount = Math.Max(minCount, s.CloakLootRatingRollCountMax);
        int rollCount = ThreadSafeRandom.Next(minCount, maxCount);

        int minVal = s.CloakLootRatingValueMin;
        int maxVal = Math.Max(minVal, s.CloakLootRatingValueMax);
        if (s.CloakLootRatingScaleByTreasureTier)
        {
            int t = Math.Clamp(profile.Tier, 1, 8);
            maxVal = Math.Min(maxVal + t, 64);
        }

        var shuffled = types.OrderBy(_ => Random.Shared.Next()).ToList();
        for (int i = 0; i < rollCount && i < shuffled.Count; i++)
        {
            int value = minVal == maxVal ? minVal : ThreadSafeRandom.Next(minVal, maxVal);
            ApplyRatingProperty(item, shuffled[i], value);
        }
    }

    static void ApplyRatingProperty(WorldObject item, string ratingName, int value)
    {
        if (string.IsNullOrWhiteSpace(ratingName) || value <= 0)
            return;

        try
        {
            PropertyInfo? prop = typeof(WorldObject).GetProperty(ratingName, BindingFlags.Instance | BindingFlags.Public);
            if (prop != null && prop.PropertyType == typeof(int?))
            {
                int? current = (int?)prop.GetValue(item);
                prop.SetValue(item, (current ?? 0) + value);
                return;
            }

            PropertyInt? propInt = ratingName switch
            {
                "DamageRating" => PropertyInt.DamageRating,
                "CritDamageRating" => PropertyInt.CritDamageRating,
                "DamageResistRating" => PropertyInt.DamageResistRating,
                "CritDamageResistRating" => PropertyInt.CritDamageResistRating,
                "CritRating" => PropertyInt.CritRating,
                "HealingBoostRating" => PropertyInt.HealingBoostRating,
                "GearMaxHealth" => PropertyInt.GearMaxHealth,
                _ => null,
            };

            if (propInt.HasValue)
            {
                int current = item.GetProperty(propInt.Value) ?? 0;
                item.SetProperty(propInt.Value, current + value);
            }
        }
        catch
        {
            // Ignore bad rating names
        }
    }

    static void ApplyRandomCantrips(WorldObject item, TreasureDeath profile, Settings s)
    {
        int minC = Math.Max(1, s.CloakLootCantripCountMin);
        int maxC = Math.Max(minC, s.CloakLootCantripCountMax);
        int target = ThreadSafeRandom.Next(minC, maxC);

        var chosen = new HashSet<SpellId>();
        int attempts = 0;
        int maxAttempts = target * 8;

        while (chosen.Count < target && attempts < maxAttempts)
        {
            attempts++;
            SpellId baseCantrip = ArmorCantrips.Roll();
            if (baseCantrip == SpellId.Undef)
                continue;

            if (!chosen.Add(baseCantrip))
                continue;

            int cantripLevel = CantripChance.RollCantripLevel(profile);
            if (!s.CloakLootAllowLegendaryCantrips)
                cantripLevel = Math.Min(cantripLevel, 3);

            List<SpellId>? levels = SpellLevelProgression.GetSpellLevels(baseCantrip);
            if (levels == null || levels.Count < 4)
            {
                chosen.Remove(baseCantrip);
                continue;
            }

            int idx = Math.Clamp(cantripLevel, 1, 4) - 1;
            SpellId spellId = levels[idx];
            if (spellId == SpellId.Undef)
            {
                for (int j = 0; j < levels.Count; j++)
                {
                    if (levels[j] != SpellId.Undef)
                    {
                        spellId = levels[j];
                        break;
                    }
                }
            }

            if (spellId == SpellId.Undef)
            {
                chosen.Remove(baseCantrip);
                continue;
            }

            item.Biota.GetOrAddKnownSpell((int)spellId, item.BiotaDatabaseLock, out _);
        }
    }
}
