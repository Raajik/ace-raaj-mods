DELETE FROM `weenie` WHERE `class_Id` = 802748;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802748, 'CoinOfSubjection', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802748,   1,        128) /* ItemType - Misc */
     , (802748,   3,         21) /* PaletteTemplate - Gold */
     , (802748,   5,          0) /* EncumbranceVal */
     , (802748,   8,          1) /* Mass */
     , (802748,   9,          0) /* ValidLocations - None */
     , (802748,  11,          1) /* MaxStackSize */
     , (802748,  12,          1) /* StackSize */
     , (802748,  15,          1) /* StackUnitValue */
     , (802748,  16,          1) /* ItemUseable - No */
     , (802748,  18,          1) /* UiEffects - Magical */
     , (802748,  19,          1) /* Value */
     , (802748,  33,          1) /* Bonded - Bonded */
     , (802748,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802748, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802748,  22, True ) /* Inscribable */
     , (802748,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802748,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802748,   1, 'Coin of Subjection') /* Name */
     , (802748,  33, 'SubjectionPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802748,   1,   33554802) /* Setup */
     , (802748,   6,   67111919) /* PaletteBase */
     , (802748,   7,  268435747) /* ClothingBase */
     , (802748,   8,  100687685) /* Icon */
	 /* , (802748,  50,  100689497) /* IconOverlay */
     /* , (802748,  52,  100689404) /* IconUnderlay */;
