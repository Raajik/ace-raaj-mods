-- Mattekar Pelt tier line (850378-850381)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850378, 'mattekar-pelt_regular_wb', type, NOW() FROM weenie WHERE class_Id = 10868 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850379, 'mattekar-pelt_quality_wb', type, NOW() FROM weenie WHERE class_Id = 10868 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850380, 'mattekar-pelt_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 10868 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850381, 'mattekar-pelt_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 10868 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

