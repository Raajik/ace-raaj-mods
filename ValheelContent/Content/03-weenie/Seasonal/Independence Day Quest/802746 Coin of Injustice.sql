DELETE FROM `weenie` WHERE `class_Id` = 802746;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802746, 'CoinOfInjustice', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802746,   1,        128) /* ItemType - Misc */
     , (802746,   3,         21) /* PaletteTemplate - Gold */
     , (802746,   5,          0) /* EncumbranceVal */
     , (802746,   8,          1) /* Mass */
     , (802746,   9,          0) /* ValidLocations - None */
     , (802746,  11,          1) /* MaxStackSize */
     , (802746,  12,          1) /* StackSize */
     , (802746,  15,          1) /* StackUnitValue */
     , (802746,  16,          1) /* ItemUseable - No */
     , (802746,  18,          1) /* UiEffects - Magical */
     , (802746,  19,          1) /* Value */
     , (802746,  33,          1) /* Bonded - Bonded */
     , (802746,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802746, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802746,  22, True ) /* Inscribable */
     , (802746,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802746,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802746,   1, 'Coin of Injustice') /* Name */
     , (802746,  33, 'InjusticePickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802746,   1,   33554802) /* Setup */
     , (802746,   6,   67111919) /* PaletteBase */
     , (802746,   7,  268435747) /* ClothingBase */
     , (802746,   8,  100687684) /* Icon */
	 /* , (802746,  50,  100689497) /* IconOverlay */
     /* , (802746,  52,  100689404) /* IconUnderlay */;
