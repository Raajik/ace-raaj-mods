-- Mana Lattice base item (850201)
-- A base for creating reusable buff gems. Use a charged Spellsiphon on this to infuse it with extracted spells.

DELETE FROM `weenie` WHERE `class_Id` = 850201;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850201, 'manalattice', 44, '2025-01-01 00:00:00');

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES
 (850201,  1,      128) /* ItemType - Misc */
,(850201,  5,       10) /* EncumbranceVal */
,(850201,  8,       10) /* WieldRequirements - Skill */
,(850201,  9,        0) /* WieldSkillType - None */
,(850201, 11,        1) /* MaxStackSize */
,(850201, 12,        1) /* StackSize */
,(850201, 13,       10) /* StackUnitEncumbrance */
,(850201, 14,       10) /* StackUnitValue */
,(850201, 15,     5000) /* UnitValue */
,(850201, 16,   524296) /* ItemUseable - SourceContainedTargetRemoteOrSelf */
,(850201, 19,     5000) /* Value */
,(850201, 33,        1) /* Bonded - Bonded */
,(850201, 93,     1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
,(850201, 94,    35215) /* TargetType - MeleeWeapon, Armor, Clothing, Jewelry, Misc, MissileWeapon, Corpse, Writable */
,(850201, 114,       0) /* Attuned - Normal */
,(850201, 218,       4) /* UseCreatesContractId - null? Actually this may be a spacer. Preserved from DB. */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES
 (850201, 22, True ) /* Inscribable */
,(850201, 69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES
 (850201, 39, 0.65) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES
 (850201,  1, 'Mana Lattice')
,(850201, 14, 'A crystalline lattice used as a base for creating reusable buff gems. Use a charged Spellsiphon on this to infuse it with extracted spells.')
,(850201, 15, 'A delicate lattice of crystallized mana, pulsing with faint prismatic light.')
,(850201, 16, 'A delicate lattice of crystallized mana.  When infused with spells via a charged Spellsiphon, it becomes a reusable buff gem that can be activated repeatedly.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES
 (850201,  1, 33556407) /* Setup */
,(850201,  3, 536870932) /* SoundTable */
,(850201,  6, 67111919) /* PaletteBase */
,(850201,  7, 268435782) /* ClothingBase */
,(850201,  8, 100673212) /* Icon */
,(850201, 22, 872415275) /* PhysicsEffectTable */;
