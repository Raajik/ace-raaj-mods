using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;

namespace LivingEquipment;

internal static class ItemAwakener
{
    internal static bool TryAwakenOrUpgrade(Player player, WorldObject item, WorldObject mana, Settings s)
    {
        if (item == null || mana == null || s == null)
            return false;

        int tier = GetTierFromWcid(mana.WeenieClassId, s);
        if (tier == 0)
            return false;

        bool isAwakened = item.GetProperty(LivingEquipmentProperties.IsAwakened) == true;
        int currentTier = item.GetProperty(LivingEquipmentProperties.AwakenedTier) ?? 0;

        if (!isAwakened)
        {
            // Fresh awakening
            return DoAwaken(player, item, tier, s);
        }

        if (tier <= currentTier)
        {
            player.SendTransientError("This item has already been awakened to an equal or higher tier.");
            player.SendUseDoneEvent();
            return false;
        }

        // Upgrade
        return DoUpgrade(player, item, tier, currentTier, s);
    }

    private static bool DoAwaken(Player player, WorldObject item, int tier, Settings s)
    {
        int maxLevel = GetMaxLevelForTier(tier, s);
        if (maxLevel <= 0)
            return false;

        // Store original name
        string originalName = item.Name ?? "Item";
        item.SetProperty(LivingEquipmentProperties.OriginalName, originalName);

        // Assign profile
        var profile = RollProfile(tier, s);
        if (profile != null)
        {
            item.SetProperty(LivingEquipmentProperties.ProfileName, profile.Name);
            item.SetProperty(PropertyInt64.ItemBaseXp, profile.ItemBaseXp);
        }
        else
        {
            item.SetProperty(PropertyInt64.ItemBaseXp, 20000);
        }

        // Set XP tracking properties
        item.SetProperty(PropertyInt.ItemMaxLevel, maxLevel);
        item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);
        item.SetProperty(PropertyInt64.ItemTotalXp, 0);
        item.SetProperty(LivingEquipmentProperties.IsAwakened, true);
        item.SetProperty(LivingEquipmentProperties.AwakenedTier, tier);

        // Tag for EmpyreanAlteration growth engine
        item.SetProperty((PropertyBool)40100, true); // FakeBool.GrowthItem

        // Rename
        ApplyAwakenedName(item, s);

