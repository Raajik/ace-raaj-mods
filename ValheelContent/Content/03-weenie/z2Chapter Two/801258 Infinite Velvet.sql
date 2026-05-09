DELETE FROM `weenie` WHERE `class_Id` = 801258;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801258, 'Infinite Velvet', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801258,   1,        128) /* ItemType - Misc */
     , (801258,   3,          2) /* PaletteTemplate - Blue */
     , (801258,   5,        100) /* EncumbranceVal */
     , (801258,  11,          1) /* MaxStackSize */
     , (801258,  12,          1) /* StackSize */
     , (801258,  13,        100) /* StackUnitEncumbrance */
     , (801258,  15,          10000) /* StackUnitValue */
     , (801258,  16,          8) /* ItemUseable - Contained */
     , (801258,  19,          10000) /* Value */
     , (801258,  33,          1) /* Bonded - Bonded */
     , (801258,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801258,  94,         16) /* TargetType - Creature */
     , (801258, 114,          1) /* Attuned - Normal */
     , (801258, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801258,  22, True ) /* Inscribable */
     , (801258,  23, True ) /* DestroyOnSell */
     , (801258,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801258,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801258,   1, 'Infinite Sealed Bag of Salvaged Velvet') /* Name */
     , (801258,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801258,   1,   33556223) /* Setup */
     , (801258,   3,  536870932) /* SoundTable */
     , (801258,   6,   67111928) /* PaletteBase */
     , (801258,   7,  268435841) /* ClothingBase */
     , (801258,   8,  100689652) /* Icon */
     , (801258,  22,  872415275) /* PhysicsEffectTable */
     , (801258,  38,      36573) /* UseCreateItem - Salvage */
     , (801258,  50,  100689648) /* IconOverlay */
     , (801258,  52,  100686604) /* IconUnderlay */;
