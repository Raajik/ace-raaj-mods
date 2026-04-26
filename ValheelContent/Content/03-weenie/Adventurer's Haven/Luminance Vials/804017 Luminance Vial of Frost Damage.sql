DELETE FROM `weenie` WHERE `class_Id` = 804017;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804017, 'Luminance Vial of Frost Damage', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804017,   1,        128) /* ItemType - Misc */
     , (804017,   5,       4000) /* EncumbranceVal */
     , (804017,   8,          5) /* Mass */
     , (804017,   9,          0) /* ValidLocations - None */
     , (804017,  11,          1) /* MaxStackSize */
     , (804017,  12,          1) /* StackSize */
     , (804017,  13,          1) /* StackUnitEncumbrance */
     , (804017,  14,          5) /* StackUnitMass */
     , (804017,  15,         15) /* StackUnitValue */
     , (804017,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804017,  19,         15) /* Value */
     , (804017,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804017,  94,      33025) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804017,  22, True ) /* Inscribable */
     , (804017,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804017,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804017,   1, 'Luminance Vial of Frost Damage') /* Name */
     , (804017,  14, 'Apply this to any weapon to change the damage type to Frost.') /* Use */
     , (804017,  15, 'USE THIS BEFORE ALLOWING THE WEAPON TO RENDER!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804017,   1,   33559631) /* Setup */
     , (804017,   3,  536870932) /* SoundTable */
     , (804017,   6,   67116700) /* PaletteBase */
     , (804017,   8,  100671579) /* Icon */
     , (804017,  22,  872415275) /* PhysicsEffectTable */
     , (804017,  52,  100676435) /* IconUnderlay */;
