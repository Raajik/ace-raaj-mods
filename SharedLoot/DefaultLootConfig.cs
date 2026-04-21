namespace SharedLoot;

internal static class DefaultLootConfig
{
    internal static LootConfig Create()
    {
        return new LootConfig
        {
            ExtremelyRareChance = 0.0001,
            RareChance = 0.01,
            UncommonChance = 0.1,
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
}
