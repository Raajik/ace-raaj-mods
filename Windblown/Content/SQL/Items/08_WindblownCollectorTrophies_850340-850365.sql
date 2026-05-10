-- ==========================================================================
-- 08_WindblownCollectorTrophies_850340-850365.sql
-- New tiered trophy items:
--   850340-850343  Olthoi Claw (4 tiers, clone from 3679)
--   850344-850347  Large Lugian Sinew (4 tiers, clone from 7043)
--   850348-850351  Swamp Stone (4 tiers, clone from 3694)
--   850352-850357  Mnemosyne (6 tiers, 2 lines, clone from 9310)
--                 Line 1: Tiny/Small/Large (850352-850354)
--                 Line 2: Unlocked Tiny/Unlocked Small/Unlocked Large (850355-850357)
--   850358-850361  Sharp Tusker Slave Tusk (4 tiers, clone from 19478)
--   850362-850365  Tumerok Insignia (4 tiers, clone from 3695)
--   850362-850365  Tumerok Slave Tusk (4 tiers, clone from 19478)
-- ==========================================================================

-- Olthoi Claw (3679)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850340, 'olthoiclaw_regular_wb', type, NOW() FROM weenie WHERE class_Id = 3679 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850341, 'olthoiclaw_quality_wb', type, NOW() FROM weenie WHERE class_Id = 3679 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850342, 'olthoiclaw_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 3679 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850343, 'olthoiclaw_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 3679 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- Large Lugian Sinew (7043)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850344, 'lugiansinew_regular_wb', type, NOW() FROM weenie WHERE class_Id = 7043 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850345, 'lugiansinew_quality_wb', type, NOW() FROM weenie WHERE class_Id = 7043 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850346, 'lugiansinew_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 7043 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850347, 'lugiansinew_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 7043 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- Swamp Stone (3694)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850348, 'swampstone_regular_wb', type, NOW() FROM weenie WHERE class_Id = 3694 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850349, 'swampstone_quality_wb', type, NOW() FROM weenie WHERE class_Id = 3694 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850350, 'swampstone_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 3694 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850351, 'swampstone_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 3694 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- Mnemosyne line 1: regular (9310)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850352, 'mnemosyne_regular_wb', type, NOW() FROM weenie WHERE class_Id = 9310 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850353, 'mnemosyne_quality_wb', type, NOW() FROM weenie WHERE class_Id = 9310 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850354, 'mnemosyne_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 9310 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- Mnemosyne line 2: unlocked (9310)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850355, 'mnemosyne_unlocked_tiny_wb', type, NOW() FROM weenie WHERE class_Id = 9310 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850356, 'mnemosyne_unlocked_small_wb', type, NOW() FROM weenie WHERE class_Id = 9310 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850357, 'mnemosyne_unlocked_large_wb', type, NOW() FROM weenie WHERE class_Id = 9310 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- Sharp Tusker Slave Tusk (19478)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850358, 'tuskerslavetusk_regular_wb', type, NOW() FROM weenie WHERE class_Id = 19478 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850359, 'tuskerslavetusk_quality_wb', type, NOW() FROM weenie WHERE class_Id = 19478 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850360, 'tuskerslavetusk_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 19478 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850361, 'tuskerslavetusk_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 19478 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- Tumerok Insignia (3695)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850362, 'tumerokinsignia_regular_wb', type, NOW() FROM weenie WHERE class_Id = 3695 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850363, 'tumerokinsignia_quality_wb', type, NOW() FROM weenie WHERE class_Id = 3695 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850364, 'tumerokinsignia_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 3695 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850365, 'tumerokinsignia_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 3695 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();
