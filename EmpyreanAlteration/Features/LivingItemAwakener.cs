using ACE.Common;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;

namespace EmpyreanAlteration;

/// <summary>
/// Player-driven item awakening via Coalesced Mana consumables.
/// Absorbed from LivingEquipment; manual awakening engine + auto-awaken on inventory entry.
/// Rewritten: all mana tiers raise cap incrementally (+5/+10/+15) up to a hard cap.
/// Item leveling uses a point-based curve (kills/quests) stored per-item.
/// </summary>
internal static class LivingItemAwakener
{
    internal static bool TryAwakenOrUpgrade(Player player, WorldObject item, WorldObject mana)
    {
        if (item == null || mana == null)
            return false;

        var s = PatchClass.Settings;
        if (s == null)
            return false;

        int increase = GetCapIncreaseFromWcid(mana.WeenieClassId, s);
        if (increase == 0)
            return false;

        bool isAwakened = item.GetProperty(LivingEquipmentProperties.IsAwakened) == true;

        if (!isAwakened)
            return DoAwaken(player, item, increase, s);

        return DoUpgrade(player, item, increase, s);
    }

    private static bool DoAwaken(Player player, WorldObject item, int initialCap, Settings s)
    {
        if (initialCap <= 0)
            return false;

        int maxLevel = Math.Min(initialCap, s.ItemLevelingCap);
        if (maxLevel <= 0)
            return false;

        string originalName = item.Name ?? "Item";
        item.SetProperty(LivingEquipmentProperties.OriginalName, originalName);

        var profile = GetDefaultProfile(s);
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
        item.SetProperty(LivingEquipmentProperties.AwakenedTier, 0); // legacy, no longer used
        item.SetProperty(LivingEquipmentProperties.CurveVersion, s.ItemXpCurveVersion);
        item.SetProperty(FakeBool.GrowthItem, true);

        ApplyAwakenedName(item, s);

        uint uiFx = s.LootItemPreAwakenUiEffects;
        item.UiEffects = (UiEffects)uiFx;

        // Refresh any pre-existing imbue visuals
        Mutators.LootGrowthItem.RefreshImbueUiEffects(item);

        ApplyAwakenWorkmanship(item);
        AwakenedSpellBridge.TryRollSpellsOntoItem(item, s);

        SendInventoryPropertyUpdates(player, item, originalName, uiFx, maxLevel);

        player.SendMessage($"Your {originalName} awakens with new potential! Maximum level increased to {maxLevel}.", ChatMessageType.Craft);
        return true;
    }

    private static bool DoUpgrade(Player player, WorldObject item, int increase, Settings s)
    {
        int? currentCap = item.ItemMaxLevel;
        if (!currentCap.HasValue)
            return false;

        int newCap = Math.Min(currentCap.Value + increase, s.ItemLevelingCap);
        if (newCap <= currentCap.Value)
        {
            player.SendTransientError("This item has reached its maximum potential and cannot be enhanced further.");
            player.SendUseDoneEvent();
            return false;
        }

        string originalName = item.GetProperty(LivingEquipmentProperties.OriginalName) ?? item.Name ?? "Item";

        item.SetProperty(PropertyInt.ItemMaxLevel, newCap);

        player.Session.Network.EnqueueSend(new GameMessagePublicUpdatePropertyInt(item, PropertyInt.ItemMaxLevel, newCap));

        player.SendMessage($"Your {originalName} resonates with greater power! Maximum level increased from {currentCap.Value} to {newCap}.", ChatMessageType.Craft);
        return true;
    }

