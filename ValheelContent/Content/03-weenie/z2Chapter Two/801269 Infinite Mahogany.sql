DELETE FROM `weenie` WHERE `class_Id` = 801269;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801269, 'Infinite Mahogany', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801269,   1,        128) /* ItemType - Misc */
     , (801269,   3,          2) /* PaletteTemplate - Blue */
     , (801269,   5,        100) /* EncumbranceVal */
     , (801269,  11,          1) /* MaxStackSize */
     , (801269,  12,          1) /* StackSize */
     , (801269,  13,        100) /* StackUnitEncumbrance */
     , (801269,  15,          10000) /* StackUnitValue */
     , (801269,  16,          8) /* ItemUseable - Contained */
     , (801269,  19,          10000) /* Value */
     , (801269,  33,          1) /* Bonded - Bonded */
     , (801269,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801269,  94,         16) /* TargetType - Creature */
     , (801269, 114,          1) /* Attuned - Normal */
     , (801269, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801269,  22, True ) /* Inscribable */
     , (801269,  23, True ) /* DestroyOnSell */
     , (801269,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801269,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801269,   1, 'Infinite Sealed Bag of Salvaged Mahogany') /* Name */
     , (801269,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801269,   1,   33556223) /* Setup */
     , (801269,   3,  536870932) /* SoundTable */
     , (801269,   6,   67111928) /* PaletteBase */
     , (801269,   7,  268435841) /* ClothingBase */
     , (801269,   8,  100677147) /* Icon */
     , (801269,  22,  872415275) /* PhysicsEffectTable */
     , (801269,  38,      29579) /* UseCreateItem - Salvage */
     , (801269,  50,  100689648) /* IconOverlay */
     , (801269,  52,  100686604) /* IconUnderlay */;
