DELETE FROM `weenie` WHERE `class_Id` = 802751;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802751, 'Feather of Freedom', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802751,   1,        128) /* ItemType - Misc */
     , (802751,   3,         21) /* PaletteTemplate - Gold */
     , (802751,   5,          0) /* EncumbranceVal */
     , (802751,   8,          1) /* Mass */
     , (802751,   9,          0) /* ValidLocations - None */
     , (802751,  11,          1) /* MaxStackSize */
     , (802751,  12,          1) /* StackSize */
     , (802751,  15,          1) /* StackUnitValue */
     , (802751,  16,          1) /* ItemUseable - No */
     , (802751,  18,          1) /* UiEffects - Magical */
     , (802751,  19,          1) /* Value */
     , (802751,  33,          1) /* Bonded - Bonded */
     , (802751,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802751, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802751,  22, True ) /* Inscribable */
     , (802751,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802751,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802751,   1, 'Feather of Freedom') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802751,   1,   33554802) /* Setup */
     , (802751,   6,   67111919) /* PaletteBase */
     , (802751,   7,  268435747) /* ClothingBase */
     , (802751,   8,  100690199) /* Icon */
	 /* , (802751,  50,  100689497) /* IconOverlay */
     /* , (802751,  52,  100689404) /* IconUnderlay */;
