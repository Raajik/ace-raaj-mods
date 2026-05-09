DELETE FROM `weenie` WHERE `class_Id` = 802747;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802747, 'CoinOfOppression', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802747,   1,        128) /* ItemType - Misc */
     , (802747,   3,         21) /* PaletteTemplate - Gold */
     , (802747,   5,          0) /* EncumbranceVal */
     , (802747,   8,          1) /* Mass */
     , (802747,   9,          0) /* ValidLocations - None */
     , (802747,  11,          1) /* MaxStackSize */
     , (802747,  12,          1) /* StackSize */
     , (802747,  15,          1) /* StackUnitValue */
     , (802747,  16,          1) /* ItemUseable - No */
     , (802747,  18,          1) /* UiEffects - Magical */
     , (802747,  19,          1) /* Value */
     , (802747,  33,          1) /* Bonded - Bonded */
     , (802747,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802747, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802747,  22, True ) /* Inscribable */
     , (802747,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802747,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802747,   1, 'Coin of Oppression') /* Name */
     , (802747,  33, 'OppressionPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802747,   1,   33554802) /* Setup */
     , (802747,   6,   67111919) /* PaletteBase */
     , (802747,   7,  268435747) /* ClothingBase */
     , (802747,   8,  100687683) /* Icon */
	 /* , (802747,  50,  100689497) /* IconOverlay */
     /* , (802747,  52,  100689404) /* IconUnderlay */;
