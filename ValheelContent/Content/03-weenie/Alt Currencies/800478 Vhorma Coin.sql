DELETE FROM `weenie` WHERE `class_Id` = 800478;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800478, 'Vhorma Coin', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800478,   1,        128) /* ItemType - Misc */
     , (800478,   3,         21) /* PaletteTemplate - Gold */
     , (800478,   5,          0) /* EncumbranceVal */
     , (800478,   8,          1) /* Mass */
     , (800478,   9,          0) /* ValidLocations - None */
     , (800478,  11,      50000) /* MaxStackSize */
     , (800478,  12,          1) /* StackSize */
     , (800478,  15,          1) /* StackUnitValue */
     , (800478,  16,          1) /* ItemUseable - No */
     , (800478,  18,          1) /* UiEffects - Magical */
     , (800478,  19,          1) /* Value */
     , (800478,  33,          1) /* Bonded - Bonded */
     , (800478,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800478, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800478,  22, True ) /* Inscribable */
     , (800478,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800478,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800478,   1, 'Vhorma Coin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800478,   1,   33554802) /* Setup */
     , (800478,   6,   67111919) /* PaletteBase */
     , (800478,   7,  268435747) /* ClothingBase */
     , (800478,   8,  27038) /* Icon */
	 , (800478,  50,  100689497) /* IconOverlay */
     /* , (800478,  52,  100689404) /* IconUnderlay */;
