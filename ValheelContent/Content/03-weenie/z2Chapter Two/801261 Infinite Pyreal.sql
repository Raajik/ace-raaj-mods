DELETE FROM `weenie` WHERE `class_Id` = 801261;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801261, 'Infinite Pyreal', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801261,   1,        128) /* ItemType - Misc */
     , (801261,   3,          2) /* PaletteTemplate - Blue */
     , (801261,   5,        100) /* EncumbranceVal */
     , (801261,  11,          1) /* MaxStackSize */
     , (801261,  12,          1) /* StackSize */
     , (801261,  13,        100) /* StackUnitEncumbrance */
     , (801261,  15,          10000) /* StackUnitValue */
     , (801261,  16,          8) /* ItemUseable - Contained */
     , (801261,  19,          10000) /* Value */
     , (801261,  33,          1) /* Bonded - Bonded */
     , (801261,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801261,  94,         16) /* TargetType - Creature */
     , (801261, 114,          1) /* Attuned - Normal */
     , (801261, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801261,  22, True ) /* Inscribable */
     , (801261,  23, True ) /* DestroyOnSell */
     , (801261,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801261,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801261,   1, 'Infinite Sealed Bag of Salvaged Pyreal') /* Name */
     , (801261,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801261,   1,   33556223) /* Setup */
     , (801261,   3,  536870932) /* SoundTable */
     , (801261,   6,   67111928) /* PaletteBase */
     , (801261,   7,  268435841) /* ClothingBase */
     , (801261,   8,  100667436) /* Icon */
     , (801261,  22,  872415275) /* PhysicsEffectTable */
     , (801261,  38,      41772) /* UseCreateItem - Salvage */
     , (801261,  50,  100673291) /* IconOverlay */
     , (801261,  52,  100686604) /* IconUnderlay */;
