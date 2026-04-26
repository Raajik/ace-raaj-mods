DELETE FROM `weenie` WHERE `class_Id` = 801603;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801603, 'Infinite Sapphire2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801603,   1,        128) /* ItemType - Misc */
     , (801603,   3,          2) /* PaletteTemplate - Blue */
     , (801603,   5,        100) /* EncumbranceVal */
     , (801603,  11,          1) /* MaxStackSize */
     , (801603,  12,          1) /* StackSize */
     , (801603,  13,        100) /* StackUnitEncumbrance */
     , (801603,  15,          1) /* StackUnitValue */
     , (801603,  16,          8) /* ItemUseable - Contained */
     , (801603,  19,          1) /* Value */
     , (801603,  33,          1) /* Bonded - Bonded */
     , (801603,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801603,  94,         16) /* TargetType - Creature */
     , (801603, 114,          1) /* Attuned - Normal */
     , (801603, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801603,  22, True ) /* Inscribable */
     , (801603,  23, True ) /* DestroyOnSell */
     , (801603,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801603,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801603,   1, 'Infinite Sealed Bag of Salvaged Sapphire') /* Name */
     , (801603,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801603,   1,   33556223) /* Setup */
     , (801603,   3,  536870932) /* SoundTable */
     , (801603,   6,   67111928) /* PaletteBase */
     , (801603,   7,  268435841) /* ClothingBase */
     , (801603,   8,  100667436) /* Icon */
     , (801603,  22,  872415275) /* PhysicsEffectTable */
     , (801603,  38,      70736) /* UseCreateItem - Salvage */
     , (801603,  50,  100673297) /* IconOverlay */
     , (801603,  52,  100686604) /* IconUnderlay */;
