DELETE FROM `weenie` WHERE `class_Id` = 803254;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803254, 'Scalemarks', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803254,   1,        128) /* ItemType - Misc */
     , (803254,   3,         21) /* PaletteTemplate - Gold */
     , (803254,   5,          0) /* EncumbranceVal */
     , (803254,   8,          1) /* Mass */
     , (803254,   9,          0) /* ValidLocations - None */
     , (803254,  11,      50000) /* MaxStackSize */
     , (803254,  12,          1) /* StackSize */
     , (803254,  15,        200) /* StackUnitValue */
     , (803254,  16,          1) /* ItemUseable - No */
     , (803254,  18,          0) /* UiEffects - Magical */
     , (803254,  19,        200) /* Value */
     , (803254,  33,          1) /* Bonded - Bonded */
     , (803254,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803254, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803254,  22, True ) /* Inscribable */
     , (803254,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803254,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803254,   1, 'Scalemarks') /* Name */
     , (803254,  15, 'Scales of arken metal that can be melted down at a Drakin Forge.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803254,   1,   33554802) /* Setup */
     , (803254,   6,   67111919) /* PaletteBase */
     , (803254,   7,  268435747) /* ClothingBase */
     , (803254,   8,  100691622) /* Icon */
	 /* , (803254,  50,  100691622) /* IconOverlay */
     , (803254,  52,  100686604) /* IconUnderlay */;
