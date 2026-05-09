DELETE FROM `weenie` WHERE `class_Id` = 804007;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804007, 'Luminance Vial of Heavy Weapons', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804007,   1,        128) /* ItemType - Misc */
     , (804007,   5,       4000) /* EncumbranceVal */
     , (804007,   8,          5) /* Mass */
     , (804007,   9,          0) /* ValidLocations - None */
     , (804007,  11,          1) /* MaxStackSize */
     , (804007,  12,          1) /* StackSize */
     , (804007,  13,          1) /* StackUnitEncumbrance */
     , (804007,  14,          5) /* StackUnitMass */
     , (804007,  15,         15) /* StackUnitValue */
     , (804007,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804007,  19,         15) /* Value */
     , (804007,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804007,  94,          1) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804007,  22, True ) /* Inscribable */
     , (804007,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804007,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804007,   1, 'Luminance Vial of Heavy Weapons') /* Name */
     , (804007,  14, 'Apply this to any melee weapon to change the equip requirement to Heavy Weapon.') /* Use */
     , (804007,  15, 'Using this will only change the Weapon Skill requirement, not the Combat Style.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804007,   1,   33559631) /* Setup */
     , (804007,   3,  536870932) /* SoundTable */
     , (804007,   6,   67116700) /* PaletteBase */
     , (804007,   8,  100671583) /* Icon */
     , (804007,  22,  872415275) /* PhysicsEffectTable */
     , (804007,  52,  100676435) /* IconUnderlay */;
