-- EmpyreanAlteration: Make trophy items ACTUALLY stackable by changing WeenieType to Stackable
-- Generic (type=1) items cannot split/merge regardless of MaxStackSize.
-- Stackable (type=51) is required for ACE inventory stacking to work.
-- Applied 2026-05-01

UPDATE weenie SET type = 51 WHERE class_Id IN (
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
    9260     -- Sclavus Hide (Small)
);
