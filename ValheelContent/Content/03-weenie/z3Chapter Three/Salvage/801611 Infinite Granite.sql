DELETE FROM `weenie` WHERE `class_Id` = 801611;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801611, 'Infinite Granite2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801611,   1,        128) /* ItemType - Misc */
     , (801611,   3,          2) /* PaletteTemplate - Blue */
     , (801611,   5,        100) /* EncumbranceVal */
     , (801611,  11,          1) /* MaxStackSize */
     , (801611,  12,          1) /* StackSize */
     , (801611,  13,        100) /* StackUnitEncumbrance */
     , (801611,  15,          1) /* StackUnitValue */
     , (801611,  16,          8) /* ItemUseable - Contained */
     , (801611,  19,          1) /* Value */
     , (801611,  33,          1) /* Bonded - Bonded */
     , (801611,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801611,  94,         16) /* TargetType - Creature */
     , (801611, 114,          1) /* Attuned - Normal */
     , (801611, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801611,  22, True ) /* Inscribable */
     , (801611,  23, True ) /* DestroyOnSell */
     , (801611,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801611,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801611,   1, 'Infinite Sealed Bag of Salvaged Granite') /* Name */
     , (801611,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801611,   1,   33556223) /* Setup */
     , (801611,   3,  536870932) /* SoundTable */
     , (801611,   6,   67111928) /* PaletteBase */
     , (801611,   7,  268435841) /* ClothingBase */
     , (801611,   8,  100677150) /* Icon */
     , (801611,  22,  872415275) /* PhysicsEffectTable */
     , (801611,  38,      29576) /* UseCreateItem - Salvaged Granite */
     , (801611,  50,  100689648) /* IconOverlay */
     , (801611,  52,  100686604) /* IconUnderlay */;
