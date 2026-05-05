using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Network;
using ACE.Server.WorldObjects;
using HarmonyLib;

using SharedLoot;

namespace BetterLootControl;

/// <summary>
/// The main patch class for the BetterLootControl mod.
/// </summary>
[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    internal static Settings? CurrentSettings;

    // SelectAProfile runs once per generator profile; runed / multi-profile chests call it many times per fill. We add at most one batch (1..MaxGuaranteedItems) and clear on Chest.Reset so the next restock can add again.
    static readonly ConcurrentDictionary<uint, byte> s_bclAppliedThisFill = new();

    static FileSystemWatcher? _lootConfigWatcher;

    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
    }

    public override void Start()
    {
        ModManager.Log("[BetterLoot] Start() called", ModManager.LogLevel.Info);
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        CurrentSettings = Settings;
    }

    public override async Task OnStartSuccess()
    {
        ModManager.Log("[BetterLoot] OnStartSuccess ENTERED", ModManager.LogLevel.Info);
        await base.OnStartSuccess();
        
        Settings = SettingsContainer.Settings ?? new Settings();
        CurrentSettings = Settings;
        
        LoadLootConfig();

        // Debug: check settings
        var vlrEnabled = Settings?.EnableVendorLootRotation ?? false;
        ModManager.Log($"[BetterLoot] OnStartSuccess: EnableVendorLootRotation = {vlrEnabled}", ModManager.LogLevel.Info);

        // Initialize VendorLootRotation
        if (vlrEnabled)
        {
            VendorLootRotation.Initialize(Settings);
            ModManager.Log("BetterLootControl: VendorLootRotation initialized", ModManager.LogLevel.Info);
        }
        else
        {
            ModManager.Log("[BetterLoot] VendorLootRotation is disabled in settings", ModManager.LogLevel.Info);
        }
    }

    private void LoadLootConfig()
    {
        try
        {
            var path = LootConfigPaths.ResolveLootConfigPath(ModManager.ModPath, Settings.LootConfigPath);
            LootConfigStore.TryLoad(path, msg => ModManager.Log(msg, ModManager.LogLevel.Warn), out var cfg);
            if (cfg is not null)
            {
                ModManager.Log(
                    $"BetterLootControl: Loot table — {cfg.common.items.Count} common, {cfg.uncommon.items.Count} uncommon, {cfg.rare.items.Count} rare, {cfg.extremelyRare.items.Count} extremely rare items (from {LootConfigStore.LoadedPath})",
                    ModManager.LogLevel.Info);
            }

            EnsureLootConfigFileWatcher();
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Error loading LootConfig.json: {ex}", ModManager.LogLevel.Error);
            LootConfigStore.TryLoad("", msg => ModManager.Log(msg, ModManager.LogLevel.Warn), out _);
        }
    }

    static void EnsureLootConfigFileWatcher()
    {
        try
        {
            if (_lootConfigWatcher is not null)
                return;

            var resolved = LootConfigPaths.ResolveLootConfigPath(ModManager.ModPath, Settings.LootConfigPath);
            var dir = Path.GetDirectoryName(resolved);
            if (string.IsNullOrEmpty(dir) || !Directory.Exists(dir))
                return;

            _lootConfigWatcher = new FileSystemWatcher(dir)
            {
                Filter = "LootConfig.json",
                NotifyFilter = NotifyFilters.LastWrite | NotifyFilters.Size
            };
            _lootConfigWatcher.Changed += (_, _) =>
            {
                try
                {
                    var path = LootConfigPaths.ResolveLootConfigPath(ModManager.ModPath, Settings.LootConfigPath);
                    LootConfigStore.TryLoad(path, msg => ModManager.Log(msg, ModManager.LogLevel.Warn), out _);
                    ModManager.Log("[BetterLootControl] Reloaded LootConfig.json", ModManager.LogLevel.Info);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"BetterLootControl: Shared loot reload failed: {ex.Message}", ModManager.LogLevel.Warn);
                }
            };
            _lootConfigWatcher.EnableRaisingEvents = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Could not watch loot config folder: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public override async Task OnWorldOpen()
    {
        await base.OnWorldOpen();
    }

    public override void Stop()
    {
        try
        {
            _lootConfigWatcher?.Dispose();
            _lootConfigWatcher = null;
        }
        catch
        {
        }

        base.Stop();
    }

    /// <summary>
    /// Hook into chest loot generation to add guaranteed items.
    /// This runs after the chest has generated its normal loot.
    /// </summary>
    [HarmonyPatch(typeof(ACE.Server.WorldObjects.WorldObject), nameof(ACE.Server.WorldObjects.WorldObject.SelectAProfile))]
    [HarmonyPostfix]
    public static void PostSelectAProfile(WorldObject __instance)
    {
        if (CurrentSettings?.Enabled != true)
            return;

        try
        {
            // Get the chest
            var chest = __instance as Chest;
            if (chest == null)
            {
                return;
            }

            // Check if this chest is in the allowed list
            if (Settings.AllowedChestWCIDs.Count > 0 && !Settings.AllowedChestWCIDs.Contains((int)chest.WeenieClassId))
            {
                return;
            }

            // Check if this chest has any treasure generation profiles
            bool hasTreasure = false;
            if (chest.GeneratorProfiles != null)
            {
                foreach (var profile in chest.GeneratorProfiles)
                {
                    if (profile.RegenLocationType.HasFlag(RegenLocationType.Treasure))
                    {
                        hasTreasure = true;
                        break;
                    }
                }
            }

            if (!hasTreasure)
                return;

            // Add guaranteed items to the chest's inventory
            AddGuaranteedItemsToChest(chest);
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Error in PostSelectAProfile: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Clear the "already added BetterLootControl this fill" flag when the chest resets for a new loot generation.
    /// </summary>
    [HarmonyPatch(typeof(Chest), nameof(Chest.Reset))]
    [HarmonyPrefix]
    public static void PrefixChestReset(double? resetTimestamp, Chest __instance)
    {
        if (__instance is null)
            return;
        s_bclAppliedThisFill.TryRemove(__instance.Guid.Full, out _);
    }

    /// <summary>
    /// After reset, optional interval tweak (first create only).
    /// </summary>
    [HarmonyPatch(typeof(Chest), nameof(Chest.Reset))]
    [HarmonyPostfix]
    public static void PostChestReset(double? resetTimestamp, Chest __instance)
    {
        if (CurrentSettings?.Enabled != true)
            return;

        try
        {
            // Check if this chest is in the allowed list
            if (Settings.AllowedChestWCIDs.Count > 0 && !Settings.AllowedChestWCIDs.Contains((int)__instance.WeenieClassId))
                return;

            // Check if this is a valid chest with treasure
            if (__instance.GeneratorProfiles == null)
                return;

            var treasureProfile = __instance.GeneratorProfiles.FirstOrDefault(p => p.RegenLocationType.HasFlag(RegenLocationType.Treasure));
            if (treasureProfile == null)
                return;

            // Only add items if this is the first generation after a reset
            if (treasureProfile.CurrentCreate > 0)
                return;

            // Set a random reset interval (hardcoded 1-3 seconds for testing)
            double newResetInterval = ThreadSafeRandom.Next(1, 3);
            __instance.ResetInterval = newResetInterval;
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Error in PostChestReset: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Hook into chest close to potentially modify reset behavior.
    /// Skip locked chests and quest chests.
    /// </summary>
    [HarmonyPatch(typeof(Chest), nameof(Chest.Close), new Type[] { typeof(Player) })]
    [HarmonyPostfix]
    public static void PostChestClose(Player player, Chest __instance)
    {
        if (CurrentSettings?.Enabled != true)
            return;

        try
        {
            // Check if this chest is in the allowed list
            if (Settings.AllowedChestWCIDs.Count > 0 && !Settings.AllowedChestWCIDs.Contains((int)__instance.WeenieClassId))
                return;

            // Check if chest has treasure
            if (__instance.GeneratorProfiles == null)
                return;

            var treasureProfile = __instance.GeneratorProfiles.FirstOrDefault(p => p.RegenLocationType.HasFlag(RegenLocationType.Treasure));
            if (treasureProfile == null)
                return;

            // On close, set a random next reset interval
            double newResetInterval = ThreadSafeRandom.Next(1, 3);
            __instance.ResetInterval = newResetInterval;
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Error in PostChestClose: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Adds guaranteed items to a chest based on configuration.
    /// Always adds 1 regular salvage bag. Then rolls 1-3 items from common+ pools.
    /// Then 25% imbue salvage bonus, 5% foolproof imbue salvage bonus, 25% gear bonus.
    /// </summary>
    private static void AddGuaranteedItemsToChest(Chest chest)
    {
        // One batch per loot fill, even when SelectAProfile runs per generator profile (runed chests).
        if (!s_bclAppliedThisFill.TryAdd(chest.Guid.Full, 0))
            return;

        var cfg = LootConfigStore.GetLoadedOrDefault();

        // 1. Guaranteed regular salvage bag (100%)
        WorldObject? salvageItem = LootRoller.TryCreateSalvageItem(cfg);
        if (salvageItem != null)
        {
            bool added = chest.TryAddToInventory(salvageItem);
            if (added && Settings.EnableDebugLogging)
                ModManager.Log($"BetterLootControl: Added salvage {salvageItem.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
        }

        // 2. Random 1-3 items from common+ rarity pools
        int numItemsToAdd = GetRandomNumberOfItems();
        for (int i = 0; i < numItemsToAdd; i++)
        {
            WorldObject? itemToAdd = SelectRandomGuaranteedItem(chest);
            if (itemToAdd != null)
            {
                bool added = chest.TryAddToInventory(itemToAdd);
                if (added && Settings.EnableDebugLogging)
                    ModManager.Log($"BetterLootControl: Added {itemToAdd.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
            }
        }

        // 3. Bonus imbue salvage roll (25% independent)
        WorldObject? imbueItem = LootRoller.TryCreateImbueSalvageItem(cfg);
        if (imbueItem != null)
        {
            bool added = chest.TryAddToInventory(imbueItem);
            if (added && Settings.EnableDebugLogging)
                ModManager.Log($"BetterLootControl: Added imbue salvage {imbueItem.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
        }

        // 4. Bonus foolproof imbue salvage roll (5% independent)
        WorldObject? foolproofItem = LootRoller.TryCreateFoolproofImbueSalvageItem(cfg);
        if (foolproofItem != null)
        {
            bool added = chest.TryAddToInventory(foolproofItem);
            if (added && Settings.EnableDebugLogging)
                ModManager.Log($"BetterLootControl: Added foolproof {foolproofItem.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
        }

        // 5. Bonus gear roll (~25% chance for extra equippable item)
        WorldObject? gearItem = LootRoller.TryCreateGearItem(cfg);
        if (gearItem != null)
        {
            bool added = chest.TryAddToInventory(gearItem);
            if (added && Settings.EnableDebugLogging)
                ModManager.Log($"BetterLootControl: Added bonus gear {gearItem.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
        }
    }

    private static int GetRandomNumberOfItems()
    {
        var s = Settings;
        int count = 1;
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.SecondItemChance)
            count++;
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.ThirdItemChance)
            count++;
        return count;
    }

    private static WorldObject? SelectRandomGuaranteedItem(Chest _)
    {
        return LootRoller.TryCreateRandomItem(LootConfigStore.GetLoadedOrDefault());
    }

    // =====================================================================
    // Vendor Loot Rotation Hook
    // =====================================================================

    /// <summary>
    /// Hook into vendor approach to rotate stock.
    /// Priority: First to ensure our rotation runs before other mods.
    /// </summary>
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.ApproachVendor), new Type[] { typeof(Player), typeof(VendorType), typeof(uint) })]
    [HarmonyPrefix]
    public static void PreApproachVendor(Player player, VendorType action, uint altCurrencySpent, Vendor __instance)
    {
        if (CurrentSettings?.EnableVendorLootRotation != true)
            return;

        VendorLootRotation.OnVendorApproachPrefix(player, action, altCurrencySpent, __instance);
    }
}
