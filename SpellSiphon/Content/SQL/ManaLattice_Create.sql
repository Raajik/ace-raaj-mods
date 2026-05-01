-- Mana Lattice (Buff Gem Base)
-- WCID 850201 — dedicated base item for reusable buff gems via SpellSiphon.
-- Sold by jewelers (vendors selling jewelry/gems) for 50,000 pyreals.

DELETE FROM `weenie_properties_create_list` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` = 850201);
DELETE FROM `weenie_properties_emote` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_skill` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_body_part` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_attribute` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_string` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_float` WHERE `object_Id` = 850201;
DELETE FROM `weenie_properties_int` WHERE `object_Id` = 850201;
DELETE FROM `weenie` WHERE `class_Id` = 850201;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850201, 'manalattice', 44, NOW()) /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850201,   1,        128) /* ItemType - Misc */
     , (850201,   5,         10) /* EncumbranceVal */
     , (850201,   8,         10) /* Mass */
     , (850201,   9,          0) /* ValidLocations - None */
     , (850201,  11,          1) /* MaxStackSize */
     , (850201,  12,          1) /* StackSize */
     , (850201,  13,         10) /* StackUnitEncumbrance */
     , (850201,  14,         10) /* StackUnitMass */
     , (850201,  15,       5000) /* StackUnitValue */
     , (850201,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (850201,  19,       5000) /* Value */
     , (850201,  33,          1) /* Bonded - Bonded */
     , (850201,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850201,  94,      35215) /* TargetType - Misc | Gem | Jewelry | Armor | Clothing | MeleeWeapon | MissileWeapon | Caster */
     , (850201, 114,          0) /* Attuned - Normal */
     , (850201, 218,          4) /* ActivationResponse - CastSpell */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850201,  22, True ) /* Inscribable */
     , (850201,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850201,  39,    0.65) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850201,   1, 'Mana Lattice') /* Name */
     , (850201,  14, 'A crystalline lattice used as a base for creating reusable buff gems. Use a charged Spellsiphon on this to infuse it with extracted spells.') /* Use */
     , (850201,  15, 'A delicate lattice of crystallized mana, pulsing with faint prismatic light.') /* ShortDesc */
     , (850201,  16, 'A delicate lattice of crystallized mana. When infused with spells via a charged Spellsiphon, it becomes a reusable buff gem that can be activated repeatedly.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850201,   1, 0x020007B7) /* Setup - Unfashioned Prismatic Stone shape */
     , (850201,   3, 0x20000014) /* SoundTable */
     , (850201,   6, 0x04000BEF) /* PaletteBase */
     , (850201,   7, 0x10000146) /* ClothingBase */
     , (850201,   8, 0x060026BC) /* Icon - Unfashioned Prismatic Stone */
     , (850201,  22, 0x3400002B) /* PhysicsEffectTable */;
