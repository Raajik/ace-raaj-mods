-- ==========================================================================
-- Coalesced Mana tiers — 800000 (Lesser), 800001 (Greater), 800002 (Aetheric)
-- Behavior is server-side (EmpyreanAlteration LivingItemAwakener): each tier adds +5 / +10 / +15
-- to PropertyInt.ItemMaxLevel (awakens if needed), stacking up to ItemLevelingCap (default 100).
-- String rows use ON DUPLICATE KEY UPDATE so redeploy fixes stale DB copy-paste from old tier-cap design.
-- ==========================================================================

-- ========================
-- Lesser Coalesced Mana (800000)
-- ========================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(800000, 'coalescedmana_lesser', 51, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(800000,   1,      128)   /* ItemType - Misc */
,(800000,   5,        5)   /* EncumbranceVal */
,(800000,  11,       10)   /* MaxStackSize */
,(800000,  12,        1)   /* StackSize */
,(800000,  16,   524296)   /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(800000,  18,       20)   /* UiEffects - BoostHealth | BoostStamina (yellow/gold glow) */
,(800000,  19,        0)   /* Value */
,(800000,  33,        1)   /* Bonded - Bonded */
,(800000,  93,     1044)   /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(800000,  94,    35215)   /* TargetType - MeleeWeapon | Armor | Clothing | Jewelry | Misc | MissileWeapon | Corpse | Writable */
,(800000, 114,        1);  /* Attuned - Attuned */

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(800000, 11, True )  /* IgnoreCollisions */
,(800000, 13, True )  /* Ethereal */
,(800000, 14, True )  /* GravityStatus */
,(800000, 19, True )  /* Attackable */
,(800000, 69, False); /* IsSellable */

INSERT IGNORE INTO weenie_properties_float (object_Id, type, value) VALUES
(800000, 39, 0.3); /* DefaultScale */

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(800000,  1, 'Lesser Coalesced Mana')
,(800000, 15, 'Use on eligible equipment to awaken it or raise its maximum item level by +5. Further uses of coalesced mana stack the cap up to your server item leveling limit.')
,(800000, 16, 'A mote of lesser coalesced mana. Channels into eligible gear to awaken living potential or deepen an awakened item''s maximum level by five.')
,(800000, 20, 'Lesser Coalesced Mana')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(800000,  1, 33557506)  /* Setup */
,(800000,  3, 536870932) /* SoundTable */
,(800000,  6, 67112808)  /* PaletteBase */
,(800000,  8, 100690901) /* Icon (yellow) */
,(800000, 22, 872415275);/* PhysicsEffectTable */

-- ========================
-- Greater Coalesced Mana (800001)
-- ========================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(800001, 'coalescedmana_greater', 51, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(800001,   1,      128)   /* ItemType - Misc */
,(800001,   5,        5)   /* EncumbranceVal */
,(800001,  11,       10)   /* MaxStackSize */
,(800001,  12,        1)   /* StackSize */
,(800001,  16,   524296)   /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(800001,  18,       32)   /* UiEffects - Fire (red glow) */
,(800001,  19,        0)   /* Value */
,(800001,  33,        1)   /* Bonded - Bonded */
,(800001,  93,     1044)   /* PhysicsState */
,(800001,  94,    35215)   /* TargetType */
,(800001, 114,        1);  /* Attuned */

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(800001, 11, True)  ,(800001, 13, True)  ,(800001, 14, True)
,(800001, 19, True)  ,(800001, 69, False);

INSERT IGNORE INTO weenie_properties_float (object_Id, type, value) VALUES
(800001, 39, 0.3);

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(800001,  1, 'Greater Coalesced Mana')
,(800001, 15, 'Use on eligible equipment to awaken it or raise its maximum item level by +10. Further uses of coalesced mana stack the cap up to your server item leveling limit.')
,(800001, 16, 'A mote of greater coalesced mana. Channels into eligible gear to awaken living potential or deepen an awakened item''s maximum level by ten.')
,(800001, 20, 'Greater Coalesced Mana')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(800001,  1, 33557506)  ,(800001,  3, 536870932)
,(800001,  6, 67112808)  ,(800001,  8, 100690900) /* Icon (red) */
,(800001, 22, 872415275);

-- ========================
-- Aetheric Coalesced Mana (800002)
-- ========================
INSERT INTO weenie (class_Id, class_Name, type, last_Modified) VALUES
(800002, 'coalescedmana_aetheric', 51, NOW())
ON DUPLICATE KEY UPDATE class_Name = VALUES(class_Name), type = VALUES(type), last_Modified = NOW();

INSERT IGNORE INTO weenie_properties_int (object_Id, type, value) VALUES
(800002,   1,      128)   /* ItemType - Misc */
,(800002,   5,        5)   /* EncumbranceVal */
,(800002,  11,       10)   /* MaxStackSize */
,(800002,  12,        1)   /* StackSize */
,(800002,  16,   524296)   /* ItemUseable */
,(800002,  18,        1)   /* UiEffects - Magical (blue glow) */
,(800002,  19,        0)   /* Value */
,(800002,  33,        1)   /* Bonded */
,(800002,  93,     1044)   /* PhysicsState */
,(800002,  94,    35215)   /* TargetType */
,(800002, 114,        1);  /* Attuned */

INSERT IGNORE INTO weenie_properties_bool (object_Id, type, value) VALUES
(800002, 11, True)  ,(800002, 13, True)  ,(800002, 14, True)
,(800002, 19, True)  ,(800002, 69, False);

INSERT IGNORE INTO weenie_properties_float (object_Id, type, value) VALUES
(800002, 39, 0.3);

INSERT INTO weenie_properties_string (object_Id, type, value) VALUES
(800002,  1, 'Aetheric Coalesced Mana')
,(800002, 15, 'Use on eligible equipment to awaken it or raise its maximum item level by +15. Further uses of coalesced mana stack the cap up to your server item leveling limit.')
,(800002, 16, 'A mote of aetheric coalesced mana. Channels into eligible gear to awaken living potential or deepen an awakened item''s maximum level by fifteen.')
,(800002, 20, 'Aetheric Coalesced Mana')
ON DUPLICATE KEY UPDATE value = VALUES(value);

INSERT IGNORE INTO weenie_properties_d_i_d (object_Id, type, value) VALUES
(800002,  1, 33557506)  ,(800002,  3, 536870932)
,(800002,  6, 67112808)  ,(800002,  8, 100690899) /* Icon (blue) */
,(800002, 22, 872415275);
