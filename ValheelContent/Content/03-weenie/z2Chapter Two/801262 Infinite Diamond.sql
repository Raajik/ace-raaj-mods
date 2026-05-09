DELETE FROM `weenie` WHERE `class_Id` = 801262;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801262, 'Infinite Diamond', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801262,   1,        128) /* ItemType - Misc */
     , (801262,   3,          2) /* PaletteTemplate - Blue */
     , (801262,   5,        100) /* EncumbranceVal */
     , (801262,  11,          1) /* MaxStackSize */
     , (801262,  12,          1) /* StackSize */
     , (801262,  13,        100) /* StackUnitEncumbrance */
     , (801262,  15,          10000) /* StackUnitValue */
     , (801262,  16,          8) /* ItemUseable - Contained */
     , (801262,  19,          10000) /* Value */
     , (801262,  33,          1) /* Bonded - Bonded */
     , (801262,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801262,  94,         16) /* TargetType - Creature */
     , (801262, 114,          1) /* Attuned - Normal */
     , (801262, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801262,  22, True ) /* Inscribable */
     , (801262,  23, True ) /* DestroyOnSell */
     , (801262,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801262,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801262,   1, 'Infinite Sealed Bag of Salvaged Diamond') /* Name */
     , (801262,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801262,   1,   33556223) /* Setup */
     , (801262,   3,  536870932) /* SoundTable */
     , (801262,   6,   67111928) /* PaletteBase */
     , (801262,   7,  268435841) /* ClothingBase */
     , (801262,   8,  100667436) /* Icon */
     , (801262,  22,  872415275) /* PhysicsEffectTable */
     , (801262,  38,      70738) /* UseCreateItem - Salvage */
     , (801262,  50,  100673270) /* IconOverlay */
     , (801262,  52,  100686604) /* IconUnderlay */;
