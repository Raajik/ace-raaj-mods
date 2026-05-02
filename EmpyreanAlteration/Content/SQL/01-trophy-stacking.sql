-- EmpyreanAlteration: Make common trophy items stackable + Coalesced Mana tradeable
-- Applied 2026-05-01
-- FIXED: type 16 was ItemUseable, corrected to type 11 (MaxStackSize)

-- Coalesced Mana: remove Attuned so they can be traded/sold
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(42516, 33, 0), (42517, 33, 0), (42518, 33, 0)
ON DUPLICATE KEY UPDATE value = 0;

-- Trophy items: set MaxStackSize = 100 (type 11)
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(36359, 11, 100),   -- Cow Head
(3699, 11, 100),    -- Blue Phyntos Wasp Wing
(3700, 11, 100),    -- Gold Phyntos Wasp Wing
(3701, 11, 100),    -- Green Phyntos Wasp Wing
(3703, 11, 100),    -- Red Phyntos Wasp Wing
(7603, 11, 100),    -- White Phyntos Wasp Wing
(8426, 11, 100),    -- Jungle Phyntos Wasp Wing
(3693, 11, 100),    -- Banderling Scalp
(8144, 11, 100),    -- Banderling Head
(8145, 11, 100),    -- Drudge Head
(8146, 11, 100),    -- Mosswart Head
(8147, 11, 100),    -- Tusker Head
(4235, 11, 100),    -- Gromnie Hide (Thin)
(4236, 11, 100),    -- Gromnie Hide
(4237, 11, 100),    -- Gromnie Hide (Thick)
(4238, 11, 100),    -- Reedshark Hide (Small)
(4239, 11, 100),    -- Reedshark Hide
(4240, 11, 100),    -- Mattekar Hide (Small)
(4241, 11, 100),    -- Mattekar Hide
(5892, 11, 100),    -- Mattekar Hoary Hide
(8656, 11, 100),    -- Shreth Hide
(8657, 11, 100),    -- Shreth Hide (Large)
(8658, 11, 100),    -- Shreth Hide (Small)
(8664, 11, 100),    -- Ursuin Hide (Large)
(8665, 11, 100),    -- Ursuin Scalp
(8674, 11, 100),    -- Ursuin Hide (Small)
(9258, 11, 100),    -- Sclavus Hide
(9259, 11, 100),    -- Sclavus Hide (Large)
(9260, 11, 100)     -- Sclavus Hide (Small)
ON DUPLICATE KEY UPDATE value = 100;
