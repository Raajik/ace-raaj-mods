DELETE FROM `weenie` WHERE `class_Id` = 801400;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801400, 'FireSpireCoins', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801400,   1,        128) /* ItemType - Misc */
     , (801400,   3,         21) /* PaletteTemplate - Gold */
     , (801400,   5,          0) /* EncumbranceVal */
     , (801400,   8,          1) /* Mass */
     , (801400,   9,          0) /* ValidLocations - None */
     , (801400,  11,      50000) /* MaxStackSize */
     , (801400,  12,          1) /* StackSize */
     , (801400,  15,          1) /* StackUnitValue */
     , (801400,  16,          1) /* ItemUseable - No */
     , (801400,  18,          1) /* UiEffects - Magical */
     , (801400,  19,          1) /* Value */
     , (801400,  33,          1) /* Bonded - Bonded */
     , (801400,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801400, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801400,  22, True ) /* Inscribable */
     , (801400,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801400,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801400,   1, 'FireSpire Coin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801400,   1,   33554802) /* Setup */
     , (801400,   6,   67111919) /* PaletteBase */
     , (801400,   7,  268435747) /* ClothingBase */
     , (801400,   8,      25702) /* Icon */
	 , (801400,  50,       9442) /* IconOverlay */
     /* , (801400,  52,  100689404) /* IconUnderlay */;
