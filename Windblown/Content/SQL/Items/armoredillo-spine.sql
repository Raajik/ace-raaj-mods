-- Armoredillo Spine tier line (850374-850377)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850374, 'armoredillo-spine_regular_wb', type, NOW() FROM weenie WHERE class_Id = 3689 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850375, 'armoredillo-spine_quality_wb', type, NOW() FROM weenie WHERE class_Id = 3689 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850376, 'armoredillo-spine_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 3689 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850377, 'armoredillo-spine_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 3689 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

