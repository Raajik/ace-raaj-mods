DELETE FROM `weenie` WHERE `class_Id` = 800850;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800850, 'Tradewind''s Path Token', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800850,   1,        128) /* ItemType - Misc */
     , (800850,   3,         21) /* PaletteTemplate - Gold */
     , (800850,   5,          0) /* EncumbranceVal */
     , (800850,   8,          1) /* Mass */
     , (800850,   9,          0) /* ValidLocations - None */
     , (800850,  11,      50000) /* MaxStackSize */
     , (800850,  12,          1) /* StackSize */
     , (800850,  15,          1) /* StackUnitValue */
     , (800850,  16,          1) /* ItemUseable - No */
     , (800850,  18,          1) /* UiEffects - Magical */
     , (800850,  19,          1) /* Value */
     , (800850,  33,          1) /* Bonded - Bonded */
     , (800850,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800850, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800850,  22, True ) /* Inscribable */
     , (800850,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800850,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800850,   1, 'Tradewind''s Path Token') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800850,   1,   33554802) /* Setup */
     , (800850,   6,   67111919) /* PaletteBase */
     , (800850,   7,  268435747) /* ClothingBase */
     , (800850,   8,  27040) /* Icon */
	 , (800850,  50,  28754) /* IconOverlay */
     /* , (800850,  52,  100689404) /* IconUnderlay */;
