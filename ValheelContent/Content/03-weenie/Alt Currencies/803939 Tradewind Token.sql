DELETE FROM `weenie` WHERE `class_Id` = 803939;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803939, 'Tradewind Token', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803939,   1,        128) /* ItemType - Misc */
     , (803939,   3,         21) /* PaletteTemplate - Gold */
     , (803939,   5,          0) /* EncumbranceVal */
     , (803939,   8,          1) /* Mass */
     , (803939,   9,          0) /* ValidLocations - None */
     , (803939,  11,      50000) /* MaxStackSize */
     , (803939,  12,          1) /* StackSize */
     , (803939,  15,          1) /* StackUnitValue */
     , (803939,  16,          1) /* ItemUseable - No */
     , (803939,  18,          0) /* UiEffects - Magical */
     , (803939,  19,          1) /* Value */
     , (803939,  33,          1) /* Bonded - Bonded */
     , (803939,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803939, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803939,  22, True ) /* Inscribable */
     , (803939,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803939,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803939,   1, 'Tradewind''s Path Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803939,   1,   33554802) /* Setup */
     , (803939,   6,   67111919) /* PaletteBase */
     , (803939,   7,  268435747) /* ClothingBase */
     , (803939,   8,  100671944) /* Icon */
	 , (803939,  50,  100674805) /* IconOverlay */
     /* , (803939,  52,  100689404) /* IconUnderlay */;
