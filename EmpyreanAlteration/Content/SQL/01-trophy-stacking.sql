-- EmpyreanAlteration: Make common trophy items stackable + Coalesced Mana tradeable
-- Applied 2026-05-01
-- FIXED: type 16 was ItemUseable, corrected to type 11 (MaxStackSize)
-- Updated 2026-05-01: Added all missing TrophyWhitelist.md items

-- Coalesced Mana: remove Attuned so they can be traded/sold
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(42516, 33, 0), (42517, 33, 0), (42518, 33, 0)
ON DUPLICATE KEY UPDATE value = 0;

-- Trophy items: set MaxStackSize = 100 (type 11)
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
-- Original batch (hides, heads, wings)
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
(9260, 11, 100),    -- Sclavus Hide (Small)
-- New batch: body parts, organs, pelts, charms
(24835, 11, 100),   -- Drudge Charm
(24836, 11, 100),   -- Drudge Charm (Cabalist)
(28886, 11, 100),   -- Burun Guruk Head
(28887, 11, 100),   -- Burun Ruuk Head
(28888, 11, 100),   -- Chittick Head
(28889, 11, 100),   -- Mosswart Head
(28890, 11, 100),   -- Sclavus Head
(28891, 11, 100),   -- Tumerok Head
(28892, 11, 100),   -- Ursuin Head
(3670, 11, 100),    -- Copper Heart
(3674, 11, 100),    -- Ash Gromnie Tooth
(3680, 11, 100),    -- Rat Tail
(3686, 11, 100),    -- Black Rock
(3692, 11, 100),    -- Black Stone
(4233, 11, 100),    -- Armoredillo Hide
(7605, 11, 100),    -- Coral Heart
(10868, 11, 100),   -- Canescent Mattekar Pelt
(11339, 11, 100),   -- Carenzi Burrower Pelt
(11340, 11, 100),   -- Carenzi Pouchling Pelt
(11342, 11, 100),   -- Carenzi Sentry Pelt
(12235, 11, 100),   -- Carenzi Stalker Pelt
(12689, 11, 100),   -- Diamond Powder
(25901, 11, 100),   -- Doomshark Hide
(28191, 11, 100),   -- Amethyst Gromnie Eye
(28205, 11, 100),   -- Azure Gromnie Tooth
(28206, 11, 100),   -- Brass Gromnie Tooth
(28207, 11, 100),   -- Copper Gromnie Tooth
(28211, 11, 100),   -- Ash Gromnie Wings
(28212, 11, 100),   -- Azure Gromnie Wings
(42348, 11, 100),   -- Black Coral Heart
(51351, 11, 100)    -- Snow Tusker Leader Tusk
ON DUPLICATE KEY UPDATE value = 100;
