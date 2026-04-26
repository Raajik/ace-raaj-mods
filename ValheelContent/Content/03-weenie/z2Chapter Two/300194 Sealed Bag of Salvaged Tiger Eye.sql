DELETE FROM `weenie` WHERE `class_Id` = 300194;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300194, 'valheelsealedbagofsalvagedtigereye', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300194,   1,        128) /* ItemType - Misc */
     , (300194,   3,          2) /* PaletteTemplate - Blue */
     , (300194,   5,        100) /* EncumbranceVal */
     , (300194,  11,          1) /* MaxStackSize */
     , (300194,  12,          1) /* StackSize */
     , (300194,  13,        100) /* StackUnitEncumbrance */
     , (300194,  15,          3) /* StackUnitValue */
     , (300194,  16,          8) /* ItemUseable - Contained */
     , (300194,  19,          3) /* Value */
     , (300194,  33,          1) /* Bonded - Bonded */
     , (300194,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300194,  94,         16) /* TargetType - Creature */
     , (300194, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300194,  22, True ) /* Inscribable */
     , (300194,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300194,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300194,   1, 'Sealed Bag of Salvaged Tiger Eye') /* Name */
     , (300194,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (300194,  16, 'A sealed and certified bag of perfectly salvaged Tiger Eye. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300194,   1,   33556223) /* Setup */
     , (300194,   3,  536870932) /* SoundTable */
     , (300194,   6,   67111928) /* PaletteBase */
     , (300194,   7,  268435841) /* ClothingBase */
     , (300194,   8,  100689650) /* Icon */
     , (300194,  22,  872415275) /* PhysicsEffectTable */
     , (300194,  38,      21081) /* UseCreateItem - Salvage */
     , (300194,  50,  100673305) /* IconOverlay */;
