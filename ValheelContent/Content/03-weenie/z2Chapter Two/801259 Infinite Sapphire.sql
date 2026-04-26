DELETE FROM `weenie` WHERE `class_Id` = 801259;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801259, 'Infinite Sapphire', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801259,   1,        128) /* ItemType - Misc */
     , (801259,   3,          2) /* PaletteTemplate - Blue */
     , (801259,   5,        100) /* EncumbranceVal */
     , (801259,  11,          1) /* MaxStackSize */
     , (801259,  12,          1) /* StackSize */
     , (801259,  13,        100) /* StackUnitEncumbrance */
     , (801259,  15,          10000) /* StackUnitValue */
     , (801259,  16,          8) /* ItemUseable - Contained */
     , (801259,  19,          10000) /* Value */
     , (801259,  33,          1) /* Bonded - Bonded */
     , (801259,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801259,  94,         16) /* TargetType - Creature */
     , (801259, 114,          1) /* Attuned - Normal */
     , (801259, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801259,  22, True ) /* Inscribable */
     , (801259,  23, True ) /* DestroyOnSell */
     , (801259,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801259,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801259,   1, 'Infinite Sealed Bag of Salvaged Sapphire') /* Name */
     , (801259,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801259,   1,   33556223) /* Setup */
     , (801259,   3,  536870932) /* SoundTable */
     , (801259,   6,   67111928) /* PaletteBase */
     , (801259,   7,  268435841) /* ClothingBase */
     , (801259,   8,  100667436) /* Icon */
     , (801259,  22,  872415275) /* PhysicsEffectTable */
     , (801259,  38,      70736) /* UseCreateItem - Salvage */
     , (801259,  50,  100673297) /* IconOverlay */
     , (801259,  52,  100686604) /* IconUnderlay */;
