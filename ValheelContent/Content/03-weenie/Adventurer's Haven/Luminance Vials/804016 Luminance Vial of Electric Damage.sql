DELETE FROM `weenie` WHERE `class_Id` = 804016;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804016, 'Luminance Vial of Electric Damage', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804016,   1,        128) /* ItemType - Misc */
     , (804016,   5,       4000) /* EncumbranceVal */
     , (804016,   8,          5) /* Mass */
     , (804016,   9,          0) /* ValidLocations - None */
     , (804016,  11,          1) /* MaxStackSize */
     , (804016,  12,          1) /* StackSize */
     , (804016,  13,          1) /* StackUnitEncumbrance */
     , (804016,  14,          5) /* StackUnitMass */
     , (804016,  15,         15) /* StackUnitValue */
     , (804016,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804016,  19,         15) /* Value */
     , (804016,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804016,  94,      33025) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804016,  22, True ) /* Inscribable */
     , (804016,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804016,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804016,   1, 'Luminance Vial of Electric Damage') /* Name */
     , (804016,  14, 'Apply this to any weapon to change the damage type to Electric.') /* Use */
     , (804016,  15, 'USE THIS BEFORE ALLOWING THE WEAPON TO RENDER!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804016,   1,   33559631) /* Setup */
     , (804016,   3,  536870932) /* SoundTable */
     , (804016,   6,   67116700) /* PaletteBase */
     , (804016,   8,  100671575) /* Icon */
     , (804016,  22,  872415275) /* PhysicsEffectTable */
     , (804016,  52,  100676435) /* IconUnderlay */;
