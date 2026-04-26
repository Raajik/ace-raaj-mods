DELETE FROM `weenie` WHERE `class_Id` = 802812;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802812, 'Half Life', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802812,   1,        128) /* ItemType - Misc */
     , (802812,   3,         21) /* PaletteTemplate - Gold */
     , (802812,   5,          0) /* EncumbranceVal */
     , (802812,   8,          1) /* Mass */
     , (802812,   9,          0) /* ValidLocations - None */
     , (802812,  11,          3) /* MaxStackSize */
     , (802812,  12,          1) /* StackSize */
     , (802812,  15,          1) /* StackUnitValue */
     , (802812,  16,          1) /* ItemUseable - No */
     , (802812,  18,          1) /* UiEffects - Magical */
     , (802812,  19,          1) /* Value */
     , (802812,  33,          1) /* Bonded - Bonded */
     , (802812,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802812, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802812,  22, True ) /* Inscribable */
     , (802812,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802812,  39,          1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802812,   1, 'Half Life') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802812,   1,   33554802) /* Setup */
     , (802812,   6,   67111919) /* PaletteBase */
     , (802812,   7,  268435747) /* ClothingBase */
     , (802812,   8,  100673764) /* Icon */
     , (802812,  52,  100689404) /* IconUnderlay */;
