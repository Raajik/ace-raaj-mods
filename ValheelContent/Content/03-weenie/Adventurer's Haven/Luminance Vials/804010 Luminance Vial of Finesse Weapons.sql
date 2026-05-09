DELETE FROM `weenie` WHERE `class_Id` = 804010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804010, 'Luminance Vial of Finesse Weapons', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804010,   1,        128) /* ItemType - Misc */
     , (804010,   5,       4000) /* EncumbranceVal */
     , (804010,   8,          5) /* Mass */
     , (804010,   9,          0) /* ValidLocations - None */
     , (804010,  11,          1) /* MaxStackSize */
     , (804010,  12,          1) /* StackSize */
     , (804010,  13,          1) /* StackUnitEncumbrance */
     , (804010,  14,          5) /* StackUnitMass */
     , (804010,  15,         15) /* StackUnitValue */
     , (804010,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804010,  19,         15) /* Value */
     , (804010,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804010,  94,          1) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804010,  22, True ) /* Inscribable */
     , (804010,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804010,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804010,   1, 'Luminance Vial of Finesse Weapons') /* Name */
     , (804010,  14, 'Apply this to any melee weapon to change the equip requirement to Finesse Weapon.') /* Use */
     , (804010,  15, 'Using this will only change the Weapon Skill requirement, not the Combat Style.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804010,   1,   33559631) /* Setup */
     , (804010,   3,  536870932) /* SoundTable */
     , (804010,   6,   67116700) /* PaletteBase */
     , (804010,   8,  100671586) /* Icon */
     , (804010,  22,  872415275) /* PhysicsEffectTable */
     , (804010,  52,  100676435) /* IconUnderlay */;
