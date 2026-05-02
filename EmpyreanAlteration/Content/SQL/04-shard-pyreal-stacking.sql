-- Shard and Pyreal Mote: Make stackable + tradeable
-- Applied 2026-05-01

-- Crystal shards: set MaxStackSize = 100
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(6055, 11, 100),   -- Cracked Crystal Shard
(6056, 11, 100),   -- Small Crystal Shard
(6057, 11, 100),   -- Tiny Crystal Shard
(6623, 11, 100),   -- Crystal Fragment
(6058, 11, 100),   -- Shadow Shard
(6059, 11, 100),   -- Shadow Sliver
(6060, 11, 100),   -- Shadow Speck
(6624, 11, 100)    -- Shadow Fragment
ON DUPLICATE KEY UPDATE value = 100;

-- Pyreal crafting chain: set MaxStackSize = 100
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(6353, 11, 100),   -- Pyreal Mote
(6355, 11, 100),   -- Pyreal Sliver
(6354, 11, 100),   -- Pyreal Nugget
(6329, 11, 100),   -- Pyreal Bar
(6330, 11, 100),   -- Pyreal Ingot
(6331, 11, 100)    -- Quality Pyreal Ingot
ON DUPLICATE KEY UPDATE value = 100;

-- Remove attuned/bonded so all are tradeable
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(6055, 33, 0), (6056, 33, 0), (6057, 33, 0), (6623, 33, 0),
(6058, 33, 0), (6059, 33, 0), (6060, 33, 0), (6624, 33, 0),
(6353, 33, 0), (6355, 33, 0), (6354, 33, 0), (6329, 33, 0),
(6330, 33, 0), (6331, 33, 0)
ON DUPLICATE KEY UPDATE value = 0;
