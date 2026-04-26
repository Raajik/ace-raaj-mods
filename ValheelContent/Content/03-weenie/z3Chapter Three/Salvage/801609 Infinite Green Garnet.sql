DELETE FROM `weenie` WHERE `class_Id` = 801609;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801609, 'Infinite Green Garnet2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801609,   1,        128) /* ItemType - Misc */
     , (801609,   3,          2) /* PaletteTemplate - Blue */
     , (801609,   5,        100) /* EncumbranceVal */
     , (801609,  11,          1) /* MaxStackSize */
     , (801609,  12,          1) /* StackSize */
     , (801609,  13,        100) /* StackUnitEncumbrance */
     , (801609,  15,          1) /* StackUnitValue */
     , (801609,  16,          8) /* ItemUseable - Contained */
     , (801609,  19,          1) /* Value */
     , (801609,  33,          1) /* Bonded - Bonded */
     , (801609,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801609,  94,         16) /* TargetType - Creature */
     , (801609, 114,          1) /* Attuned - Normal */
     , (801609, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801609,  22, True ) /* Inscribable */
     , (801609,  23, True ) /* DestroyOnSell */
     , (801609,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801609,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801609,   1, 'Infinite Sealed Bag of Salvaged Green Garnet') /* Name */
     , (801609,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801609,   1,   33556223) /* Setup */
     , (801609,   3,  536870932) /* SoundTable */
     , (801609,   6,   67111928) /* PaletteBase */
     , (801609,   7,  268435841) /* ClothingBase */
     , (801609,   8,  100689650) /* Icon */
     , (801609,  22,  872415275) /* PhysicsEffectTable */
     , (801609,  38,      36571) /* UseCreateItem - Salvage */
     , (801609,  50,  100689648) /* IconOverlay */
     , (801609,  52,  100686604) /* IconUnderlay */;
