-- Mattekar Horn tier line (850382-850385)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850382, 'mattekar-horn_regular_wb', type, NOW() FROM weenie WHERE class_Id = 7044 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850383, 'mattekar-horn_quality_wb', type, NOW() FROM weenie WHERE class_Id = 7044 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850384, 'mattekar-horn_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 7044 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850385, 'mattekar-horn_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 7044 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

