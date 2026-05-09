DELETE FROM `weenie` WHERE `class_Id` = 801613;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801613, 'Infinite Mahogany2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801613,   1,        128) /* ItemType - Misc */
     , (801613,   3,          2) /* PaletteTemplate - Blue */
     , (801613,   5,        100) /* EncumbranceVal */
     , (801613,  11,          1) /* MaxStackSize */
     , (801613,  12,          1) /* StackSize */
     , (801613,  13,        100) /* StackUnitEncumbrance */
     , (801613,  15,          1) /* StackUnitValue */
     , (801613,  16,          8) /* ItemUseable - Contained */
     , (801613,  19,          1) /* Value */
     , (801613,  33,          1) /* Bonded - Bonded */
     , (801613,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801613,  94,         16) /* TargetType - Creature */
     , (801613, 114,          1) /* Attuned - Normal */
     , (801613, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801613,  22, True ) /* Inscribable */
     , (801613,  23, True ) /* DestroyOnSell */
     , (801613,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801613,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801613,   1, 'Infinite Sealed Bag of Salvaged Mahogany') /* Name */
     , (801613,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801613,   1,   33556223) /* Setup */
     , (801613,   3,  536870932) /* SoundTable */
     , (801613,   6,   67111928) /* PaletteBase */
     , (801613,   7,  268435841) /* ClothingBase */
     , (801613,   8,  100677147) /* Icon */
     , (801613,  22,  872415275) /* PhysicsEffectTable */
     , (801613,  38,      29579) /* UseCreateItem - Salvage */
     , (801613,  50,  100689648) /* IconOverlay */
     , (801613,  52,  100686604) /* IconUnderlay */;
