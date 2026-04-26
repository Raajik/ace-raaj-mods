DELETE FROM `weenie` WHERE `class_Id` = 802749;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802749, 'FeatherOfJustice', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802749,   1,        128) /* ItemType - Misc */
     , (802749,   3,         21) /* PaletteTemplate - Gold */
     , (802749,   5,          0) /* EncumbranceVal */
     , (802749,   8,          1) /* Mass */
     , (802749,   9,          0) /* ValidLocations - None */
     , (802749,  11,          1) /* MaxStackSize */
     , (802749,  12,          1) /* StackSize */
     , (802749,  15,          1) /* StackUnitValue */
     , (802749,  16,          1) /* ItemUseable - No */
     , (802749,  18,          1) /* UiEffects - Magical */
     , (802749,  19,          1) /* Value */
     , (802749,  33,          1) /* Bonded - Bonded */
     , (802749,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802749, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802749,  22, True ) /* Inscribable */
     , (802749,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802749,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802749,   1, 'Feather of Injustice') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802749,   1,   33554802) /* Setup */
     , (802749,   6,   67111919) /* PaletteBase */
     , (802749,   7,  268435747) /* ClothingBase */
     , (802749,   8,  100690197) /* Icon */
	 /* , (802749,  50,  100689497) /* IconOverlay */
     /* , (802749,  52,  100689404) /* IconUnderlay */;
