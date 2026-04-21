using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.Json;
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

namespace BetterChestLoot;

/// <summary>
/// The main patch class for the BetterChestLoot mod.
/// </summary>
[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    internal static Settings Settings 
    {
        get
        {
            try 
            {
                var settingsPath = Path.Combine(Mod.ModPath, "Settings.json");
                if (File.Exists(settingsPath))
                {
                    var json = File.ReadAllText(settingsPath);
                    return System.Text.Json.JsonSerializer.Deserialize<Settings>(json) ?? s_settings;
                }
            }
            catch { }
            return s_settings;
        }
    }
    private static Settings s_settings = new Settings();
    internal static LootConfig? LootConfig;
    
public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
    }

    public override void Start()
    {
        base.Start();
    }

    public override async Task OnStartSuccess()
    {
        await base.OnStartSuccess();
        LoadLootConfig();
    }

    private void LoadLootConfig()
    {
        try
        {
            var configPath = Path.Combine(Mod.ModPath, "LootConfig.json");
            if (File.Exists(configPath))
            {
                var json = File.ReadAllText(configPath);
                LootConfig = JsonSerializer.Deserialize<LootConfig>(json);
                var commonCount = LootConfig?.common?.items?.Count ?? 0;
                var uncommonCount = LootConfig?.uncommon?.items?.Count ?? 0;
                var rareCount = LootConfig?.rare?.items?.Count ?? 0;
                var extremelyRareCount = LootConfig?.extremelyRare?.items?.Count ?? 0;
                ModManager.Log($"BetterChestLoot: Loaded LootConfig.json with {commonCount} common, {uncommonCount} uncommon, {rareCount} rare, {extremelyRareCount} extremely rare items", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log($"BetterChestLoot: LootConfig.json not found at {configPath}, using defaults", ModManager.LogLevel.Warn);
                LootConfig = GetDefaultLootConfig();
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterChestLoot: Error loading LootConfig.json: {ex}", ModManager.LogLevel.Error);
            LootConfig = GetDefaultLootConfig();
        }
    }

    private static LootConfig GetDefaultLootConfig()
    {
        return new LootConfig
        {
            common = new LootCategory
            {
                items = new List<LootItem>
                {
                    new() { wcid = 2626, name = "Trade Note (50,000)", stackSize = 1 },
                    new() { wcid = 2627, name = "Trade Note (100,000)", stackSize = 1 },
                    new() { wcid = 7377, name = "Trade Note (75,000)", stackSize = 1 },
                    new() { wcid = 20628, name = "Trade Note (150,000)", stackSize = 1 },
                    new() { wcid = 20629, name = "Trade Note (200,000)", stackSize = 1 },
                    new() { wcid = 20630, name = "Trade Note (250,000)", stackSize = 1 },
                    new() { wcid = 6058, name = "Dark Shard", stackSize = 1 },
                    new() { wcid = 6059, name = "Dark Sliver", stackSize = 1 },
                    new() { wcid = 6060, name = "Dark Speck", stackSize = 1 },
                    new() { wcid = 6055, name = "Cracked Shard", stackSize = 1 },
                    new() { wcid = 6056, name = "Small Shard", stackSize = 1 },
                    new() { wcid = 6057, name = "Tiny Shard", stackSize = 1 },
                    new() { wcid = 6353, name = "Pyreal Mote", stackSize = 1 },
                    new() { wcid = 6355, name = "Pyreal Sliver", stackSize = 1 },
                    new() { wcid = 6876, name = "Sturdy Iron Key", stackSize = 1 },
                    new() { wcid = 45876, name = "Scarlet Red Letter", stackSize = 1 },
                    new() { wcid = 45875, name = "Lucky Gold Letter", stackSize = 1 },
                    new() { wcid = 44711, name = "Lesser Stamina Kit", stackSize = 1 },
                    new() { wcid = 44713, name = "Lesser Mana Kit", stackSize = 1 }
                },
                stackSizeChance = 0.2
            },
            uncommon = new LootCategory
            {
                items = new List<LootItem>
                {
                    new() { wcid = 22449, name = "Plentiful Healing Kit", stackSize = 1 },
                    new() { wcid = 30252, name = "Medicated Stamina Kit", stackSize = 1 },
                    new() { wcid = 44714, name = "Greater Stamina Kit", stackSize = 1 },
                    new() { wcid = 30251, name = "Medicated Mana Kit", stackSize = 1 },
                    new() { wcid = 44712, name = "Greater Mana Kit", stackSize = 1 },
                    new() { wcid = 6624, name = "Shadow Fragment", stackSize = 1 },
                    new() { wcid = 6623, name = "Crystal Fragment", stackSize = 1 },
                    new() { wcid = 6622, name = "Sparkling Gem", stackSize = 1 },
                    new() { wcid = 6354, name = "Pyreal Nugget", stackSize = 1 }
                }
            },
            rare = new LootCategory
            {
                items = new List<LootItem>
                {
                    new() { wcid = 30183, name = "Alchemist's Crystal", stackSize = 1 },
                    new() { wcid = 30184, name = "Scholar's Crystal", stackSize = 1 },
                    new() { wcid = 30186, name = "Smithy's Crystal", stackSize = 1 },
                    new() { wcid = 30187, name = "Hunter's Crystal", stackSize = 1 },
                    new() { wcid = 30188, name = "Observer's Crystal", stackSize = 1 },
                    new() { wcid = 30189, name = "Thorsten's Crystal", stackSize = 1 },
                    new() { wcid = 30194, name = "Elysa's Crystal", stackSize = 1 },
                    new() { wcid = 30195, name = "Chef's Crystal", stackSize = 1 },
                    new() { wcid = 30197, name = "Enchanter's Crystal", stackSize = 1 },
                    new() { wcid = 30198, name = "Oswald's Crystal", stackSize = 1 },
                    new() { wcid = 30199, name = "Deceiver's Crystal", stackSize = 1 },
                    new() { wcid = 30205, name = "Fletcher's Crystal", stackSize = 1 },
                    new() { wcid = 30209, name = "Physician's Crystal", stackSize = 1 },
                    new() { wcid = 30214, name = "Artificer's Crystal", stackSize = 1 },
                    new() { wcid = 30215, name = "Tinker's Crystal", stackSize = 1 },
                    new() { wcid = 30216, name = "Vaulter's Crystal", stackSize = 1 },
                    new() { wcid = 30217, name = "Monarch's Crystal", stackSize = 1 },
                    new() { wcid = 30218, name = "Life Giver's Crystal", stackSize = 1 },
                    new() { wcid = 30221, name = "Thief's Crystal", stackSize = 1 },
                    new() { wcid = 30222, name = "Adherent's Crystal", stackSize = 1 },
                    new() { wcid = 30224, name = "Resister's Crystal", stackSize = 1 },
                    new() { wcid = 30225, name = "Imbuer's Crystal", stackSize = 1 },
                    new() { wcid = 30226, name = "Converter's Crystal", stackSize = 1 },
                    new() { wcid = 30228, name = "Evader's Crystal", stackSize = 1 },
                    new() { wcid = 30229, name = "Dodger's Crystal", stackSize = 1 },
                    new() { wcid = 30233, name = "Zefir's Crystal", stackSize = 1 },
                    new() { wcid = 30242, name = "Ben Ten's Crystal", stackSize = 1 },
                    new() { wcid = 30245, name = "Hieromancer's Crystal", stackSize = 1 },
                    new() { wcid = 30246, name = "Artist's Crystal", stackSize = 1 },
                    new() { wcid = 30094, name = "Foolproof Aquamarine", stackSize = 1 },
                    new() { wcid = 30095, name = "Foolproof Black Garnet", stackSize = 1 },
                    new() { wcid = 30096, name = "Foolproof Black Opal", stackSize = 1 },
                    new() { wcid = 30097, name = "Foolproof Emerald", stackSize = 1 },
                    new() { wcid = 30098, name = "Foolproof Fire Opal", stackSize = 1 },
                    new() { wcid = 30099, name = "Foolproof Imperial Topaz", stackSize = 1 },
                    new() { wcid = 30100, name = "Foolproof Jet", stackSize = 1 },
                    new() { wcid = 30101, name = "Foolproof Peridot", stackSize = 1 },
                    new() { wcid = 30102, name = "Foolproof Red Garnet", stackSize = 1 },
                    new() { wcid = 30103, name = "Foolproof Sunstone", stackSize = 1 },
                    new() { wcid = 30104, name = "Foolproof White Sapphire", stackSize = 1 },
                    new() { wcid = 30105, name = "Foolproof Yellow Topaz", stackSize = 1 },
                    new() { wcid = 30106, name = "Foolproof Zircon", stackSize = 1 },
                    new() { wcid = 6621, name = "Scintillating Gem", stackSize = 1 },
                    new() { wcid = 6329, name = "Pyreal Bar", stackSize = 1 },
                    new() { wcid = 6331, name = "Quality Pyreal Ingot", stackSize = 1 },
                    new() { wcid = 52739, name = "Gauntlet Stamina Kit", stackSize = 1 },
                    new() { wcid = 52738, name = "Gauntlet Mana Kit", stackSize = 1 }
                }
            },
            extremelyRare = new LootCategory
            {
                items = new List<LootItem>
                {
                    new() { wcid = 30247, name = "Eternal Health Kit", stackSize = 1 },
                    new() { wcid = 30249, name = "Eternal Stamina Kit", stackSize = 1 },
                    new() { wcid = 30248, name = "Eternal Mana Kit", stackSize = 1 },
                    new() { wcid = 30254, name = "Eternal Mana Charge", stackSize = 1 },
                    new() { wcid = 30253, name = "Limitless Lockpick", stackSize = 1 },
                    new() { wcid = 30092, name = "Infinite Ivory", stackSize = 1 },
                    new() { wcid = 30093, name = "Infinite Leather", stackSize = 1 },
                    new() { wcid = 30110, name = "Infinite Elaborate Dried Rations", stackSize = 1 },
                    new() { wcid = 30111, name = "Infinite Simple Dried Rations", stackSize = 1 },
                    new() { wcid = 30133, name = "Rune of Dispel", stackSize = 1 },
                    new() { wcid = 30936, name = "Pack", stackSize = 1 }
                }
            }
        };
    }

    public override async Task OnWorldOpen()
    {
        await base.OnWorldOpen();
    }

    public override void Stop()
    {
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
        if (!s_settings.Enabled)
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
            ModManager.Log($"BetterChestLoot: Error in PostSelectAProfile: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Hook into chest reset to add guaranteed items on respawn.
    /// Skip locked/keyed chests.
    /// </summary>
    [HarmonyPatch(typeof(Chest), nameof(Chest.Reset))]
    [HarmonyPostfix]
    public static void PostChestReset(double? resetTimestamp, Chest __instance)
    {
        if (!s_settings.Enabled)
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

            // Add guaranteed items on reset
            AddGuaranteedItemsToChest(__instance);
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterChestLoot: Error in PostChestReset: {ex}", ModManager.LogLevel.Error);
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
        if (!s_settings.Enabled)
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
            ModManager.Log($"BetterChestLoot: Error in PostChestClose: {ex}", ModManager.LogLevel.Error);
        }
    }


    /// <summary>
    /// Adds guaranteed items to a chest based on configuration.
    /// </summary>
    private static void AddGuaranteedItemsToChest(Chest chest)
    {
        int numItemsToAdd = GetRandomNumberOfItems();
        if (numItemsToAdd <= 0)
            return;

        for (int i = 0; i < numItemsToAdd; i++)
        {
            WorldObject? itemToAdd = SelectRandomGuaranteedItem(chest);
            
            if (itemToAdd != null)
            {
                bool added = chest.TryAddToInventory(itemToAdd);
                
                if (added && s_settings.EnableDebugLogging)
                {
                    ModManager.Log($"BetterChestLoot: Added {itemToAdd.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
                }
            }
        }
    }

    /// <summary>
    /// Gets a random number of guaranteed items to add (1-max guaranteed items).
    /// Range: 1 to MaxGuaranteedItems (default 1-3)
    /// </summary>
    private static int GetRandomNumberOfItems()
    {
        // Random between 1 and MaxGuaranteedItems
        return ThreadSafeRandom.Next(1, Settings.MaxGuaranteedItems + 1);
    }

    /// <summary>
    /// Determines if a chest is within the configured tier range.
    /// </summary>
    private static bool IsChestInTierRange(Chest chest)
    {
        // For now, we'll apply to all chests in range
        // In the future, we could check chest properties to determine tier
        return true;
    }

    /// <summary>
    /// Selects a random guaranteed item based on rarity chances.
    /// </summary>
    private static WorldObject? SelectRandomGuaranteedItem(Chest chest)
    {
        var lootConfig = LootConfig ?? GetDefaultLootConfig();

        // Determine which rarity to use
        double roll = ThreadSafeRandom.Next(0.0f, 1.0f);
        
        LootCategory category;
        string rarityName;
        
        if (roll < Settings.ExtremelyRareChance && lootConfig.extremelyRare.items.Count > 0)
        {
            category = lootConfig.extremelyRare;
            rarityName = "extremely rare";
        }
        else if (roll < Settings.ExtremelyRareChance + Settings.RareChance && lootConfig.rare.items.Count > 0)
        {
            category = lootConfig.rare;
            rarityName = "rare";
        }
        else if (roll < Settings.ExtremelyRareChance + Settings.RareChance + Settings.UncommonChance && lootConfig.uncommon.items.Count > 0)
        {
            category = lootConfig.uncommon;
            rarityName = "uncommon";
        }
        else
        {
            category = lootConfig.common;
            rarityName = "common";
        }
        
        return CreateItemFromCategory(category, rarityName);
    }

    /// <summary>
    /// Creates a random item from a loot category.
    /// </summary>
    private static WorldObject? CreateItemFromCategory(LootCategory category, string rarityName)
    {
        if (category.items == null || category.items.Count == 0)
            return null;

        // ACE ThreadSafeRandom.Next(min, max) is inclusive on BOTH ends (see ACE.Common.ThreadSafeRandom).
        // Next(0, Count) can return Count → ArgumentOutOfRangeException on the list.
        int lastIndex = category.items.Count - 1;
        int randomIndex = ThreadSafeRandom.Next(0, lastIndex);
        var selectedItem = category.items[randomIndex];

        try
        {
            WorldObject item = WorldObjectFactory.CreateNewWorldObject((uint)selectedItem.wcid);
            if (item != null)
            {
                // Determine stack size based on category config and random chance
                int stackSize = selectedItem.stackSize;
                
                // Check if we should increase stack size based on category config
                if (category.stackSizeChance > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < category.stackSizeChance)
                {
                    // Double the stack size for bonus
                    stackSize *= 2;
                }
                
                item.SetStackSize(stackSize);
                return item;
            }
        }
        catch (Exception ex)
        {
            if (Settings.EnableDebugLogging)
                ModManager.Log($"BetterChestLoot: Error creating {rarityName} item: {ex}", ModManager.LogLevel.Warn);
        }

        return null;
    }
}