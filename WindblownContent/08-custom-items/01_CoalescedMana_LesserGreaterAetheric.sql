-- Coalesced Mana tiers: Lesser (42516), Greater (42517), Aetheric (42518)
-- Use on equipment to Awaken it, enabling item leveling via LivingEquipment.
-- Lesser = Awakening I (max level 25), Greater = Awakening II (max 50), Aetheric = Awakening III (max 75).
-- Usable on eligible equipment via right-click > Use On Target.

DELETE FROM `weenie` WHERE `class_Id` IN (42516, 42517, 42518);

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES
 (42516, 'lessercoalescedmana', 51, '2025-01-01 00:00:00')
,(42517, 'greatercoalescedmana', 51, '2025-01-01 00:00:00')
,(42518, 'aethericcoalescedmana', 51, '2025-01-01 00:00:00');

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES
-- Lesser
 (42516,   1,      128) /* ItemType - Misc */
,(42516,   5,        5) /* EncumbranceVal */
,(42516,  11,       10) /* MaxStackSize */
,(42516,  12,        1) /* StackSize */
,(42516,  16,   524296) /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(42516,  18,       20) /* UiEffects - BoostHealth | BoostStamina (yellow/gold glow) */
,(42516,  19,        0) /* Value */
,(42516,  33,        1) /* Bonded - Bonded */
,(42516,  93,     1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(42516,  94,    35215) /* TargetType - MeleeWeapon | Armor | Clothing | Jewelry | Misc | MissileWeapon | Corpse | Writable */
,(42516, 114,        1) /* Attuned - Attuned */
-- Greater
,(42517,   1,      128) /* ItemType - Misc */
,(42517,   5,        5) /* EncumbranceVal */
,(42517,  11,       10) /* MaxStackSize */
,(42517,  12,        1) /* StackSize */
,(42517,  16,   524296) /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(42517,  18,       32) /* UiEffects - Fire (red glow) */
,(42517,  19,        0) /* Value */
,(42517,  33,        1) /* Bonded - Bonded */
,(42517,  93,     1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(42517,  94,    35215) /* TargetType - MeleeWeapon | Armor | Clothing | Jewelry | Misc | MissileWeapon | Corpse | Writable */
,(42517, 114,        1) /* Attuned - Attuned */
-- Aetheric
,(42518,   1,      128) /* ItemType - Misc */
,(42518,   5,        5) /* EncumbranceVal */
,(42518,  11,       10) /* MaxStackSize */
,(42518,  12,        1) /* StackSize */
,(42518,  16,   524296) /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(42518,  18,        1) /* UiEffects - Magical (blue glow) */
,(42518,  19,        0) /* Value */
,(42518,  33,        1) /* Bonded - Bonded */
,(42518,  93,     1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(42518,  94,    35215) /* TargetType - MeleeWeapon | Armor | Clothing | Jewelry | Misc | MissileWeapon | Corpse | Writable */
,(42518, 114,        1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES
 (42516, 11, True ) /* IgnoreCollisions */
,(42516, 13, True ) /* Ethereal */
,(42516, 14, True ) /* GravityStatus */
,(42516, 19, True ) /* Attackable */
,(42516, 69, False) /* IsSellable */
,(42517, 11, True ) /* IgnoreCollisions */
,(42517, 13, True ) /* Ethereal */
,(42517, 14, True ) /* GravityStatus */
,(42517, 19, True ) /* Attackable */
,(42517, 69, False) /* IsSellable */
,(42518, 11, True ) /* IgnoreCollisions */
,(42518, 13, True ) /* Ethereal */
,(42518, 14, True ) /* GravityStatus */
,(42518, 19, True ) /* Attackable */
,(42518, 69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES
 (42516, 39, 0.3) /* DefaultScale */
,(42517, 39, 0.3) /* DefaultScale */
,(42518, 39, 0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES
-- Lesser
 (42516,  1, 'Lesser Coalesced Mana')
,(42516, 15, 'Use on equipment to Awaken it to tier I. Awakened items gain item XP and can level up to a maximum of 25.')
,(42516, 16, 'A mote of lesser coalesced mana. When used on eligible equipment, it Awakens the item, allowing it to gain experience and grow in power.')
,(42516, 20, 'Lesser Coalesced Mana')
-- Greater
,(42517,  1, 'Greater Coalesced Mana')
,(42517, 15, 'Use on equipment to Awaken it to tier II. Awakened items gain item XP and can level up to a maximum of 50.')
,(42517, 16, 'A mote of greater coalesced mana. When used on eligible equipment, it Awakens the item to tier II, allowing it to gain experience and grow in power.')
,(42517, 20, 'Greater Coalesced Mana')
-- Aetheric
,(42518,  1, 'Aetheric Coalesced Mana')
,(42518, 15, 'Use on equipment to Awaken it to tier III. Awakened items gain item XP and can level up to a maximum of 75.')
,(42518, 16, 'A mote of aetheric coalesced mana. When used on eligible equipment, it Awakens the item to tier III, allowing it to gain experience and grow in power.')
,(42518, 20, 'Aetheric Coalesced Mana');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES
-- Lesser
 (42516,  1, 33557506) /* Setup */
,(42516,  3, 536870932) /* SoundTable */
,(42516,  6, 67112808) /* PaletteBase */
,(42516,  8, 100690901) /* Icon (yellow) */
,(42516, 22, 872415275) /* PhysicsEffectTable */
-- Greater
,(42517,  1, 33557506) /* Setup */
,(42517,  3, 536870932) /* SoundTable */
,(42517,  6, 67112808) /* PaletteBase */
,(42517,  8, 100690900) /* Icon */
,(42517, 22, 872415275) /* PhysicsEffectTable */
-- Aetheric
,(42518,  1, 33557506) /* Setup */
,(42518,  3, 536870932) /* SoundTable */
,(42518,  6, 67112808) /* PaletteBase */
,(42518,  8, 100690899) /* Icon (blue) */
,(42518, 22, 872415275) /* PhysicsEffectTable */;
