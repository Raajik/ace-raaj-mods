DELETE FROM `weenie` WHERE `class_Id` = 803444;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803444, 'Falatacot Gem of the Undead', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803444,   1,        128) /* ItemType - Misc */
     , (803444,   3,         21) /* PaletteTemplate - Gold */
     , (803444,   5,          0) /* EncumbranceVal */
     , (803444,   8,          1) /* Mass */
     , (803444,   9,          0) /* ValidLocations - None */
     , (803444,  11,          1) /* MaxStackSize */
     , (803444,  12,          1) /* StackSize */
     , (803444,  15,        200) /* StackUnitValue */
     , (803444,  16,          1) /* ItemUseable - No */
     , (803444,  18,          0) /* UiEffects - Magical */
     , (803444,  19,        200) /* Value */
     , (803444,  33,          1) /* Bonded - Bonded */
     , (803444,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803444, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803444,  22, True ) /* Inscribable */
     , (803444,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803444,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803444,   1, 'Falatacot Gem of the Undead') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803444,   1,   33554802) /* Setup */
     , (803444,   6,   67111919) /* PaletteBase */
     , (803444,   7,  268435747) /* ClothingBase */
     , (803444,   8,  100671405) /* Icon */
     , (803444,  52,  100676435) /* IconUnderlay */;
