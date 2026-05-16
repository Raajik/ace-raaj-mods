using ACE.Database;
using ACE.Database.Models.World;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace Swarmed.Features;

/// <summary>
/// Gives CreatureEx special mobs a guaranteed bonus loot package:
/// salvage bags, bumped-tier uncommon+ items, and 2-5 guaranteed special
/// lootgen items that are imbued and/or awakened.
/// </summary>
[HarmonyPatchCategory(nameof(CreatureEx))]
internal static class SpecialCreatureLoot
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure),
        new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance)
    {
        if (corpse == null)
            return;

        var settings = PatchClass.CurrentSettings?.SpecialCreatureLoot;
        if (settings == null || !settings.Enabled)
            return;

        // Only apply to CreatureEx special mobs (FakeInt.CreatureExType = CreatureExType)
        var exType = __instance.GetProperty((PropertyInt)FakeInt.CreatureExType);
        if (!exType.HasValue || exType.Value == 0)
            return;

        int added = 0;

        // --- 1. Guaranteed salvage bags ---
        int salvageCount = ThreadSafeRandom.Next(settings.SalvageCountMin, settings.SalvageCountMax);
        for (int i = 0; i < salvageCount; i++)
        {
            var salvage = GenerateSalvageBag();
            if (salvage != null && corpse.TryAddToInventory(salvage))
                added++;
        }

        // --- 2. Guaranteed uncommon+ items (bumped treasure tier) ---
        int uncommonCount = ThreadSafeRandom.Next(settings.UncommonPlusCountMin, settings.UncommonPlusCountMax);
        for (int i = 0; i < uncommonCount; i++)
        {
            var item = GenerateUncommonPlusItem(__instance, settings);
            if (item != null && corpse.TryAddToInventory(item))
                added++;
        }

        // --- 3. Guaranteed SPECIAL items (forced imbue + awakening) ---
        int specialCount = ThreadSafeRandom.Next(settings.ImbuedCountMin, settings.ImbuedCountMax);
        for (int i = 0; i < specialCount; i++)
        {
            var item = GenerateSpecialItem(__instance, settings);
            if (item != null && corpse.TryAddToInventory(item))
                added++;
        }

        if (added > 0 && killer?.TryGetPetOwnerOrAttacker() is Player player)
        {
            player.SendMessage($"The tyrannical creature yields {added} bonus items!");
        }
    }

    // =====================================================================
    // Salvage
    // =====================================================================

    static WorldObject? GenerateSalvageBag()
    {
        try
        {
            var validSalvage = Player.MaterialSalvage
                .Where(kvp => kvp.Value > 0)
                .Select(kvp => (uint)kvp.Value)
                .ToList();

            if (validSalvage.Count == 0)
                return null;

            uint wcid = validSalvage[ThreadSafeRandom.Next(0, validSalvage.Count - 1)];
            var bag = WorldObjectFactory.CreateNewWorldObject(wcid);
            if (bag == null)
                return null;

            // Use LeyLineLedger withdrawal pattern for consistent bag creation
            // Structure = unit count, ItemWorkmanship = unit count, NumItemsInMaterial = workmanship rating
            bag.Structure = 100;
            bag.ItemWorkmanship = 100;
            bag.NumItemsInMaterial = 10;  // W10 salvage
            bag.Name = "Salvage (100)";

            int baseValue = bag.Value ?? 100;
            int multiplierPercent = ThreadSafeRandom.Next(113, 918);
            bag.Value = Math.Max(1, (int)(baseValue * multiplierPercent / 100.0));
            return bag;
        }
        catch
        {
            return null;
        }
    }

    // =====================================================================
    // Uncommon+ (bumped tier)
    // =====================================================================

    static TreasureDeath? ResolveDeathTreasure(Creature creature, SpecialCreatureLootSettings lootSettings)
    {
        var td = creature.DeathTreasure;
        if (td != null)
            return td;
        if (lootSettings.FallbackDeathTreasureDid == 0)
            return null;
        return DatabaseManager.World.GetCachedDeathTreasure(lootSettings.FallbackDeathTreasureDid);
    }

    static WorldObject? GenerateUncommonPlusItem(Creature creature, SpecialCreatureLootSettings lootSettings)
    {
        var deathTreasure = ResolveDeathTreasure(creature, lootSettings);
        if (deathTreasure == null)
            return null;

        // Bump tier +1 for better quality, cap at 8
        var bumped = CopyTreasureDeath(deathTreasure);
        bumped.Tier = Math.Min(8, bumped.Tier + 1);

        var loot = LootGenerationFactory.CreateRandomLootObjects(bumped);
        return loot.FirstOrDefault();
    }

    // =====================================================================
    // Special (guaranteed imbue + awakening)
    // =====================================================================

    static WorldObject? GenerateSpecialItem(Creature creature, SpecialCreatureLootSettings lootSettings)
    {
        var deathTreasure = ResolveDeathTreasure(creature, lootSettings);
        if (deathTreasure == null)
            return null;

        // Bump tier +2 for high-quality base loot, cap at 8
        var bumped = CopyTreasureDeath(deathTreasure);
        bumped.Tier = Math.Min(8, bumped.Tier + 2);

        var loot = LootGenerationFactory.CreateRandomLootObjects(bumped);
        var item = loot.FirstOrDefault();
        if (item == null)
            return null;

        // Force guaranteed special treatment
        ApplyGuaranteedImbue(item);
        ApplyGuaranteedAwakening(item);
        ApplyImbueVisualEffects(item);

        return item;
    }

    static TreasureDeath CopyTreasureDeath(TreasureDeath original)
    {
        return new TreasureDeath
        {
            TreasureType = original.TreasureType,
            Tier = original.Tier,
            LootQualityMod = original.LootQualityMod,
            UnknownChances = original.UnknownChances,
            ItemChance = original.ItemChance,
            ItemMinAmount = original.ItemMinAmount,
            ItemMaxAmount = original.ItemMaxAmount,
            ItemTreasureTypeSelectionChances = original.ItemTreasureTypeSelectionChances,
            MagicItemChance = original.MagicItemChance,
            MagicItemMinAmount = original.MagicItemMinAmount,
            MagicItemMaxAmount = original.MagicItemMaxAmount,
            MagicItemTreasureTypeSelectionChances = original.MagicItemTreasureTypeSelectionChances,
            MundaneItemChance = original.MundaneItemChance,
            MundaneItemMinAmount = original.MundaneItemMinAmount,
            MundaneItemMaxAmount = original.MundaneItemMaxAmount,
            MundaneItemTypeSelectionChances = original.MundaneItemTypeSelectionChances,
        };
    }

    // =====================================================================
    // Guaranteed Imbue
    // =====================================================================

    static void ApplyGuaranteedImbue(WorldObject item)
    {
        if (item == null)
            return;

        // Imbues are magical effects — only apply to items that already have spells
        if (!HasAnySpell(item))
            return;

        WeenieType wt = item.WeenieType;
        bool isWeapon = wt is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster;
        bool isArmor = wt is WeenieType.Clothing;
        bool isShield = IsShieldItem(item);

        if (isWeapon)
            ApplyWeaponImbue(item);
        else if (isArmor || isShield)
            ApplyArmorImbue(item);
    }

    static void ApplyWeaponImbue(WorldObject item)
    {
        // 60% elemental rend, 40% secondary imbue
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < 0.6f)
            ApplyElementalRend(item);
        else
            ApplySecondaryImbue(item);
    }

    static readonly (ImbuedEffectType Rend, DamageType DamageType)[] RendPool =
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

    static void ApplyElementalRend(WorldObject item)
    {
        // Check if item already has an elemental or physical rending - only one of each allowed
        var elementalRendings = new[] 
        { 
            ImbuedEffectType.AcidRending, 
            ImbuedEffectType.ColdRending, 
            ImbuedEffectType.ElectricRending, 
            ImbuedEffectType.FireRending 
        };
        
        if (item.ImbuedEffect != null && elementalRendings.Any(e => item.ImbuedEffect.HasFlag(e)))
        {
            // Item already has an elemental rending, skip to avoid conflicts
            return;
        }
        
        var (rend, damageType) = RendPool[ThreadSafeRandom.Next(0, RendPool.Length - 1)];
        item.ImbuedEffect |= rend;
        item.SetProperty(PropertyInt.DamageType, (int)damageType);
        UpdateWeaponNameForDamageType(item);
    }

    static void ApplySecondaryImbue(WorldObject item)
    {
        ImbuedEffectType[] pool =
        {
            ImbuedEffectType.CriticalStrike,
            ImbuedEffectType.CripplingBlow,
            ImbuedEffectType.ArmorRending,
        };
        
        // Filter out imbues already on the item
        var available = pool.Where(i => item.ImbuedEffect == null || !item.ImbuedEffect.HasFlag(i)).ToArray();
        
        if (available.Length == 0)
            return; // All secondary imbues already applied
        
        item.ImbuedEffect |= available[ThreadSafeRandom.Next(0, available.Length - 1)];
    }

    static void ApplyArmorImbue(WorldObject item)
    {
        ImbuedEffectType[] pool =
        {
            ImbuedEffectType.MagicDefense,
            ImbuedEffectType.MeleeDefense,
            ImbuedEffectType.MissileDefense,
        };
        
        // Filter out imbues already on the item
        var available = pool.Where(i => item.ImbuedEffect == null || !item.ImbuedEffect.HasFlag(i)).ToArray();
        
        if (available.Length == 0)
            return; // All defense imbues already applied (can have all 3)
        
        item.ImbuedEffect |= available[ThreadSafeRandom.Next(0, available.Length - 1)];
    }

    static bool IsShieldItem(WorldObject item)
    {
        // Shields are classified as Armor in ACE enum; detect by name or icon
        string n = item.Name ?? "";
        return n.Contains("Shield", StringComparison.OrdinalIgnoreCase)
            || n.Contains("Buckler", StringComparison.OrdinalIgnoreCase);
    }

    static void UpdateWeaponNameForDamageType(WorldObject item)
    {
        var damageType = item.GetProperty(PropertyInt.DamageType);
        if (!damageType.HasValue)
            return;

        string typeName = damageType.Value switch
        {
            (int)DamageType.Cold => "Frost",
            (int)DamageType.Fire => "Fire",
            (int)DamageType.Acid => "Acid",
            (int)DamageType.Electric => "Electric",
            (int)DamageType.Pierce => "Pierce",
            (int)DamageType.Slash => "Slash",
            (int)DamageType.Bludgeon => "Bludgeon",
            (int)DamageType.Nether => "Nether",
            _ => ((DamageType)damageType.Value).ToString(),
        };

        string name = item.Name ?? "Item";
        string[] prefixes = { "Frost", "Fire", "Acid", "Electric", "Lightning", "Pierce", "Slash", "Bludgeon", "Nether", "Cold" };
        bool replaced = false;
        foreach (var dp in prefixes)
        {
            if (name.StartsWith(dp + " ", StringComparison.OrdinalIgnoreCase))
            {
                name = typeName + name.Substring(dp.Length);
                replaced = true;
                break;
            }
        }
        if (!replaced)
            name = typeName + " " + name;

        item.SetProperty(PropertyString.Name, name);
    }

    // =====================================================================
    // Guaranteed Awakening (LivingEquipment-style item leveling)
    // =====================================================================

    static void ApplyGuaranteedAwakening(WorldObject item)
    {
        if (item == null)
            return;

        // Skip if already awakened
        if (item.GetProperty((PropertyBool)40130) == true)
            return;

        // Only equippable gear
        if (!IsEquippableGear(item))
            return;

        string originalName = item.Name ?? "Item";
        item.SetProperty((PropertyString)11033, originalName);   // OriginalName
        item.SetProperty((PropertyString)11034, "CreatureEx");     // ProfileName

        // Random cap: 5, 10, or 15
        int[] caps = { 5, 10, 15 };
        int maxLevel = caps[ThreadSafeRandom.Next(0, caps.Length - 1)];

        item.SetProperty(PropertyInt64.ItemBaseXp, 5000);
        item.SetProperty(PropertyInt.ItemMaxLevel, maxLevel);
        item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);
        item.SetProperty(PropertyInt64.ItemTotalXp, 0);
        item.SetProperty((PropertyBool)40130, true);    // IsAwakened
        item.SetProperty((PropertyInt)40131, 0);         // AwakenedTier = Lesser

        // Rename
        string prefix = "Awakened";
        string newName = prefix + " " + originalName;
        item.SetProperty(PropertyString.Name, newName);
        item.CalculateObjDesc();
    }

    static bool IsEquippableGear(WorldObject item)
    {
        if (item == null) return false;
        var weenieType = item.WeenieType;
        if (weenieType is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster or WeenieType.Clothing)
            return true;
        // Jewelry and some shields are Generic with ValidLocations
        if (weenieType == WeenieType.Generic && item.ValidLocations.HasValue && item.ValidLocations.Value != 0)
            return true;
        return false;
    }

    // =====================================================================
    // Visual Effects (IconUnderlay + UiEffects glow)
    // =====================================================================

    // Icon underlay mapping — exact values from ACE RecipeManager.IconUnderlay
    static readonly Dictionary<ImbuedEffectType, uint> IconUnderlayMap = new()
    {
        { ImbuedEffectType.ColdRending,     0x06003353 },
        { ImbuedEffectType.ElectricRending, 0x06003354 },
        { ImbuedEffectType.AcidRending,     0x06003355 },
        { ImbuedEffectType.ArmorRending,    0x06003356 },
        { ImbuedEffectType.CripplingBlow,   0x06003357 },
        { ImbuedEffectType.CriticalStrike,  0x06003358 },
        { ImbuedEffectType.FireRending,     0x06003359 },
        { ImbuedEffectType.BludgeonRending, 0x0600335a },
        { ImbuedEffectType.PierceRending,   0x0600335b },
        { ImbuedEffectType.SlashRending,    0x0600335c },
        { ImbuedEffectType.NetherRending,   0x0600335d },
    };

    // Priority order for icon underlay selection (highest priority first)
    static readonly ImbuedEffectType[] IconUnderlayPriority =
    {
        // Rending imbues first (most visually distinctive)
        ImbuedEffectType.AcidRending,
        ImbuedEffectType.FireRending,
        ImbuedEffectType.ColdRending,
        ImbuedEffectType.ElectricRending,
        ImbuedEffectType.NetherRending,
        ImbuedEffectType.PierceRending,
        ImbuedEffectType.SlashRending,
        ImbuedEffectType.BludgeonRending,
        // Proc imbues second
        ImbuedEffectType.ArmorRending,
        ImbuedEffectType.CriticalStrike,
        ImbuedEffectType.CripplingBlow,
    };

    static void ApplyImbueVisualEffects(WorldObject item)
    {
        if (item?.ImbuedEffect == null || item.ImbuedEffect == 0)
            return;

        try
        {
            int currentEffects = (int)(item.UiEffects ?? 0);
            int visualEffect = 0;

            // Determine visual effect based on imbue type
            if (item.ImbuedEffect.HasFlag(ImbuedEffectType.AcidRending))
                visualEffect = 256; // Acid = green
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.FireRending))
                visualEffect = 32;  // Fire = red
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.ColdRending))
                visualEffect = 128; // Frost = white
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.ElectricRending))
                visualEffect = 64;  // Lightning = purple
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.NetherRending))
                visualEffect = 4096; // Nether = dark purple
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.PierceRending) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.SlashRending) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.BludgeonRending))
                visualEffect = 128; // Physical rendings = white
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.ArmorRending) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.CriticalStrike) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.CripplingBlow))
                visualEffect = 256; // Generic weapon imbues = green
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.MeleeDefense) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.MissileDefense) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.MagicDefense))
                visualEffect = 64;  // Defense imbues = purple

            if (visualEffect != 0)
                item.SetProperty(PropertyInt.UiEffects, currentEffects | visualEffect);

            // Apply icon underlay (background texture) based on imbue priority order
            foreach (var imbueType in IconUnderlayPriority)
            {
                if (item.ImbuedEffect.HasFlag(imbueType) && IconUnderlayMap.TryGetValue(imbueType, out var underlayId))
                {
                    item.IconUnderlayId = underlayId;
                    break;
                }
            }

            // Awakened = red outline (BoostHealth | BoostStamina = 20)
            if (item.GetProperty((PropertyBool)40130) == true)
            {
                int ui = item.GetProperty(PropertyInt.UiEffects) ?? 0;
                item.SetProperty(PropertyInt.UiEffects, ui | (int)(UiEffects.BoostHealth | UiEffects.BoostStamina));
            }

            item.CalculateObjDesc();
        }
        catch (Exception ex)
        {
            // Silently fail - don't break loot generation over cosmetic effects
        }
    }

    /// <summary>
    /// Returns true if the item already has any spells (SpellDID or spell book entries).
    /// Used to gate imbue application — only magical items should receive imbues.
    /// </summary>
    static bool HasAnySpell(WorldObject item)
    {
        if (item == null)
            return false;

        var spellDid = item.GetProperty(PropertyDataId.Spell);
        if (spellDid.HasValue && spellDid.Value > 0)
            return true;

        return item.Biota?.PropertiesSpellBook?.Count > 0;
    }
}
