DELETE FROM `weenie` WHERE `class_Id` = 801604;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801604, 'Infinite Ruby2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801604,   1,        128) /* ItemType - Misc */
     , (801604,   3,          2) /* PaletteTemplate - Blue */
     , (801604,   5,        100) /* EncumbranceVal */
     , (801604,  11,          1) /* MaxStackSize */
     , (801604,  12,          1) /* StackSize */
     , (801604,  13,        100) /* StackUnitEncumbrance */
     , (801604,  15,          1) /* StackUnitValue */
     , (801604,  16,          8) /* ItemUseable - Contained */
     , (801604,  19,          1) /* Value */
     , (801604,  33,          1) /* Bonded - Bonded */
     , (801604,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801604,  94,         16) /* TargetType - Creature */
     , (801604, 114,          1) /* Attuned - Normal */
     , (801604, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801604,  22, True ) /* Inscribable */
     , (801604,  23, True ) /* DestroyOnSell */
     , (801604,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801604,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801604,   1, 'Infinite Sealed Bag of Salvaged Ruby') /* Name */
     , (801604,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801604,   1,   33556223) /* Setup */
     , (801604,   3,  536870932) /* SoundTable */
     , (801604,   6,   67111928) /* PaletteBase */
     , (801604,   7,  268435841) /* ClothingBase */
     , (801604,   8,  100667436) /* Icon */
     , (801604,  22,  872415275) /* PhysicsEffectTable */
     , (801604,  38,      70741) /* UseCreateItem - Salvage */
     , (801604,  50,  100673295) /* IconOverlay */
     , (801604,  52,  100686604) /* IconUnderlay */;
