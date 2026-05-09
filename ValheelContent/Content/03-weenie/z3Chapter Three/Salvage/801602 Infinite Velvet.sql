DELETE FROM `weenie` WHERE `class_Id` = 801602;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801602, 'Infinite Velvet2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801602,   1,        128) /* ItemType - Misc */
     , (801602,   3,          2) /* PaletteTemplate - Blue */
     , (801602,   5,        100) /* EncumbranceVal */
     , (801602,  11,          1) /* MaxStackSize */
     , (801602,  12,          1) /* StackSize */
     , (801602,  13,        100) /* StackUnitEncumbrance */
     , (801602,  15,          1) /* StackUnitValue */
     , (801602,  16,          8) /* ItemUseable - Contained */
     , (801602,  19,          1) /* Value */
     , (801602,  33,          1) /* Bonded - Bonded */
     , (801602,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801602,  94,         16) /* TargetType - Creature */
     , (801602, 114,          1) /* Attuned - Normal */
     , (801602, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801602,  22, True ) /* Inscribable */
     , (801602,  23, True ) /* DestroyOnSell */
     , (801602,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801602,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801602,   1, 'Infinite Sealed Bag of Salvaged Velvet') /* Name */
     , (801602,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801602,   1,   33556223) /* Setup */
     , (801602,   3,  536870932) /* SoundTable */
     , (801602,   6,   67111928) /* PaletteBase */
     , (801602,   7,  268435841) /* ClothingBase */
     , (801602,   8,  100689652) /* Icon */
     , (801602,  22,  872415275) /* PhysicsEffectTable */
     , (801602,  38,      36573) /* UseCreateItem - Salvage */
     , (801602,  50,  100689648) /* IconOverlay */
     , (801602,  52,  100686604) /* IconUnderlay */;
