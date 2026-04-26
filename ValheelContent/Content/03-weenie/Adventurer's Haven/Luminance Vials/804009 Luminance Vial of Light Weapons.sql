DELETE FROM `weenie` WHERE `class_Id` = 804009;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804009, 'Luminance Vial of Light Weapons', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804009,   1,        128) /* ItemType - Misc */
     , (804009,   5,       4000) /* EncumbranceVal */
     , (804009,   8,          5) /* Mass */
     , (804009,   9,          0) /* ValidLocations - None */
     , (804009,  11,          1) /* MaxStackSize */
     , (804009,  12,          1) /* StackSize */
     , (804009,  13,          1) /* StackUnitEncumbrance */
     , (804009,  14,          5) /* StackUnitMass */
     , (804009,  15,         15) /* StackUnitValue */
     , (804009,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804009,  19,         15) /* Value */
     , (804009,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804009,  94,          1) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804009,  22, True ) /* Inscribable */
     , (804009,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804009,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804009,   1, 'Luminance Vial of Light Weapons') /* Name */
     , (804009,  14, 'Apply this to any melee weapon to change the equip requirement to Light Weapon.') /* Use */
     , (804009,  15, 'Using this will only change the Weapon Skill requirement, not the Combat Style.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804009,   1,   33559631) /* Setup */
     , (804009,   3,  536870932) /* SoundTable */
     , (804009,   6,   67116700) /* PaletteBase */
     , (804009,   8,  100671585) /* Icon */
     , (804009,  22,  872415275) /* PhysicsEffectTable */
     , (804009,  52,  100676435) /* IconUnderlay */;
