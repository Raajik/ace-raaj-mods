DELETE FROM `weenie` WHERE `class_Id` = 804018;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804018, 'Luminance Vial of Nether Damage', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804018,   1,        128) /* ItemType - Misc */
     , (804018,   5,       4000) /* EncumbranceVal */
     , (804018,   8,          5) /* Mass */
     , (804018,   9,          0) /* ValidLocations - None */
     , (804018,  11,          1) /* MaxStackSize */
     , (804018,  12,          1) /* StackSize */
     , (804018,  13,          1) /* StackUnitEncumbrance */
     , (804018,  14,          5) /* StackUnitMass */
     , (804018,  15,         15) /* StackUnitValue */
     , (804018,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804018,  19,         15) /* Value */
     , (804018,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804018,  94,      33025) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804018,  22, True ) /* Inscribable */
     , (804018,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804018,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804018,   1, 'Luminance Vial of Nether Damage') /* Name */
     , (804018,  14, 'Apply this to any weapon to change the damage type to Nether.') /* Use */
     , (804018,  15, 'USE THIS BEFORE ALLOWING THE WEAPON TO RENDER!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804018,   1,   33559631) /* Setup */
     , (804018,   3,  536870932) /* SoundTable */
     , (804018,   6,   67116700) /* PaletteBase */
     , (804018,   8,  100671574) /* Icon */
     , (804018,  22,  872415275) /* PhysicsEffectTable */
     , (804018,  52,  100676435) /* IconUnderlay */;
