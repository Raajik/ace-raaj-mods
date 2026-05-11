-- SpellSiphon Tool Creation v2.0
-- WCID 850200 — MaxStackSize 250 (vendor may inject same stack count), burden 1, value 1.
-- TargetType ItemEnchantableTarget (560015): ManaStone/Misc/etc. so crystals and odd spell items validate.
-- Use directly on spell-bearing items to attempt extraction.

DELETE FROM `weenie_properties_create_list` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` = 850200);
DELETE FROM `weenie_properties_emote` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_skill` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_body_part` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_attribute` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_string` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_float` WHERE `object_Id` = 850200;
DELETE FROM `weenie_properties_int` WHERE `object_Id` = 850200;
DELETE FROM `weenie` WHERE `class_Id` = 850200;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850200, 'spellsiphon', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850200,   1,        128) /* ItemType - Misc */
     , (850200,   5,          1) /* EncumbranceVal */
     , (850200,   8,          1) /* Mass */
     , (850200,   9,          0) /* ValidLocations - None */
     , (850200,  11,        250) /* MaxStackSize */
     , (850200,  12,          1) /* StackSize */
     , (850200,  13,          1) /* StackUnitEncumbrance */
     , (850200,  14,          1) /* StackUnitMass */
     , (850200,  15,      10000) /* StackUnitValue */
     , (850200,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (850200,  19,      10000) /* Value */
     , (850200,  33,          0) /* Bonded - Normal */
     , (850200,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850200,  94,     560015) /* TargetType = ItemEnchantableTarget (ACE.Entity.Enum.ItemType): melee/armor/clothing/jewelry/misc/missile/container/gem/caster/mana stone */
     , (850200, 114,          0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850200,  22, True ) /* Inscribable */
     , (850200,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850200,  39,    0.75) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850200,   1, 'Spellsiphon') /* Name */
     , (850200,  14, 'Use this on a spell-bearing item to attempt extracting its spells. On success, the Spellsiphon becomes charged with the extracted spells and can then be used on equipment or gems to apply them.') /* Use */
     , (850200,  15, 'A claw-like device humming with latent magical energy, carved from nullified diamond heart.') /* ShortDesc */
     , (850200,  16, 'A claw-like device humming with latent magical energy. Use it on spell-bearing items to extract their magic. Extracted spells are stored within the Spellsiphon and can then be applied to equipment or gems.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850200,   1, 0x02000CA9) /* Setup - same as Isparian Tool */
     , (850200,   3, 0x20000014) /* SoundTable */
     , (850200,   6, 0x04000BEF) /* PaletteBase */
     , (850200,   7, 0x10000146) /* ClothingBase */
     , (850200,   8, 0x06002571) /* Icon - same as Isparian Tool */
     , (850200,  22, 0x3400002B) /* PhysicsEffectTable */;
