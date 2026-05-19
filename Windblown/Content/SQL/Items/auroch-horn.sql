-- Auroch Horn tier line (850366-850369)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850366, 'auroch-horn_regular_wb', type, NOW() FROM weenie WHERE class_Id = 266 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850367, 'auroch-horn_quality_wb', type, NOW() FROM weenie WHERE class_Id = 266 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850368, 'auroch-horn_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 266 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850369, 'auroch-horn_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 266 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