        // Visual effect
        item.UiEffects = (UiEffects)s.AwakenedItemUiEffects;
        player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt(item, PropertyInt.UiEffects, (int)s.AwakenedItemUiEffects));

        // Broadcast all XP/level tracking properties so client examine refreshes
        player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt(item, PropertyInt.ItemMaxLevel, maxLevel));
        player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt(item, PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel));
        player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt64(item, PropertyInt64.ItemTotalXp, 0));
        player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt64(item, PropertyInt64.ItemBaseXp, item.GetProperty(PropertyInt64.ItemBaseXp) ?? 20000));
        player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyString(item, PropertyString.Name, item.Name ?? originalName));

        // Force object description recalculation and broadcast so name/glow changes appear immediately
        item.CalculateObjDesc();
        player.EnqueueBroadcast(new GameMessageUpdateObject(item));

        player.SendMessage($"Your {originalName} awakens with new potential! Maximum level increased to {maxLevel}.", ChatMessageType.Craft);
        player.SendUseDoneEvent();
        return true;
    }

    private static bool DoUpgrade(Player player, WorldObject item, int newTier, int currentTier, Settings s)
    {
        int newMaxLevel = GetMaxLevelForTier(newTier, s);
        int oldMaxLevel = GetMaxLevelForTier(currentTier, s);

        if (newMaxLevel <= oldMaxLevel)
            return false;

        string originalName = item.GetProperty(LivingEquipmentProperties.OriginalName) ?? item.Name ?? "Item";

        item.SetProperty(PropertyInt.ItemMaxLevel, newMaxLevel);
        item.SetProperty(LivingEquipmentProperties.AwakenedTier, newTier);

        // If upgrading from Lesser→Greater or Greater→Aetheric, we might want to change the profile
        // But for now, keep the existing profile and just raise the cap

        player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt(item, PropertyInt.ItemMaxLevel, newMaxLevel));
        player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyString(item, PropertyString.Name, item.Name ?? originalName));
        item.CalculateObjDesc();
        player.EnqueueBroadcast(new GameMessageUpdateObject(item));

        player.SendMessage($"Your {originalName} resonates with greater power! Maximum level increased from {oldMaxLevel} to {newMaxLevel}.", ChatMessageType.Craft);
        player.SendUseDoneEvent();
        return true;
    }

    internal static void ApplyAwakenedName(WorldObject item, Settings s)
    {
        string originalName = item.GetProperty(LivingEquipmentProperties.OriginalName) ?? item.Name ?? "Item";
        string materialName = GetMaterialName(item);

        string newName;
        if (!string.IsNullOrEmpty(materialName) && originalName.StartsWith(materialName, StringComparison.OrdinalIgnoreCase))
        {
            newName = s.AwakenedPrefix + originalName.Substring(materialName.Length);
        }
        else
        {
            newName = s.AwakenedPrefix + " " + originalName;
        }

        item.SetProperty(PropertyString.Name, newName);
    }

    private static string GetMaterialName(WorldObject item)
    {
        var materialType = item.GetProperty(PropertyInt.MaterialType);
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

    private static int GetTierFromWcid(uint wcid, Settings s)
    {
        if (wcid == s.LesserCoalescedManaWcid) return 1;
        if (wcid == s.GreaterCoalescedManaWcid) return 2;
        if (wcid == s.AethericCoalescedManaWcid) return 3;
        return 0;
    }

    /// <summary>
    /// Auto-awakens an item to Tier 1 (Lesser) with the Casual profile for easy leveling.
    /// Used for Academy starter weapons and similar quest items.
    /// </summary>
    internal static bool TryAutoAwaken(Player? player, WorldObject item, Settings s)
    {
        if (item == null || s == null)
            return false;

        if (item.GetProperty(LivingEquipmentProperties.IsAwakened) == true)
            return false; // Already awakened

        if (!IsEquippableGear(item))
            return false;

        int maxLevel = s.LesserMaxLevel; // Tier 1 = 25
        if (maxLevel <= 0)
            return false;

        string originalName = item.Name ?? "Item";
        item.SetProperty(LivingEquipmentProperties.OriginalName, originalName);

        // Always use Casual profile for auto-awakened items (fastest/easiest leveling)
        var profile = s.XpProfiles.FirstOrDefault(p => p.Name == "Casual");
        if (profile != null)
        {
            item.SetProperty(LivingEquipmentProperties.ProfileName, profile.Name);
            item.SetProperty(PropertyInt64.ItemBaseXp, profile.ItemBaseXp);
        }
        else
        {
            item.SetProperty(PropertyInt64.ItemBaseXp, 8000); // Casual default
        }

        item.SetProperty(PropertyInt.ItemMaxLevel, maxLevel);
        item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);
        item.SetProperty(PropertyInt64.ItemTotalXp, 0);
        item.SetProperty(LivingEquipmentProperties.IsAwakened, true);
        item.SetProperty(LivingEquipmentProperties.AwakenedTier, 1);
        item.SetProperty((PropertyBool)40100, true); // FakeBool.GrowthItem

        ApplyAwakenedName(item, s);
        item.UiEffects = (UiEffects)s.AwakenedItemUiEffects;

        if (player != null)
        {
            player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt(item, PropertyInt.UiEffects, (int)s.AwakenedItemUiEffects));
            player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt(item, PropertyInt.ItemMaxLevel, maxLevel));
            player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt(item, PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel));
            player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt64(item, PropertyInt64.ItemTotalXp, 0));
            player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyInt64(item, PropertyInt64.ItemBaseXp, item.GetProperty(PropertyInt64.ItemBaseXp) ?? 8000));
            player.EnqueueBroadcast(new GameMessagePublicUpdatePropertyString(item, PropertyString.Name, item.Name ?? originalName));
            item.CalculateObjDesc();
            player.EnqueueBroadcast(new GameMessageUpdateObject(item));
            player.SendMessage($"Your {originalName} resonates with living potential! Maximum level increased to {maxLevel}.", ChatMessageType.Craft);
        }

        if (s.Verbose)
            ModManager.Log($"[LivingEquipment] Auto-awakened {originalName} → {item.Name} (tier 1, max {maxLevel}, Casual)", ModManager.LogLevel.Info);

        return true;
    }

    internal static int GetMaxLevelForTier(int tier, Settings s)
    {
        return tier switch
        {
            1 => s.LesserMaxLevel,
            2 => s.GreaterMaxLevel,
            3 => s.AethericMaxLevel,
            _ => 0
        };
    }

    private static XpProfile? RollProfile(int tier, Settings s)
    {
        List<float> weights = tier switch
        {
            1 => s.LesserProfileWeights,
            2 => s.GreaterProfileWeights,
            3 => s.AethericProfileWeights,
            _ => s.LesserProfileWeights
        };

        if (weights == null || weights.Count == 0 || s.XpProfiles == null || s.XpProfiles.Count == 0)
            return null;

        float total = 0;
        for (int i = 0; i < weights.Count && i < s.XpProfiles.Count; i++)
            total += weights[i];

        if (total <= 0)
            return s.XpProfiles[0];

        float roll = (float)new Random().NextDouble() * total;
        float cumulative = 0;

        for (int i = 0; i < weights.Count && i < s.XpProfiles.Count; i++)
        {
            cumulative += weights[i];
            if (roll <= cumulative)
                return s.XpProfiles[i];
        }

        return s.XpProfiles[^1];
    }

    internal static bool IsEquippableGear(WorldObject item)
    {
        if (item == null)
            return false;

        // Weapons
        if (item.WeenieType == WeenieType.MeleeWeapon ||
            item.WeenieType == WeenieType.MissileLauncher ||
            item.WeenieType == WeenieType.Caster)
            return true;

        // Clothing/Armor with valid locations
        if (item.ValidLocations != null && item.ValidLocations != 0)
            return true;

        // Generic items that can be equipped
        if (item.ItemType == ItemType.Clothing ||
            item.ItemType == ItemType.Armor ||
            item.ItemType == ItemType.Jewelry)
            return true;

        return false;
    }

    internal static bool IsCoalescedMana(WorldObject item, Settings s)
    {
        if (item == null)
            return false;

        return item.WeenieClassId == s.LesserCoalescedManaWcid ||
               item.WeenieClassId == s.GreaterCoalescedManaWcid ||
               item.WeenieClassId == s.AethericCoalescedManaWcid;
    }
}
