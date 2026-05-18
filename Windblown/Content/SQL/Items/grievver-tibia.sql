-- Grievver Tibia tier line (850390-850393)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850390, 'grievver-tibia_regular_wb', type, NOW() FROM weenie WHERE class_Id = 19476 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850391, 'grievver-tibia_quality_wb', type, NOW() FROM weenie WHERE class_Id = 19476 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850392, 'grievver-tibia_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 19476 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850393, 'grievver-tibia_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 19476 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

