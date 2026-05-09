-- ==========================================================================
-- Lucky Gold Letter (800005) and Scarlet Red Letter (800006)
-- Custom stackable letter tokens for reward turn-in.
-- ==========================================================================

-- Lucky Gold Letter
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(800005, 'windblown_luckygoldletter', 51, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(800005,  5,  1)   -- EncumbranceVal
,(800005,  8,  1)   -- Mass
,(800005, 11, 100)  -- MaxStackSize
,(800005, 12,  1)   -- StackSize
,(800005, 13,  1)   -- StackUnitEncumbrance
,(800005, 14,  1)   -- StackUnitMass
,(800005, 15,  1)   -- StackUnitValue
,(800005, 16,  1)   -- ItemUseable (Use)
,(800005, 19,  1)   -- Value
,(800005, 33,  1)   -- Bonded (Normal)
,(800005, 93, 1044);-- PhysicsState

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(800005, 11, True) ,(800005, 13, True) ,(800005, 14, True)
,(800005, 19, True) ,(800005, 69, False);

INSERT IGNORE INTO weenie_properties_string (object_Id, type, value) VALUES
(800005,  1, 'Lucky Gold Letter')
,(800005, 15, 'A lucky gold letter.')
,(800005, 16, 'A lucky gold letter, good for finding rare items. Collectors will reward you handsomely for these.');

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(800005,  1, 33557506) ,(800005,  3, 536870932)
,(800005,  8, 100690901) ,(800005, 22, 872415275);

-- Scarlet Red Letter
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(800006, 'windblown_scarletredletter', 51, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(800006,  5,  1), (800006,  8,  1), (800006, 11, 100), (800006, 12,  1)
,(800006, 13,  1), (800006, 14,  1), (800006, 15,  1), (800006, 16,  1)
,(800006, 19,  1), (800006, 33,  1), (800006, 93, 1044);

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(800006, 11, True) ,(800006, 13, True) ,(800006, 14, True)
,(800006, 19, True) ,(800006, 69, False);

INSERT IGNORE INTO weenie_properties_string (object_Id, type, value) VALUES
(800006,  1, 'Scarlet Red Letter')
,(800006, 15, 'A scarlet red letter.')
,(800006, 16, 'A scarlet red letter, good for finding rare items. Collectors will reward you handsomely for these.');

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(800006,  1, 33557506) ,(800006,  3, 536870932)
,(800006,  8, 100690900) ,(800006, 22, 872415275);
