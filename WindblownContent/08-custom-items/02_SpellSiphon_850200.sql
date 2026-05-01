-- Spellsiphon extraction tool (850200)
-- Use on a spell-bearing item to extract its spells. Once charged, use on equipment or a Mana Lattice to apply them.

DELETE FROM `weenie` WHERE `class_Id` = 850200;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850200, 'spellsiphon', 44, '2025-01-01 00:00:00');

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES
 (850200,  1,      128) /* ItemType - Misc */
,(850200,  5,        1) /* EncumbranceVal */
,(850200,  8,        1) /* WieldRequirements - Skill */
,(850200,  9,        0) /* WieldSkillType - None */
,(850200, 11,      100) /* MaxStackSize */
,(850200, 12,        1) /* StackSize */
,(850200, 13,        1) /* StackUnitEncumbrance */
,(850200, 14,        1) /* StackUnitValue */
,(850200, 15,    10000) /* UnitValue */
,(850200, 16,   524296) /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(850200, 19,    10000) /* Value */
,(850200, 33,        0) /* Bonded - Normal */
,(850200, 93,     1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(850200, 94,    35215) /* TargetType - MeleeWeapon, Armor, Clothing, Jewelry, Misc, MissileWeapon, Corpse, Writable */
,(850200, 114,       0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES
 (850200, 22, True ) /* Inscribable */
,(850200, 69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES
 (850200, 39, 0.75) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES
 (850200,  1, 'Spellsiphon')
,(850200, 14, 'Use this on a spell-bearing item to attempt extracting its spells.  On success, the Spellsiphon becomes charged with the extracted spells and can then be used on equipment or gems to apply them.')
,(850200, 15, 'A claw-like device humming with latent magical energy, carved from nullified diamond heart.')
,(850200, 16, 'A claw-like device humming with latent magical energy.  Use it on spell-bearing items to extract their magic.  Extracted spells are stored within the Spellsiphon and can then be applied to equipment or gems.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES
 (850200,  1, 33557673) /* Setup */
,(850200,  3, 536870932) /* SoundTable */
,(850200,  6, 67111919) /* PaletteBase */
,(850200,  7, 268435782) /* ClothingBase */
,(850200,  8, 100672881) /* Icon */
,(850200, 22, 872415275) /* PhysicsEffectTable */;
