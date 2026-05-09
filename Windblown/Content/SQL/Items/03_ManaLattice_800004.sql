-- ==========================================================================
-- Mana Lattice (800004) — Gem-style self-use from pack, CastSpell + spellbook
-- ==========================================================================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(800004, 'manalattice', 38, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(800004,  1,   2048)   /* ItemType - Gem */
,(800004,  5,    100)   /* EncumbranceVal */
,(800004, 16, 524296)   /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(800004, 19,  10000)   /* Value */
,(800004, 33,      1)   /* Bonded */
,(800004, 93,   1044)   /* PhysicsState */
,(800004, 94, 35215);   /* TargetType */

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(800004, 11, True) ,(800004, 13, True) ,(800004, 14, True)
,(800004, 19, True) ,(800004, 69, False);

INSERT IGNORE INTO weenie_properties_float (object_Id, type, value) VALUES
(800004, 39, 0.8);

INSERT IGNORE INTO weenie_properties_string (object_Id, type, value) VALUES
(800004,  1, 'Mana Lattice')
,(800004, 15, 'A resonant crystalline lattice attuned to magical energy.')
,(800004, 16, 'A specially prepared crystalline lattice capable of storing spell energy. A SpellSiphon can be used to transfer extracted spells into this lattice for later use. Use the lattice itself to apply stored spells to equipment.');

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(800004,  1, 33557506) ,(800004,  3, 536870932)
,(800004,  8, 100690900) ,(800004, 22, 872415275);
