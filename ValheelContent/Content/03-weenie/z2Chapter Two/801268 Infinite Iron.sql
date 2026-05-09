DELETE FROM `weenie` WHERE `class_Id` = 801268;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801268, 'Infinite Iron', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801268,   1,        128) /* ItemType - Misc */
     , (801268,   3,          2) /* PaletteTemplate - Blue */
     , (801268,   5,        100) /* EncumbranceVal */
     , (801268,  11,          1) /* MaxStackSize */
     , (801268,  12,          1) /* StackSize */
     , (801268,  13,        100) /* StackUnitEncumbrance */
     , (801268,  15,          10000) /* StackUnitValue */
     , (801268,  16,          8) /* ItemUseable - Contained */
     , (801268,  19,          10000) /* Value */
     , (801268,  33,          1) /* Bonded - Bonded */
     , (801268,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801268,  94,         16) /* TargetType - Creature */
     , (801268, 114,          1) /* Attuned - Normal */
     , (801268, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801268,  22, True ) /* Inscribable */
     , (801268,  23, True ) /* DestroyOnSell */
     , (801268,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801268,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801268,   1, 'Infinite Sealed Bag of Salvaged Iron') /* Name */
     , (801268,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801268,   1,   33556223) /* Setup */
     , (801268,   3,  536870932) /* SoundTable */
     , (801268,   6,   67111928) /* PaletteBase */
     , (801268,   7,  268435841) /* ClothingBase */
     , (801268,   8,  100689651) /* Icon */
     , (801268,  22,  872415275) /* PhysicsEffectTable */
     , (801268,  38,      36572) /* UseCreateItem - Salvage */
     , (801268,  50,  100689648) /* IconOverlay */
     , (801268,  52,  100686604) /* IconUnderlay */;
