DELETE FROM `weenie` WHERE `class_Id` = 804014;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804014, 'Luminance Vial of Fire Damage', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804014,   1,        128) /* ItemType - Misc */
     , (804014,   5,       4000) /* EncumbranceVal */
     , (804014,   8,          5) /* Mass */
     , (804014,   9,          0) /* ValidLocations - None */
     , (804014,  11,          1) /* MaxStackSize */
     , (804014,  12,          1) /* StackSize */
     , (804014,  13,          1) /* StackUnitEncumbrance */
     , (804014,  14,          5) /* StackUnitMass */
     , (804014,  15,         15) /* StackUnitValue */
     , (804014,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804014,  19,         15) /* Value */
     , (804014,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804014,  94,      33025) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804014,  22, True ) /* Inscribable */
     , (804014,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804014,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804014,   1, 'Luminance Vial of Fire Damage') /* Name */
     , (804014,  14, 'Apply this to any weapon to change the damage type to Fire.') /* Use */
     , (804014,  15, 'USE THIS BEFORE ALLOWING THE WEAPON TO RENDER!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804014,   1,   33559631) /* Setup */
     , (804014,   3,  536870932) /* SoundTable */
     , (804014,   6,   67116700) /* PaletteBase */
     , (804014,   8,  100671578) /* Icon */
     , (804014,  22,  872415275) /* PhysicsEffectTable */
     , (804014,  52,  100676435) /* IconUnderlay */;
