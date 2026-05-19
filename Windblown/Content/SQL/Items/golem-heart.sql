-- Golem Heart tier line (850370-850373)
INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850370, 'golem-heart_regular_wb', type, NOW() FROM weenie WHERE class_Id = 23202 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850371, 'golem-heart_quality_wb', type, NOW() FROM weenie WHERE class_Id = 23202 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850372, 'golem-heart_pristine_wb', type, NOW() FROM weenie WHERE class_Id = 23202 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT INTO weenie (class_Id, class_Name, type, last_Modified)
SELECT 850373, 'golem-heart_perfect_wb', type, NOW() FROM weenie WHERE class_Id = 23202 LIMIT 1
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

