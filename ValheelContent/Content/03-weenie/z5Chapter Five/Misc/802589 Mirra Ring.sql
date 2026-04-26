DELETE FROM `weenie` WHERE `class_Id` = 802589;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802589, 'MirraRing', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802589,   1,        128) /* ItemType - Misc */
     , (802589,   3,         21) /* PaletteTemplate - Gold */
     , (802589,   5,          0) /* EncumbranceVal */
     , (802589,   8,          1) /* Mass */
     , (802589,   9,          0) /* ValidLocations - None */
     , (802589,  11,      50000) /* MaxStackSize */
     , (802589,  12,          1) /* StackSize */
     , (802589,  15,        200) /* StackUnitValue */
     , (802589,  16,          1) /* ItemUseable - No */
     , (802589,  18,          1) /* UiEffects - Magical */
     , (802589,  19,        200) /* Value */
     , (802589,  33,          1) /* Bonded - Bonded */
     , (802589,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802589, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802589,  22, True ) /* Inscribable */
     , (802589,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802589,  39,     1.1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802589,   1, 'Mirra Ring') /* Name */
     , (802589,  15, 'This Currency is to be used in the Kou-an Settlement.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802589,   1,   33554802) /* Setup */
     , (802589,   6,   67111919) /* PaletteBase */
     , (802589,   7,  268435747) /* ClothingBase */
     , (802589,   8,  100671122) /* Icon */
	 /*, (802589,  50,      28280) /* IconOverlay */
     , (802589,  52,  100689404) /* IconUnderlay */;
