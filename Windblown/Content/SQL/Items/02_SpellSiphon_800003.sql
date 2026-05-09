-- ==========================================================================
-- SpellSiphon (800003) — Use on a spell-bearing item to extract spells
-- ==========================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(800003, 'spellsiphon', 44, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(800003,  1,   2048)   /* ItemType - Gem */
,(800003,  5,     10)   /* EncumbranceVal */
,(800003, 16, 524296)   /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(800003, 19,     50)   /* Value */
,(800003, 33,      1)   /* Bonded - Bonded */
,(800003, 93,   1044)   /* PhysicsState */
,(800003, 94, 35215)    /* TargetType */;

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(800003, 11, True) ,(800003, 13, True) ,(800003, 14, True)
,(800003, 19, True) ,(800003, 69, False);

INSERT IGNORE INTO weenie_properties_float (object_Id, type, value) VALUES
(800003, 39, 0.8);

INSERT IGNORE INTO weenie_properties_string (object_Id, type, value) VALUES
(800003,  1, 'SpellSiphon')
,(800003, 15, 'Use on a spell-bearing item to siphon its spells. Once charged, use on equipment or a Mana Lattice to apply them.')
,(800003, 16, 'A dark crystalline tool humming with latent energy. When used on a spell-bearing item, it extracts the enchantments, holding them for transfer. The siphoned spells can then be applied to compatible equipment or stored in a Mana Lattice.');

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(800003,  1, 33557506) ,(800003,  3, 536870932)
,(800003,  8, 100690901) ,(800003, 22, 872415275);
