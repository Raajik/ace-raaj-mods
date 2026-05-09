DELETE FROM `weenie` WHERE `class_Id` = 802883;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802883, 'MarkofGaerlan', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802883,   1,        128) /* ItemType - Misc */
     , (802883,   3,         21) /* PaletteTemplate - Gold */
     , (802883,   5,          0) /* EncumbranceVal */
     , (802883,   8,          1) /* Mass */
     , (802883,   9,          0) /* ValidLocations - None */
     , (802883,  11,          1) /* MaxStackSize */
     , (802883,  12,          1) /* StackSize */
     , (802883,  15,          1) /* StackUnitValue */
     , (802883,  16,          1) /* ItemUseable - No */
     , (802883,  18,          0) /* UiEffects - Magical */
     , (802883,  19,          1) /* Value */
     , (802883,  33,          1) /* Bonded - Bonded */
     , (802883,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802883, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802883,  22, True ) /* Inscribable */
     , (802883,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802883,  39,          1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802883,   1, 'Mark of Gaerlan') /* Name */
     , (802883,  33, 'GMarkPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802883,   1,   33554802) /* Setup */
     , (802883,   6,   67111919) /* PaletteBase */
     , (802883,   7,  268435747) /* ClothingBase */
     , (802883,   8,  100686370) /* Icon */
     , (802883,  52,  100689404) /* IconUnderlay */;
