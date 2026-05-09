DELETE FROM `weenie` WHERE `class_Id` = 801267;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801267, 'Infinite Granite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801267,   1,        128) /* ItemType - Misc */
     , (801267,   3,          2) /* PaletteTemplate - Blue */
     , (801267,   5,        100) /* EncumbranceVal */
     , (801267,  11,          1) /* MaxStackSize */
     , (801267,  12,          1) /* StackSize */
     , (801267,  13,        100) /* StackUnitEncumbrance */
     , (801267,  15,          10000) /* StackUnitValue */
     , (801267,  16,          8) /* ItemUseable - Contained */
     , (801267,  19,          10000) /* Value */
     , (801267,  33,          1) /* Bonded - Bonded */
     , (801267,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801267,  94,         16) /* TargetType - Creature */
     , (801267, 114,          1) /* Attuned - Normal */
     , (801267, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801267,  22, True ) /* Inscribable */
     , (801267,  23, True ) /* DestroyOnSell */
     , (801267,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801267,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801267,   1, 'Infinite Sealed Bag of Salvaged Granite') /* Name */
     , (801267,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801267,   1,   33556223) /* Setup */
     , (801267,   3,  536870932) /* SoundTable */
     , (801267,   6,   67111928) /* PaletteBase */
     , (801267,   7,  268435841) /* ClothingBase */
     , (801267,   8,  100677150) /* Icon */
     , (801267,  22,  872415275) /* PhysicsEffectTable */
     , (801267,  38,      29576) /* UseCreateItem - Salvaged Granite */
     , (801267,  50,  100689648) /* IconOverlay */
     , (801267,  52,  100686604) /* IconUnderlay */;
