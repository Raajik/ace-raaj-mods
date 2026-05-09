DELETE FROM `weenie` WHERE `class_Id` = 801265;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801265, 'Infinite Green Garnet', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801265,   1,        128) /* ItemType - Misc */
     , (801265,   3,          2) /* PaletteTemplate - Blue */
     , (801265,   5,        100) /* EncumbranceVal */
     , (801265,  11,          1) /* MaxStackSize */
     , (801265,  12,          1) /* StackSize */
     , (801265,  13,        100) /* StackUnitEncumbrance */
     , (801265,  15,          10000) /* StackUnitValue */
     , (801265,  16,          8) /* ItemUseable - Contained */
     , (801265,  19,          10000) /* Value */
     , (801265,  33,          1) /* Bonded - Bonded */
     , (801265,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801265,  94,         16) /* TargetType - Creature */
     , (801265, 114,          1) /* Attuned - Normal */
     , (801265, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801265,  22, True ) /* Inscribable */
     , (801265,  23, True ) /* DestroyOnSell */
     , (801265,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801265,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801265,   1, 'Infinite Sealed Bag of Salvaged Green Garnet') /* Name */
     , (801265,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801265,   1,   33556223) /* Setup */
     , (801265,   3,  536870932) /* SoundTable */
     , (801265,   6,   67111928) /* PaletteBase */
     , (801265,   7,  268435841) /* ClothingBase */
     , (801265,   8,  100689650) /* Icon */
     , (801265,  22,  872415275) /* PhysicsEffectTable */
     , (801265,  38,      36571) /* UseCreateItem - Salvage */
     , (801265,  50,  100689648) /* IconOverlay */
     , (801265,  52,  100686604) /* IconUnderlay */;
