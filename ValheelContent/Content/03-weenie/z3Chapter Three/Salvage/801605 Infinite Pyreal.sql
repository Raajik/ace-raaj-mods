DELETE FROM `weenie` WHERE `class_Id` = 801605;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801605, 'Infinite Pyreal2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801605,   1,        128) /* ItemType - Misc */
     , (801605,   3,          2) /* PaletteTemplate - Blue */
     , (801605,   5,        100) /* EncumbranceVal */
     , (801605,  11,          1) /* MaxStackSize */
     , (801605,  12,          1) /* StackSize */
     , (801605,  13,        100) /* StackUnitEncumbrance */
     , (801605,  15,          1) /* StackUnitValue */
     , (801605,  16,          8) /* ItemUseable - Contained */
     , (801605,  19,          1) /* Value */
     , (801605,  33,          1) /* Bonded - Bonded */
     , (801605,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801605,  94,         16) /* TargetType - Creature */
     , (801605, 114,          1) /* Attuned - Normal */
     , (801605, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801605,  22, True ) /* Inscribable */
     , (801605,  23, True ) /* DestroyOnSell */
     , (801605,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801605,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801605,   1, 'Infinite Sealed Bag of Salvaged Pyreal') /* Name */
     , (801605,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801605,   1,   33556223) /* Setup */
     , (801605,   3,  536870932) /* SoundTable */
     , (801605,   6,   67111928) /* PaletteBase */
     , (801605,   7,  268435841) /* ClothingBase */
     , (801605,   8,  100667436) /* Icon */
     , (801605,  22,  872415275) /* PhysicsEffectTable */
     , (801605,  38,      41772) /* UseCreateItem - Salvage */
     , (801605,  50,  100673291) /* IconOverlay */
     , (801605,  52,  100686604) /* IconUnderlay */;
