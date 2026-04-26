DELETE FROM `weenie` WHERE `class_Id` = 803711;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803711, 'Blood Gem', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803711,   1,        128) /* ItemType - Misc */
     , (803711,   5,          1) /* EncumbranceVal */
     , (803711,   8,          1) /* Mass */
     , (803711,   9,          0) /* ValidLocations - None */
     , (803711,  11,        500) /* MaxStackSize */
     , (803711,  12,          1) /* StackSize */
     , (803711,  15,          1) /* StackUnitValue */
     , (803711,  16,          1) /* ItemUseable - No */
     , (803711,  18,          0) /* UiEffects - Magical */
     , (803711,  19,          1) /* Value */
     , (803711,  33,          1) /* Bonded - Bonded */
     , (803711,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803711, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803711,  22, True ) /* Inscribable */
     , (803711,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803711,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803711,   1, 'Blood Gem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803711,   1,   33554802) /* Setup */
     , (803711,   6,   67111919) /* PaletteBase */
     , (803711,   7,  268435747) /* ClothingBase */
     , (803711,   8,  100670644) /* Icon */
	 , (803711,  50,  100673091) /* IconOverlay */
     , (803711,  52,  100689404) /* IconUnderlay */;
