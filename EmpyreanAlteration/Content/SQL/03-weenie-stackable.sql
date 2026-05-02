-- EmpyreanAlteration: Make trophy items ACTUALLY stackable by changing WeenieType to Stackable
-- Generic (type=1) items cannot split/merge regardless of MaxStackSize.
-- Stackable (type=51) is required for ACE inventory stacking to work.
-- Applied 2026-05-01
-- Updated 2026-05-01: Added all missing TrophyWhitelist.md type=1 items

UPDATE weenie SET type = 51 WHERE class_Id IN (
    -- Original batch
    36359,   -- Cow Head
    3699,    -- Blue Phyntos Wasp Wing
    3700,    -- Gold Phyntos Wasp Wing
    3701,    -- Green Phyntos Wasp Wing
    3703,    -- Red Phyntos Wasp Wing
    7603,    -- White Phyntos Wasp Wing
    8426,    -- Jungle Phyntos Wasp Wing
    3693,    -- Banderling Scalp
    8144,    -- Banderling Head
    8145,    -- Drudge Head
    8146,    -- Mosswart Head
    8147,    -- Tusker Head
    4235,    -- Gromnie Hide (Thin)
    4236,    -- Gromnie Hide
    4237,    -- Gromnie Hide (Thick)
    4238,    -- Reedshark Hide (Small)
    4239,    -- Reedshark Hide
    4240,    -- Mattekar Hide (Small)
    4241,    -- Mattekar Hide
    5892,    -- Mattekar Hoary Hide
    8656,    -- Shreth Hide
    8657,    -- Shreth Hide (Large)
    8658,    -- Shreth Hide (Small)
    8664,    -- Ursuin Hide (Large)
    8665,    -- Ursuin Scalp
    8674,    -- Ursuin Hide (Small)
    9258,    -- Sclavus Hide
    9259,    -- Sclavus Hide (Large)
    9260,    -- Sclavus Hide (Small)
    -- New batch: body parts, organs, pelts, charms
    24835,   -- Drudge Charm
    24836,   -- Drudge Charm (Cabalist)
    28886,   -- Burun Guruk Head
    28887,   -- Burun Ruuk Head
    28888,   -- Chittick Head
    28889,   -- Mosswart Head
    28890,   -- Sclavus Head
    28891,   -- Tumerok Head
    28892,   -- Ursuin Head
    3670,    -- Copper Heart
    3674,    -- Ash Gromnie Tooth
    3680,    -- Rat Tail
    3686,    -- Black Rock
    3692,    -- Black Stone
    4233,    -- Armoredillo Hide
    7605,    -- Coral Heart
    10868,   -- Canescent Mattekar Pelt
    11339,   -- Carenzi Burrower Pelt
    11340,   -- Carenzi Pouchling Pelt
    11342,   -- Carenzi Sentry Pelt
    12235,   -- Carenzi Stalker Pelt
    12689,   -- Diamond Powder
    25901,   -- Doomshark Hide
    28191,   -- Amethyst Gromnie Eye
    28205,   -- Azure Gromnie Tooth
    28206,   -- Brass Gromnie Tooth
    28207,   -- Copper Gromnie Tooth
    28211,   -- Ash Gromnie Wings
    28212,   -- Azure Gromnie Wings
    42348,   -- Black Coral Heart
    51351    -- Snow Tusker Leader Tusk
);
