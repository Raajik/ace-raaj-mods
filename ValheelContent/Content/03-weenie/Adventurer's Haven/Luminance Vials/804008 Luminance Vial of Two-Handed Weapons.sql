DELETE FROM `weenie` WHERE `class_Id` = 804008;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804008, 'Luminance Vial of Two-Handed Weapons', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804008,   1,        128) /* ItemType - Misc */
     , (804008,   5,       4000) /* EncumbranceVal */
     , (804008,   8,          5) /* Mass */
     , (804008,   9,          0) /* ValidLocations - None */
     , (804008,  11,          1) /* MaxStackSize */
     , (804008,  12,          1) /* StackSize */
     , (804008,  13,          1) /* StackUnitEncumbrance */
     , (804008,  14,          5) /* StackUnitMass */
     , (804008,  15,         15) /* StackUnitValue */
     , (804008,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804008,  19,         15) /* Value */
     , (804008,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804008,  94,          1) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804008,  22, True ) /* Inscribable */
     , (804008,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804008,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804008,   1, 'Luminance Vial of Two-Handed Weapons') /* Name */
     , (804008,  14, 'Apply this to any melee weapon to change the equip requirement to Two-Handed Weapon.') /* Use */
     , (804008,  15, 'Using this will only change the Weapon Skill requirement, not the Combat Style.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804008,   1,   33559631) /* Setup */
     , (804008,   3,  536870932) /* SoundTable */
     , (804008,   6,   67116700) /* PaletteBase */
     , (804008,   8,  100671584) /* Icon */
     , (804008,  22,  872415275) /* PhysicsEffectTable */
     , (804008,  52,  100676435) /* IconUnderlay */;
