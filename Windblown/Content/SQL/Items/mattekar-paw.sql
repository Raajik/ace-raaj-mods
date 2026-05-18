-- Mattekar Paw tier line (850386-850389)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850386, 'mattekar-paw_regular_wb', type, NOW() FROM weenie WHERE class_Id = 9412 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850387, 'mattekar-paw_quality_wb', type, NOW() FROM weenie WHERE class_Id = 9412 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850388, 'mattekar-paw_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 9412 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850389, 'mattekar-paw_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 9412 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

