-- Remove old head drops from global creature create_list tables.
-- Backed up to head-create-list-backup.sql.
-- Heads now drop exclusively via Windblown TrophyLine system (mob-heads.json).
-- Vanilla head WCIDs are preserved for a future MMD merchant NPC.
-- Applied: 2026-05-06

DELETE FROM weenie_properties_create_list
WHERE weenie_Class_Id IN (
    8144, 8145, 8146, 8147,       -- Banderling, Drudge, Mosswart, Tusker
    9097, 12219,                   -- Ursuin Heads
    12215,                         -- Pumpkin Head
    12216,                         -- Sclavus Head
    12225,                         -- Zombie Head
    19446,                         -- Olthoi Head (alt)
    22059,                         -- Eviscerator Head
    24846,                         -- Mutilator Head
    25554,                         -- Knath Head
    25561,                         -- Moarsman Head
    28886, 28887,                  -- Burun Heads
    28888,                         -- Chittick Head
    28889,                         -- Mite Head
    34029,                         -- Shadow Head
    36359,                         -- Cow Head
    36362,                         -- Mukkir Head
    3680,                          -- Olthoi Head
    3687,                          -- Skeleton's Skull
    4121                           -- Lich Skull
);
