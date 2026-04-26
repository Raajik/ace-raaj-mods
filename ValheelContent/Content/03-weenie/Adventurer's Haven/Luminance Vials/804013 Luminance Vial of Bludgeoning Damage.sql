DELETE FROM `weenie` WHERE `class_Id` = 804013;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804013, 'Luminance Vial of Bludgeoning Damage', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804013,   1,        128) /* ItemType - Misc */
     , (804013,   5,       4000) /* EncumbranceVal */
     , (804013,   8,          5) /* Mass */
     , (804013,   9,          0) /* ValidLocations - None */
     , (804013,  11,          1) /* MaxStackSize */
     , (804013,  12,          1) /* StackSize */
     , (804013,  13,          1) /* StackUnitEncumbrance */
     , (804013,  14,          5) /* StackUnitMass */
     , (804013,  15,         15) /* StackUnitValue */
     , (804013,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804013,  19,         15) /* Value */
     , (804013,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804013,  94,      33025) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804013,  22, True ) /* Inscribable */
     , (804013,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804013,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804013,   1, 'Luminance Vial of Bludgeoning Damage') /* Name */
     , (804013,  14, 'Apply this to any weapon to change the damage type to Bludgeoning.') /* Use */
     , (804013,  15, 'USE THIS BEFORE ALLOWING THE WEAPON TO RENDER!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804013,   1,   33559631) /* Setup */
     , (804013,   3,  536870932) /* SoundTable */
     , (804013,   6,   67116700) /* PaletteBase */
     , (804013,   8,  100671577) /* Icon */
     , (804013,  22,  872415275) /* PhysicsEffectTable */
     , (804013,  52,  100676435) /* IconUnderlay */;