    /// <summary>
    /// Sends individual property update packets directly to the player session for an inventory item.
    /// Uses PrivateUpdate (not PublicUpdate/broadcast) to avoid hourglass on inventory items.
    /// </summary>
    private static void SendInventoryPropertyUpdates(Player player, WorldObject item, string originalName, uint uiFx, int maxLevel)
    {
        player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.UiEffects, (int)uiFx));
        player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.ItemMaxLevel, maxLevel));
        player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel));
        player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt64(item, PropertyInt64.ItemTotalXp, 0));
        player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt64(item, PropertyInt64.ItemBaseXp, item.GetProperty(PropertyInt64.ItemBaseXp) ?? 15));
        player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyString(item, PropertyString.Name, item.Name ?? originalName));

        // If item has an imbue, send that property too so client refreshes icon
        var imbued = item.ImbuedEffect;
        if (imbued != 0)
            player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.ImbuedEffect, (int)imbued));

        var wm = item.GetProperty(PropertyInt.ItemWorkmanship);
        if (wm.HasValue)
            player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.ItemWorkmanship, wm.Value));
        var tink = item.GetProperty(PropertyInt.NumTimesTinkered);
        if (tink.HasValue)
            player.Session.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.NumTimesTinkered, tink.Value));
    }

    static void ApplyAwakenWorkmanship(WorldObject item)
    {
        int? wm = item.GetProperty(PropertyInt.ItemWorkmanship);
        if (!wm.HasValue || wm.Value <= 0)
            item.SetProperty(PropertyInt.ItemWorkmanship, ThreadSafeRandom.Next(1, 10));

        int tink = item.GetProperty(PropertyInt.NumTimesTinkered) ?? 0;
        if (tink <= 0)
            item.SetProperty(PropertyInt.NumTimesTinkered, ThreadSafeRandom.Next(1, 10));
    }

    internal static void ApplyAwakenedName(WorldObject item, Settings s)
    {
        string originalName = item.GetProperty(LivingEquipmentProperties.OriginalName) ?? item.Name ?? "Item";
        string materialName = GetMaterialName(item);
        string prefix = s.ManualAwakenPrefix;

        string newName;
        if (!string.IsNullOrEmpty(materialName) && originalName.StartsWith(materialName, StringComparison.OrdinalIgnoreCase))
            newName = prefix + originalName.Substring(materialName.Length);
        else
            newName = prefix + " " + originalName;

        item.SetProperty(PropertyString.Name, newName);
    }

    private static string GetMaterialName(WorldObject item)
    {
        var materialType = item.GetProperty(PropertyInt.MaterialType);
        if (!materialType.HasValue || materialType.Value == 0)
            return string.Empty;
        try { return ((MaterialType)materialType.Value).ToString(); }
        catch { return string.Empty; }
    }

    private static int GetCapIncreaseFromWcid(uint wcid, Settings s)
    {
        if (wcid == s.LesserCoalescedManaWcid) return 5;
        if (wcid == s.GreaterCoalescedManaWcid) return 10;
        if (wcid == s.AethericCoalescedManaWcid) return 15;
        return 0;
    }

    /// <summary>
    /// Auto-awakens an item with the default profile for easy leveling.
    /// Used for Academy starter weapons and similar quest items.
    /// </summary>
    internal static bool TryAutoAwaken(Player? player, WorldObject item)
    {
        if (item == null)
            return false;

        var s = PatchClass.Settings;
        if (s == null)
            return false;

        if (item.GetProperty(LivingEquipmentProperties.IsAwakened) == true)
            return false;

        if (!ItemLevelingEligibility.IsEquippableGearShape(item))
            return false;

        int maxLevel = Math.Min(5, s.ItemLevelingCap); // auto-awaken starts at +5 cap
        if (maxLevel <= 0)
            return false;

        string originalName = item.Name ?? "Item";
        item.SetProperty(LivingEquipmentProperties.OriginalName, originalName);

        var profile = GetDefaultProfile(s);
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

        ApplyAwakenedName(item, s);

        uint uiFx = s.LootItemPreAwakenUiEffects;
        item.UiEffects = (UiEffects)uiFx;

        ApplyAwakenWorkmanship(item);
        AwakenedSpellBridge.TryRollSpellsOntoItem(item, s);

        if (player != null)
        {
            SendInventoryPropertyUpdates(player, item, originalName, uiFx, maxLevel);
            player.SendMessage($"Your {originalName} resonates with living potential! Maximum level increased to {maxLevel}.", ChatMessageType.Craft);
        }

        if (s.Verbose)
            ModManager.Log($"[EmpyreanAlteration.LivingItem] Auto-awakened {originalName} → {item.Name} (max {maxLevel}, QuickStart)", ModManager.LogLevel.Info);

        return true;
    }

    internal static int GetCapIncreaseFromTier(int tier, Settings s)
    {
        return tier switch
        {
            1 => 5,
            2 => 10,
            3 => 15,
            _ => 0,
        };
    }

    internal static PreAwakenXpProfile? GetDefaultProfile(Settings s)
    {
        var profiles = s.LootItemPreAwakenXpProfiles;
        if (profiles == null || profiles.Count == 0)
            return null;
        return profiles.FirstOrDefault(p => p.Name == s.DefaultXpProfileName) ?? profiles[0];
    }

    internal static bool IsCoalescedMana(WorldObject item, Settings s)
    {
        if (item == null) return false;
        return item.WeenieClassId == s.LesserCoalescedManaWcid
            || item.WeenieClassId == s.GreaterCoalescedManaWcid
            || item.WeenieClassId == s.AethericCoalescedManaWcid;
    }

    // ── Profile-based point curve math (used by QuestItemGrowthHarmony ExperienceSystem patches) ──

    internal static int ComputeLevelFromTotalXp(long totalPoints, long baseXp, double divisor, double power, int maxLevel)
    {
        if (totalPoints <= 0 || baseXp <= 0 || divisor <= 0 || power <= 0)
            return 0;

        long accumulated = 0;
        for (int level = 1; level <= maxLevel; level++)
        {
            double mult = 1.0 + (level / divisor);
            if (mult <= 0) break;
            long levelCost = (long)(baseXp * Math.Pow(mult, power));
            if (levelCost <= 0) levelCost = 1;
            accumulated += levelCost;
            if (accumulated > totalPoints)
                return level - 1;
        }
        return maxLevel;
    }

    internal static ulong ComputeTotalXpForLevel(int targetLevel, long baseXp, double divisor, double power, int maxLevel)
    {
        if (targetLevel <= 0 || baseXp <= 0 || divisor <= 0 || power <= 0)
            return 0;

        long accumulated = 0;
        for (int level = 1; level <= targetLevel && level <= maxLevel; level++)
        {
            double mult = 1.0 + (level / divisor);
            if (mult <= 0) break;
            long levelCost = (long)(baseXp * Math.Pow(mult, power));
            if (levelCost <= 0) levelCost = 1;
            accumulated += levelCost;
        }
        return (ulong)accumulated;
    }

    /// <summary>
    /// When an item's stored CurveVersion is older than the global version, migrate its progress
    /// to the new curve by preserving its current level and rewriting ItemTotalXp to match.
    /// </summary>
    internal static void TryMigrateCurve(WorldObject item, Settings s)
    {
        if (item == null || s == null)
            return;

        int storedVersion = item.GetProperty(LivingEquipmentProperties.CurveVersion) ?? 0;
        if (storedVersion >= s.ItemXpCurveVersion)
            return;

        // Read old parameters
        long baseXp = item.GetProperty(PropertyInt64.ItemBaseXp) ?? 15;
        double divisor = item.GetProperty(LivingEquipmentProperties.ProfileDivisor) ?? 8.0;
        double power = item.GetProperty(LivingEquipmentProperties.ProfilePower) ?? 3.2;
        int maxLevel = item.ItemMaxLevel ?? s.ItemLevelingCap;

        // Compute current level under OLD curve
        long totalPoints = item.GetProperty(PropertyInt64.ItemTotalXp) ?? 0;
        int currentLevel = ComputeLevelFromTotalXp(totalPoints, baseXp, divisor, power, maxLevel);

        // Get new default profile parameters
        var profile = GetDefaultProfile(s);
        long newBase = profile?.ItemBaseXp ?? 15;
        double newDiv = profile?.Divisor ?? 8.0;
        double newPow = profile?.Power ?? 3.2;

        // Compute new total points needed for same level under NEW curve
        ulong newTotal = ComputeTotalXpForLevel(currentLevel, newBase, newDiv, newPow, maxLevel);

        // Write new parameters and XP
        item.SetProperty(PropertyInt64.ItemBaseXp, newBase);
        item.SetProperty(LivingEquipmentProperties.ProfileDivisor, newDiv);
        item.SetProperty(LivingEquipmentProperties.ProfilePower, newPow);
        item.SetProperty(PropertyInt64.ItemTotalXp, (long)newTotal);
        item.SetProperty(LivingEquipmentProperties.CurveVersion, s.ItemXpCurveVersion);

        if (s.Verbose)
            ModManager.Log($"[EmpyreanAlteration] Curve migration for {item.Name}: v{storedVersion}→v{s.ItemXpCurveVersion}, level {currentLevel}, points {totalPoints}→{newTotal}", ModManager.LogLevel.Info);
    }
}
