DELETE FROM `weenie` WHERE `class_Id` = 804015;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804015, 'Luminance Vial of Acid Damage', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804015,   1,        128) /* ItemType - Misc */
     , (804015,   5,       4000) /* EncumbranceVal */
     , (804015,   8,          5) /* Mass */
     , (804015,   9,          0) /* ValidLocations - None */
     , (804015,  11,          1) /* MaxStackSize */
     , (804015,  12,          1) /* StackSize */
     , (804015,  13,          1) /* StackUnitEncumbrance */
     , (804015,  14,          5) /* StackUnitMass */
     , (804015,  15,         15) /* StackUnitValue */
     , (804015,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804015,  19,         15) /* Value */
     , (804015,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804015,  94,      33025) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804015,  22, True ) /* Inscribable */
     , (804015,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804015,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804015,   1, 'Luminance Vial of Acid Damage') /* Name */
     , (804015,  14, 'Apply this to any weapon to change the damage type to Acid.') /* Use */
     , (804015,  15, 'USE THIS BEFORE ALLOWING THE WEAPON TO RENDER!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804015,   1,   33559631) /* Setup */
     , (804015,   3,  536870932) /* SoundTable */
     , (804015,   6,   67116700) /* PaletteBase */
     , (804015,   8,  100671573) /* Icon */
     , (804015,  22,  872415275) /* PhysicsEffectTable */
     , (804015,  52,  100676435) /* IconUnderlay */;
