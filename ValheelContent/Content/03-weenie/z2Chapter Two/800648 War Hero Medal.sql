DELETE FROM `weenie` WHERE `class_Id` = 800648;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800648, 'War Hero Medal', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800648,   1,        128) /* ItemType - Misc */
     , (800648,   3,         21) /* PaletteTemplate - Gold */
     , (800648,   5,          0) /* EncumbranceVal */
     , (800648,   8,          1) /* Mass */
     , (800648,   9,          0) /* ValidLocations - None */
     , (800648,  11,          1) /* MaxStackSize */
     , (800648,  12,          1) /* StackSize */
     , (800648,  15,          1) /* StackUnitValue */
     , (800648,  16,          1) /* ItemUseable - No */
     , (800648,  18,          1) /* UiEffects - Magical */
     , (800648,  19,          1) /* Value */
     , (800648,  33,          1) /* Bonded - Bonded */
     , (800648,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800648, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800648,  22, True ) /* Inscribable */
     , (800648,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800648,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800648,   1, 'War Hero Medal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800648,   1,   33554802) /* Setup */
     , (800648,   6,   67111919) /* PaletteBase */
     , (800648,   7,  268435747) /* ClothingBase */
     , (800648,   8,  26165) /* Icon */
	 , (800648,  50,  28280) /* IconOverlay */
     , (800648,  52,  100689404) /* IconUnderlay */;
