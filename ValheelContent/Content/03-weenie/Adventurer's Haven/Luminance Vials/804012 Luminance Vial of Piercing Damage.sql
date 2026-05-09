DELETE FROM `weenie` WHERE `class_Id` = 804012;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804012, 'Luminance Vial of Piercing Damage', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804012,   1,        128) /* ItemType - Misc */
     , (804012,   5,       4000) /* EncumbranceVal */
     , (804012,   8,          5) /* Mass */
     , (804012,   9,          0) /* ValidLocations - None */
     , (804012,  11,          1) /* MaxStackSize */
     , (804012,  12,          1) /* StackSize */
     , (804012,  13,          1) /* StackUnitEncumbrance */
     , (804012,  14,          5) /* StackUnitMass */
     , (804012,  15,         15) /* StackUnitValue */
     , (804012,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804012,  19,         15) /* Value */
     , (804012,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804012,  94,      33025) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804012,  22, True ) /* Inscribable */
     , (804012,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804012,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804012,   1, 'Luminance Vial of Piercing Damage') /* Name */
     , (804012,  14, 'Apply this to any weapon to change the damage type to Piercing.') /* Use */
     , (804012,  15, 'USE THIS BEFORE ALLOWING THE WEAPON TO RENDER!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804012,   1,   33559631) /* Setup */
     , (804012,   3,  536870932) /* SoundTable */
     , (804012,   6,   67116700) /* PaletteBase */
     , (804012,   8,  100671580) /* Icon */
     , (804012,  22,  872415275) /* PhysicsEffectTable */
     , (804012,  52,  100676435) /* IconUnderlay */;
