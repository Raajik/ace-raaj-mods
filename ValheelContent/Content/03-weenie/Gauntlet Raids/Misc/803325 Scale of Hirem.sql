DELETE FROM `weenie` WHERE `class_Id` = 803325;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803325, 'Scale of Hirem', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803325,   1,        128) /* ItemType - Misc */
     , (803325,   3,         21) /* PaletteTemplate - Gold */
     , (803325,   5,          0) /* EncumbranceVal */
     , (803325,   8,          1) /* Mass */
     , (803325,   9,          0) /* ValidLocations - None */
     , (803325,  11,          1) /* MaxStackSize */
     , (803325,  12,          1) /* StackSize */
     , (803325,  15,        200) /* StackUnitValue */
     , (803325,  16,          1) /* ItemUseable - No */
     , (803325,  18,          0) /* UiEffects - Magical */
     , (803325,  19,        200) /* Value */
     , (803325,  33,          1) /* Bonded - Bonded */
     , (803325,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803325, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803325,  22, True ) /* Inscribable */
     , (803325,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803325,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803325,   1, 'Scale of Hirem') /* Name */
     , (803325,  15, 'Use these scales to purchase a Glyph of Transcendence.') /* ShortDesc */
     , (803325,  33, 'HiremPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803325,   1,   33554802) /* Setup */
     , (803325,   6,   67111919) /* PaletteBase */
     , (803325,   7,  268435747) /* ClothingBase */
     , (803325,   8,  100691622) /* Icon */
	 /* , (803325,  50,  100691622) /* IconOverlay */
     , (803325,  52,  100676435) /* IconUnderlay */;
