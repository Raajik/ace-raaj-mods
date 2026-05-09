DELETE FROM `weenie` WHERE `class_Id` = 801612;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801612, 'Infinite Iron2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801612,   1,        128) /* ItemType - Misc */
     , (801612,   3,          2) /* PaletteTemplate - Blue */
     , (801612,   5,        100) /* EncumbranceVal */
     , (801612,  11,          1) /* MaxStackSize */
     , (801612,  12,          1) /* StackSize */
     , (801612,  13,        100) /* StackUnitEncumbrance */
     , (801612,  15,          1) /* StackUnitValue */
     , (801612,  16,          8) /* ItemUseable - Contained */
     , (801612,  19,          1) /* Value */
     , (801612,  33,          1) /* Bonded - Bonded */
     , (801612,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801612,  94,         16) /* TargetType - Creature */
     , (801612, 114,          1) /* Attuned - Normal */
     , (801612, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801612,  22, True ) /* Inscribable */
     , (801612,  23, True ) /* DestroyOnSell */
     , (801612,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801612,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801612,   1, 'Infinite Sealed Bag of Salvaged Iron') /* Name */
     , (801612,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801612,   1,   33556223) /* Setup */
     , (801612,   3,  536870932) /* SoundTable */
     , (801612,   6,   67111928) /* PaletteBase */
     , (801612,   7,  268435841) /* ClothingBase */
     , (801612,   8,  100689651) /* Icon */
     , (801612,  22,  872415275) /* PhysicsEffectTable */
     , (801612,  38,      36572) /* UseCreateItem - Salvage */
     , (801612,  50,  100689648) /* IconOverlay */
     , (801612,  52,  100686604) /* IconUnderlay */;
