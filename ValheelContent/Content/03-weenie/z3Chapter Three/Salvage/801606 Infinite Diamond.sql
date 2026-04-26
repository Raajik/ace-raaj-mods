DELETE FROM `weenie` WHERE `class_Id` = 801606;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801606, 'Infinite Diamond2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801606,   1,        128) /* ItemType - Misc */
     , (801606,   3,          2) /* PaletteTemplate - Blue */
     , (801606,   5,        100) /* EncumbranceVal */
     , (801606,  11,          1) /* MaxStackSize */
     , (801606,  12,          1) /* StackSize */
     , (801606,  13,        100) /* StackUnitEncumbrance */
     , (801606,  15,          1) /* StackUnitValue */
     , (801606,  16,          8) /* ItemUseable - Contained */
     , (801606,  19,          1) /* Value */
     , (801606,  33,          1) /* Bonded - Bonded */
     , (801606,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801606,  94,         16) /* TargetType - Creature */
     , (801606, 114,          1) /* Attuned - Normal */
     , (801606, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801606,  22, True ) /* Inscribable */
     , (801606,  23, True ) /* DestroyOnSell */
     , (801606,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801606,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801606,   1, 'Infinite Sealed Bag of Salvaged Diamond') /* Name */
     , (801606,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801606,   1,   33556223) /* Setup */
     , (801606,   3,  536870932) /* SoundTable */
     , (801606,   6,   67111928) /* PaletteBase */
     , (801606,   7,  268435841) /* ClothingBase */
     , (801606,   8,  100667436) /* Icon */
     , (801606,  22,  872415275) /* PhysicsEffectTable */
     , (801606,  38,      70738) /* UseCreateItem - Salvage */
     , (801606,  50,  100673270) /* IconOverlay */
     , (801606,  52,  100686604) /* IconUnderlay */;
