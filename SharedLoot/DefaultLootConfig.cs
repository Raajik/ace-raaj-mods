namespace SharedLoot;

internal static class DefaultLootConfig
{
    internal static LootConfig Create()
    {
        return new LootConfig
        {
            SalvageChance = 1.0,          // guaranteed regular salvage
            ImbueSalvageChance = 0.25,    // 25% bonus imbue salvage
            FoolproofImbueSalvageChance = 0.05, // 5% bonus foolproof imbue salvage
            GearChance = 0.25,
            GearPreAwakenedChance = 0.10,
            ExtremelyRareChance = 0.0001,
            RareChance = 0.01,
            UncommonChance = 0.1,
            common = new LootCategory
            {
                items = new List<LootItem>
                {
                    new() { wcid = 2621, name = "Trade Note (100)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 2622, name = "Trade Note (500)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 2623, name = "Trade Note (1,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 2624, name = "Trade Note (5,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 2625, name = "Trade Note (10,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 7376, name = "Trade Note (25,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 6058, name = "Dark Shard", stackSize = 1 },
                    new() { wcid = 6059, name = "Dark Sliver", stackSize = 1 },
                    new() { wcid = 6060, name = "Dark Speck", stackSize = 1 },
                    new() { wcid = 6055, name = "Cracked Shard", stackSize = 1 },
                    new() { wcid = 6056, name = "Small Shard", stackSize = 1 },
                    new() { wcid = 6057, name = "Tiny Shard", stackSize = 1 },
                    new() { wcid = 6353, name = "Pyreal Mote", stackSize = 1 },
                    new() { wcid = 6355, name = "Pyreal Sliver", stackSize = 1 },
                    new() { wcid = 6876, name = "Sturdy Iron Key", stackSizeMin = 3, stackSizeMax = 10 },
                    new() { wcid = 24477, name = "Sturdy Steel Key", stackSizeMin = 3, stackSizeMax = 10 },
                    new() { wcid = 45876, name = "Scarlet Red Letter", stackSizeMin = 3, stackSizeMax = 10 },
                    new() { wcid = 45875, name = "Lucky Gold Letter", stackSizeMin = 3, stackSizeMax = 10 },
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
                    new() { wcid = 6354, name = "Pyreal Nugget", stackSize = 1 },
                    new() { wcid = 38456, name = "Mana Forge Key", stackSizeMin = 3, stackSizeMax = 10 },
                    new() { wcid = 850200, name = "Spellsiphon", stackSizeMin = 1, stackSizeMax = 10 }
                }
            },
            salvage = new LootCategory
            {
                items = new List<LootItem>
                {
                    // Non-imbue salvage bags (shaped by SalvageBagShaper)
                    new() { wcid = 20981, name = "Salvaged Armoredillo Hide", stackSize = 1 },
                    new() { wcid = 20982, name = "Salvaged Bronze", stackSize = 1 },
                    new() { wcid = 20983, name = "Salvaged Ceramic", stackSize = 1 },
                    new() { wcid = 20984, name = "Salvaged Gold", stackSize = 1 },
                    new() { wcid = 20985, name = "Salvaged Granite", stackSize = 1 },
                    new() { wcid = 20986, name = "Salvaged Iron", stackSize = 1 },
                    new() { wcid = 20987, name = "Salvaged Linen", stackSize = 1 },
                    new() { wcid = 20988, name = "Salvaged Mahogany", stackSize = 1 },
                    new() { wcid = 20989, name = "Salvaged Oak", stackSize = 1 },
                    new() { wcid = 20990, name = "Salvaged Pine", stackSize = 1 },
                    new() { wcid = 20991, name = "Salvaged Reedshark Hide", stackSize = 1 },
                    new() { wcid = 20992, name = "Salvaged Satin", stackSize = 1 },
                    new() { wcid = 20993, name = "Salvaged Steel", stackSize = 1 },
                    new() { wcid = 20994, name = "Salvaged Velvet", stackSize = 1 },
                    new() { wcid = 20995, name = "Salvaged Wool", stackSize = 1 },
                    new() { wcid = 21035, name = "Salvaged Amber", stackSize = 1 },
                    new() { wcid = 21036, name = "Salvaged Amethyst", stackSize = 1 },
                    new() { wcid = 21042, name = "Salvaged Brass", stackSize = 1 },
                    new() { wcid = 21045, name = "Salvaged Copper", stackSize = 1 },
                    new() { wcid = 21046, name = "Salvaged Diamond", stackSize = 1 },
                    new() { wcid = 21047, name = "Salvaged Ebony", stackSize = 1 },
                    new() { wcid = 21050, name = "Salvaged Green Garnet", stackSize = 1 },
                    new() { wcid = 21051, name = "Salvaged Green Jade", stackSize = 1 },
                    new() { wcid = 21052, name = "Salvaged Gromnie Hide", stackSize = 1 },
                    new() { wcid = 21055, name = "Salvaged Ivory", stackSize = 1 },
                    new() { wcid = 21059, name = "Salvaged Leather", stackSize = 1 },
                    new() { wcid = 21061, name = "Salvaged Marble", stackSize = 1 },
                    new() { wcid = 21062, name = "Salvaged Moonstone", stackSize = 1 },
                    new() { wcid = 21065, name = "Salvaged Opal", stackSize = 1 },
                    new() { wcid = 21067, name = "Salvaged Porcelain", stackSize = 1 },
                    new() { wcid = 21068, name = "Salvaged Pyreal", stackSize = 1 },
                    new() { wcid = 21072, name = "Salvaged Ruby", stackSize = 1 },
                    new() { wcid = 21073, name = "Salvaged Sandstone", stackSize = 1 },
                    new() { wcid = 21074, name = "Salvaged Sapphire", stackSize = 1 },
                    new() { wcid = 21075, name = "Salvaged Serpentine", stackSize = 1 },
                    new() { wcid = 21076, name = "Salvaged Silk", stackSize = 1 },
                    new() { wcid = 21077, name = "Salvaged Silver", stackSize = 1 },
                    new() { wcid = 21080, name = "Salvaged Teak", stackSize = 1 },
                    new() { wcid = 21081, name = "Salvaged Tiger Eye", stackSize = 1 },
                    new() { wcid = 21082, name = "Salvaged Tourmaline", stackSize = 1 },
                    new() { wcid = 21083, name = "Salvaged Turquoise", stackSize = 1 },
                    new() { wcid = 21084, name = "Salvaged White Jade", stackSize = 1 },
                    new() { wcid = 21085, name = "Salvaged White Quartz", stackSize = 1 },
                    new() { wcid = 21087, name = "Salvaged Yellow Garnet", stackSize = 1 }
                }
            },
            imbueSalvage = new LootCategory
            {
                items = new List<LootItem>
                {
                    // Imbue salvage bags (regular versions, shaped by SalvageBagShaper)
                    new() { wcid = 21034, name = "Salvaged Agate", stackSize = 1 },
                    new() { wcid = 21037, name = "Salvaged Aquamarine", stackSize = 1 },
                    new() { wcid = 21038, name = "Salvaged Azurite", stackSize = 1 },
                    new() { wcid = 21039, name = "Salvaged Black Garnet", stackSize = 1 },
                    new() { wcid = 21040, name = "Salvaged Black Opal", stackSize = 1 },
                    new() { wcid = 21041, name = "Salvaged Bloodstone", stackSize = 1 },
                    new() { wcid = 21043, name = "Salvaged Carnelian", stackSize = 1 },
                    new() { wcid = 21044, name = "Salvaged Citrine", stackSize = 1 },
                    new() { wcid = 21048, name = "Salvaged Emerald", stackSize = 1 },
                    new() { wcid = 21049, name = "Salvaged Fire Opal", stackSize = 1 },
                    new() { wcid = 21053, name = "Salvaged Hematite", stackSize = 1 },
                    new() { wcid = 21054, name = "Salvaged Imperial Topaz", stackSize = 1 },
                    new() { wcid = 21056, name = "Salvaged Jet", stackSize = 1 },
                    new() { wcid = 21057, name = "Salvaged Lapis Lazuli", stackSize = 1 },
                    new() { wcid = 21058, name = "Salvaged Lavender Jade", stackSize = 1 },
                    new() { wcid = 21060, name = "Salvaged Malachite", stackSize = 1 },
                    new() { wcid = 21063, name = "Salvaged Obsidian", stackSize = 1 },
                    new() { wcid = 21064, name = "Salvaged Onyx", stackSize = 1 },
                    new() { wcid = 21066, name = "Salvaged Peridot", stackSize = 1 },
                    new() { wcid = 21069, name = "Salvaged Red Garnet", stackSize = 1 },
                    new() { wcid = 21070, name = "Salvaged Red Jade", stackSize = 1 },
                    new() { wcid = 21071, name = "Salvaged Rose Quartz", stackSize = 1 },
                    new() { wcid = 21078, name = "Salvaged Smoky Quartz", stackSize = 1 },
                    new() { wcid = 21079, name = "Salvaged Sunstone", stackSize = 1 },
                    new() { wcid = 21086, name = "Salvaged White Sapphire", stackSize = 1 },
                    new() { wcid = 21088, name = "Salvaged Yellow Topaz", stackSize = 1 },
                    new() { wcid = 21089, name = "Salvaged Zircon", stackSize = 1 }
                }
            },
            foolproofImbueSalvage = new LootCategory
            {
                items = new List<LootItem>
                {
                    // Foolproof imbue salvage (never fails; do NOT stack)
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
                    new() { wcid = 30106, name = "Foolproof Zircon", stackSize = 1 }
                }
            },
            rare = new LootCategory
            {
                items = new List<LootItem>
                {
                    // Crystals (1-3 stackable via LootRoller logic, NOT foolproof)
                    new() { wcid = 30183, name = "Alchemist's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30184, name = "Scholar's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30186, name = "Smithy's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30187, name = "Hunter's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30188, name = "Observer's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30189, name = "Thorsten's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30194, name = "Elysa's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30195, name = "Chef's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30197, name = "Enchanter's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30198, name = "Oswald's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30199, name = "Deceiver's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30205, name = "Fletcher's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30209, name = "Physician's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30214, name = "Artificer's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30215, name = "Tinker's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30216, name = "Vaulter's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30217, name = "Monarch's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30218, name = "Life Giver's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30221, name = "Thief's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30222, name = "Adherent's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30224, name = "Resister's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30225, name = "Imbuer's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30226, name = "Converter's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30228, name = "Evader's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30229, name = "Dodger's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30233, name = "Zefir's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30242, name = "Ben Ten's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30245, name = "Hieromancer's Crystal", stackSizeMin = 1, stackSizeMax = 3 },
                    new() { wcid = 30246, name = "Artist's Crystal", stackSizeMin = 1, stackSizeMax = 3 },

                    // Other rare items
                    new() { wcid = 2626, name = "Trade Note (50,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 7377, name = "Trade Note (75,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 2627, name = "Trade Note (100,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 6621, name = "Scintillating Gem", stackSize = 1 },
                    new() { wcid = 6329, name = "Pyreal Bar", stackSize = 1 },
                    new() { wcid = 6331, name = "Quality Pyreal Ingot", stackSize = 1 },
                    new() { wcid = 52739, name = "Gauntlet Stamina Kit", stackSize = 1 },
                    new() { wcid = 52738, name = "Gauntlet Mana Kit", stackSize = 1 },
                    new() { wcid = 48746, name = "Legendary Key", stackSizeMin = 3, stackSizeMax = 10 }
                }
            },
            extremelyRare = new LootCategory
            {
                items = new List<LootItem>
                {
                    new() { wcid = 20628, name = "Trade Note (150,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 20629, name = "Trade Note (200,000)", stackSizeMin = 1, stackSizeMax = 10 },
                    new() { wcid = 20630, name = "Trade Note (250,000)", stackSizeMin = 1, stackSizeMax = 10 },
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
                    new() { wcid = 30936, name = "Pack", stackSize = 1 },
                    new() { wcid = 46441, name = "Boxed Augmentation Gem", stackSize = 1 }
                }
            },
            gear = new LootCategory
            {
                items = new List<LootItem>
                {
                    // Melee Weapons
                    new() { wcid = 300, name = "Long Sword", stackSize = 1 },
                    new() { wcid = 350, name = "Broad Sword", stackSize = 1 },
                    new() { wcid = 314, name = "Dagger", stackSize = 1 },
                    new() { wcid = 331, name = "Mace", stackSize = 1 },
                    new() { wcid = 348, name = "Spear", stackSize = 1 },
                    new() { wcid = 301, name = "Battle Axe", stackSize = 1 },
                    new() { wcid = 303, name = "Hand Axe", stackSize = 1 },
                    new() { wcid = 352, name = "Short Sword", stackSize = 1 },
                    new() { wcid = 354, name = "Takuba", stackSize = 1 },

                    // Missile Weapons
                    new() { wcid = 306, name = "Longbow", stackSize = 1 },
                    new() { wcid = 307, name = "Shortbow", stackSize = 1 },
                    new() { wcid = 311, name = "Heavy Crossbow", stackSize = 1 },
                    new() { wcid = 312, name = "Light Crossbow", stackSize = 1 },

                    // Casters
                    new() { wcid = 2472, name = "Wand", stackSize = 1 },
                    new() { wcid = 22080, name = "Impious Staff", stackSize = 1 },

                    // Armor
                    new() { wcid = 40, name = "Platemail Breastplate", stackSize = 1 },
                    new() { wcid = 71, name = "Chainmail Hauberk", stackSize = 1 },
                    new() { wcid = 50, name = "Leather Cuirass", stackSize = 1 },
                    new() { wcid = 48, name = "Studded Leather Coat", stackSize = 1 },
                    new() { wcid = 91, name = "Kite Shield", stackSize = 1 },
                    new() { wcid = 93, name = "Round Shield", stackSize = 1 },
                    new() { wcid = 95, name = "Tower Shield", stackSize = 1 },

                    // Jewelry / Special
                    new() { wcid = 14452, name = "Elysa's Favor", stackSize = 1 },
                    new() { wcid = 7886, name = "Baron's Amulet of Life Giving", stackSize = 1 },
                    new() { wcid = 28078, name = "Ring of Enchantment", stackSize = 1 },
                    new() { wcid = 30352, name = "Bracelet of Binding", stackSize = 1 }
                }
            }
        };
    }
}
