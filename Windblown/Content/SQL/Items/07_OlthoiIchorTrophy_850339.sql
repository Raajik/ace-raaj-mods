-- ==========================================================================
-- 07_OlthoiIchorTrophy_850339.sql
-- Custom stackable Olthoi Ichor — WCID 850339
-- ==========================================================================

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850339, 'olthoiichor_custom_wb', type, NOW() FROM weenie WHERE class_Id = 10864 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

-- ==========================================================================
-- Recipe redirect: 850339 (custom ichor) + 10868 (Canescent Mattekar Pelt)
-- → recipe 2450 → 10869 (Treated Canescent Mattekar Pelt)
-- Same result as the vanilla 10864 + 10868 combination.
-- ==========================================================================
INSERT INTO cook_book (recipe_Id, source_W_C_I_D, target_W_C_I_D, last_Modified)
SELECT 2450, 850339, 10868, NOW()
WHERE NOT EXISTS (SELECT 1 FROM cook_book WHERE recipe_Id = 2450 AND source_W_C_I_D = 850339 AND target_W_C_I_D = 10868);