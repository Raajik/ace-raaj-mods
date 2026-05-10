-- ==========================================================================
-- Lucky Gold Letter (850337) and Scarlet Red Letter (850338)
-- Custom stackable letter tokens for reward turn-in.
-- Icon data comes from Windblown Content/Weenies/letters.json when
-- EnableCustomWeenies is true; SQL keeps DB rows for tooling/fallback.
-- ==========================================================================

-- Lucky Gold Letter
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(850337, 'luckygoldletter_wb', 51, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(850337,  5,  1)   -- EncumbranceVal
,(850337,  8,  1)   -- Mass
,(850337, 11, 100)  -- MaxStackSize
,(850337, 12,  1)   -- StackSize
,(850337, 13,  1)   -- StackUnitEncumbrance
,(850337, 14,  1)   -- StackUnitMass
,(850337, 15,  1)   -- StackUnitValue
,(850337, 16,  1)   -- ItemUseable (Use)
,(850337, 19,  1)   -- Value
,(850337, 33,  1)   -- Bonded (Normal)
,(850337, 93, 1044);-- PhysicsState

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(850337, 11, True) ,(850337, 13, True) ,(850337, 14, True)
,(850337, 19, True) ,(850337, 69, False);

INSERT IGNORE INTO weenie_properties_string (object_Id, type, value) VALUES
(850337,  1, 'Lucky Gold Letter')
,(850337, 15, 'A lucky gold letter.')
,(850337, 16, 'Collectors will reward a great deal of experience and pyreals for turning in these letters.');

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(850337,  1, 33556918) ,(850337,  3, 536870932)
,(850337,  8, 100671215) ,(850337, 22, 872415275);

-- Scarlet Red Letter
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(850338, 'scarletredletter_wb', 51, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(850338,  5,  1), (850338,  8,  1), (850338, 11, 100), (850338, 12,  1)
,(850338, 13,  1), (850338, 14,  1), (850338, 15,  1), (850338, 16,  1)
,(850338, 19,  1), (850338, 33,  1), (850338, 93, 1044);

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(850338, 11, True) ,(850338, 13, True) ,(850338, 14, True)
,(850338, 19, True) ,(850338, 69, False);

INSERT IGNORE INTO weenie_properties_string (object_Id, type, value) VALUES
(850338,  1, 'Scarlet Red Letter')
,(850338, 15, 'A scarlet red letter.')
,(850338, 16, 'Collectors will reward a great deal of experience and pyreals for turning in these letters.');

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(850338,  1, 33556920) ,(850338,  3, 536870932)
,(850338,  8, 100671217) ,(850338, 22, 872415275);
