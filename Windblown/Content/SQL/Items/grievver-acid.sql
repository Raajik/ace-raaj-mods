-- Grievver Acid tier line (850394-850397)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850394, 'grievver-acid_regular_wb', type, NOW() FROM weenie WHERE class_Id = 9098 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850395, 'grievver-acid_quality_wb', type, NOW() FROM weenie WHERE class_Id = 9098 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850396, 'grievver-acid_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 9098 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850397, 'grievver-acid_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 9098 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

