DELETE FROM `weenie` WHERE `class_Id` = 804011;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804011, 'Luminance Vial of Slashing Damage', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804011,   1,        128) /* ItemType - Misc */
     , (804011,   5,       4000) /* EncumbranceVal */
     , (804011,   8,          5) /* Mass */
     , (804011,   9,          0) /* ValidLocations - None */
     , (804011,  11,          1) /* MaxStackSize */
     , (804011,  12,          1) /* StackSize */
     , (804011,  13,          1) /* StackUnitEncumbrance */
     , (804011,  14,          5) /* StackUnitMass */
     , (804011,  15,         15) /* StackUnitValue */
     , (804011,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (804011,  19,         15) /* Value */
     , (804011,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804011,  94,      33025) /* TargetType - MeleeWeapon */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804011,  22, True ) /* Inscribable */
     , (804011,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804011,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804011,   1, 'Luminance Vial of Slashing Damage') /* Name */
     , (804011,  14, 'Apply this to any weapon to change the damage type to Slashing.') /* Use */
     , (804011,  15, 'USE THIS BEFORE ALLOWING THE WEAPON TO RENDER!') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804011,   1,   33559631) /* Setup */
     , (804011,   3,  536870932) /* SoundTable */
     , (804011,   6,   67116700) /* PaletteBase */
     , (804011,   8,  100671576) /* Icon */
     , (804011,  22,  872415275) /* PhysicsEffectTable */
     , (804011,  52,  100676435) /* IconUnderlay */;
