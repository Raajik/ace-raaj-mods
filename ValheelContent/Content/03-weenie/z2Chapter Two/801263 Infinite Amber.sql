DELETE FROM `weenie` WHERE `class_Id` = 801263;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801263, 'Infinite Amber', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801263,   1,        128) /* ItemType - Misc */
     , (801263,   3,          2) /* PaletteTemplate - Blue */
     , (801263,   5,        100) /* EncumbranceVal */
     , (801263,  11,          1) /* MaxStackSize */
     , (801263,  12,          1) /* StackSize */
     , (801263,  13,        100) /* StackUnitEncumbrance */
     , (801263,  15,          10000) /* StackUnitValue */
     , (801263,  16,          8) /* ItemUseable - Contained */
     , (801263,  19,          10000) /* Value */
     , (801263,  33,          1) /* Bonded - Bonded */
     , (801263,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801263,  94,         16) /* TargetType - Creature */
     , (801263, 114,          1) /* Attuned - Normal */
     , (801263, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801263,  22, True ) /* Inscribable */
     , (801263,  23, True ) /* DestroyOnSell */
     , (801263,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801263,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801263,   1, 'Infinite Sealed Bag of Salvaged Amber') /* Name */
     , (801263,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801263,   1,   33556223) /* Setup */
     , (801263,   3,  536870932) /* SoundTable */
     , (801263,   6,   67111928) /* PaletteBase */
     , (801263,   7,  268435841) /* ClothingBase */
     , (801263,   8,  100667436) /* Icon */
     , (801263,  22,  872415275) /* PhysicsEffectTable */
     , (801263,  38,      70737) /* UseCreateItem - Salvage */
     , (801263,  50,  100673260) /* IconOverlay */
     , (801263,  52,  100686604) /* IconUnderlay */;
