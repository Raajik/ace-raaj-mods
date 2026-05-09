DELETE FROM `weenie` WHERE `class_Id` = 802750;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802750, 'FeatherOfLiberty', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802750,   1,        128) /* ItemType - Misc */
     , (802750,   3,         21) /* PaletteTemplate - Gold */
     , (802750,   5,          0) /* EncumbranceVal */
     , (802750,   8,          1) /* Mass */
     , (802750,   9,          0) /* ValidLocations - None */
     , (802750,  11,          1) /* MaxStackSize */
     , (802750,  12,          1) /* StackSize */
     , (802750,  15,          1) /* StackUnitValue */
     , (802750,  16,          1) /* ItemUseable - No */
     , (802750,  18,          1) /* UiEffects - Magical */
     , (802750,  19,          1) /* Value */
     , (802750,  33,          1) /* Bonded - Bonded */
     , (802750,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802750, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802750,  22, True ) /* Inscribable */
     , (802750,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802750,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802750,   1, 'Feather of Liberty') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802750,   1,   33554802) /* Setup */
     , (802750,   6,   67111919) /* PaletteBase */
     , (802750,   7,  268435747) /* ClothingBase */
     , (802750,   8,  100690196) /* Icon */
	 /* , (802750,  50,  100689497) /* IconOverlay */
     /* , (802750,  52,  100689404) /* IconUnderlay */;
