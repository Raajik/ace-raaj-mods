DELETE FROM `weenie` WHERE `class_Id` = 801536;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801536, 'Dread Coin', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801536,   1,        128) /* ItemType - Misc */
     , (801536,   3,         21) /* PaletteTemplate - Gold */
     , (801536,   5,          0) /* EncumbranceVal */
     , (801536,   8,          1) /* Mass */
     , (801536,   9,          0) /* ValidLocations - None */
     , (801536,  11,      50000) /* MaxStackSize */
     , (801536,  12,          1) /* StackSize */
     , (801536,  15,          1) /* StackUnitValue */
     , (801536,  16,          1) /* ItemUseable - No */
     , (801536,  18,          4) /* UiEffects - Magical */
     , (801536,  19,          1) /* Value */
     , (801536,  33,          1) /* Bonded - Bonded */
     , (801536,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801536, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801536,  22, True ) /* Inscribable */
     , (801536,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801536,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801536,   1, 'Dread Coin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801536,   1,   33554802) /* Setup */
     , (801536,   6,   67111919) /* PaletteBase */
     , (801536,   7,  268435747) /* ClothingBase */
     , (801536,   8,      25279) /* Icon */
     , (801536,  52,  100689404) /* IconUnderlay */;
