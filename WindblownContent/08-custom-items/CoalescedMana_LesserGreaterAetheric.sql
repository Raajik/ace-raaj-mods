-- Coalesced Mana tiers: Lesser (42516), Greater (42517), Aetheric (42518)
-- Stackable misc items used for LivingEquipment awakening via use-on-target.

DELETE FROM `weenie` WHERE `class_Id` IN (42516, 42517, 42518);

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES
 (42516, 'ace42516-lessercoalescedmana', 51, '2021-11-01 00:00:00')
,(42517, 'ace42517-greatercoalescedmana', 51, '2021-11-01 00:00:00')
,(42518, 'ace42518-aethericcoalescedmana', 51, '2021-11-01 00:00:00');

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES
-- Lesser
 (42516,  1,      128) /* ItemType - Misc */
,(42516,  5,        5) /* EncumbranceVal */
,(42516, 11,       10) /* MaxStackSize */
,(42516, 12,        1) /* StackSize */
,(42516, 16,        1) /* ItemUseable - No */
,(42516, 19,        0) /* Value */
,(42516, 33,        1) /* Bonded - Bonded */
,(42516, 93,     1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(42516, 114,       1) /* Attuned - Attuned */
-- Greater
,(42517,  1,      128) /* ItemType - Misc */
,(42517,  5,        5) /* EncumbranceVal */
,(42517, 11,       10) /* MaxStackSize */
,(42517, 12,        1) /* StackSize */
,(42517, 16,        1) /* ItemUseable - No */
,(42517, 19,        0) /* Value */
,(42517, 33,        1) /* Bonded - Bonded */
,(42517, 93,     1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(42517, 114,       1) /* Attuned - Attuned */
-- Aetheric
,(42518,  1,      128) /* ItemType - Misc */
,(42518,  5,        5) /* EncumbranceVal */
,(42518, 11,       10) /* MaxStackSize */
,(42518, 12,        1) /* StackSize */
,(42518, 16,        1) /* ItemUseable - No */
,(42518, 19,        0) /* Value */
,(42518, 33,        1) /* Bonded - Bonded */
,(42518, 93,     1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(42518, 114,       1) /* Attuned - Attuned */;

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
,(42516, 16, 'A mote of Lesser Coalesced mana, suitable for Awakening I.')
,(42516, 20, 'Lesser Coalesced Mana')
-- Greater
,(42517,  1, 'Greater Coalesced Mana')
,(42517, 16, 'A mote of Greater Coalesced mana, suitable for Awakening II.')
,(42517, 20, 'Greater Coalesced Mana')
-- Aetheric
,(42518,  1, 'Aetheric Coalesced Mana')
,(42518, 16, 'A mote of Aetheric Coalesced mana, suitable for Awakening III.')
,(42518, 20, 'Aetheric Coalesced Mana');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES
-- Lesser
 (42516,  1, 0x0200007C) /* Setup */
,(42516,  3, 0x20000014) /* SoundTable */
,(42516,  6, 0x04000BEF) /* PaletteBase */
,(42516,  8, 0x06001B4E) /* Icon */
,(42516, 22, 0x3400002B) /* PhysicsEffectTable */
-- Greater
,(42517,  1, 0x0200007C) /* Setup */
,(42517,  3, 0x20000014) /* SoundTable */
,(42517,  6, 0x04000BEF) /* PaletteBase */
,(42517,  8, 0x06001B4F) /* Icon */
,(42517, 22, 0x3400002B) /* PhysicsEffectTable */
-- Aetheric
,(42518,  1, 0x0200007C) /* Setup */
,(42518,  3, 0x20000014) /* SoundTable */
,(42518,  6, 0x04000BEF) /* PaletteBase */
,(42518,  8, 0x06001B50) /* Icon */
,(42518, 22, 0x3400002B) /* PhysicsEffectTable */;
