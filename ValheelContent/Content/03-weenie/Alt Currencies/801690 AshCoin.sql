DELETE FROM `weenie` WHERE `class_Id` = 801690;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801690, 'AshCoin', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801690,   1,        128) /* ItemType - Misc */
     , (801690,   3,         21) /* PaletteTemplate - Gold */
     , (801690,   5,          0) /* EncumbranceVal */
     , (801690,   8,          1) /* Mass */
     , (801690,   9,          0) /* ValidLocations - None */
     , (801690,  11,      50000) /* MaxStackSize */
     , (801690,  12,          1) /* StackSize */
     , (801690,  15,        200) /* StackUnitValue */
     , (801690,  16,          1) /* ItemUseable - No */
     , (801690,  18,         64) /* UiEffects - Magical */
     , (801690,  19,        200) /* Value */
     , (801690,  33,          1) /* Bonded - Bonded */
     , (801690,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801690, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801690,  22, True ) /* Inscribable */
     , (801690,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801690,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801690,   1, 'AshCoin') /* Name */
     , (801690,  15, 'This Currency is to be used at any Token Exchange.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801690,   1,   33554802) /* Setup */
     , (801690,   6,   67111919) /* PaletteBase */
     , (801690,   7,  268435747) /* ClothingBase */
     , (801690,   8,      28060) /* Icon */
	 , (801690,  50,      28280) /* IconOverlay */
     , (801690,  52,  100689404) /* IconUnderlay */;
