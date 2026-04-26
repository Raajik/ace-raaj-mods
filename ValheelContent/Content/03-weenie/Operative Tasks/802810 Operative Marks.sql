DELETE FROM `weenie` WHERE `class_Id` = 802810;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802810, 'Operative Marks', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802810,   1,        128) /* ItemType - Misc */
     , (802810,   3,         21) /* PaletteTemplate - Gold */
     , (802810,   5,          0) /* EncumbranceVal */
     , (802810,   8,          1) /* Mass */
     , (802810,   9,          0) /* ValidLocations - None */
     , (802810,  11,      50000) /* MaxStackSize */
     , (802810,  12,          1) /* StackSize */
     , (802810,  15,          1) /* StackUnitValue */
     , (802810,  16,          1) /* ItemUseable - No */
     , (802810,  18,          0) /* UiEffects - Magical */
     , (802810,  19,          1) /* Value */
     , (802810,  33,          1) /* Bonded - Bonded */
     , (802810,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802810, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802810,  22, True ) /* Inscribable */
     , (802810,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802810,  39,          1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802810,   1, 'Operative Marks') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802810,   1,   33554802) /* Setup */
     , (802810,   6,   67111919) /* PaletteBase */
     , (802810,   7,  268435747) /* ClothingBase */
     , (802810,   8,  100686370) /* Icon */
     , (802810,  52,  100689404) /* IconUnderlay */;
