DELETE FROM `weenie` WHERE `class_Id` = 801610;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801610, 'Infinite Brass2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801610,   1,        128) /* ItemType - Misc */
     , (801610,   3,          2) /* PaletteTemplate - Blue */
     , (801610,   5,        100) /* EncumbranceVal */
     , (801610,  11,          1) /* MaxStackSize */
     , (801610,  12,          1) /* StackSize */
     , (801610,  13,        100) /* StackUnitEncumbrance */
     , (801610,  15,          1) /* StackUnitValue */
     , (801610,  16,          8) /* ItemUseable - Contained */
     , (801610,  19,          1) /* Value */
     , (801610,  33,          1) /* Bonded - Bonded */
     , (801610,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801610,  94,         16) /* TargetType - Creature */
     , (801610, 114,          1) /* Attuned - Normal */
     , (801610, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801610,  22, True ) /* Inscribable */
     , (801610,  23, True ) /* DestroyOnSell */
     , (801610,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801610,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801610,   1, 'Infinite Sealed Bag of Salvaged Brass') /* Name */
     , (801610,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801610,   1,   33556223) /* Setup */
     , (801610,   3,  536870932) /* SoundTable */
     , (801610,   6,   67111928) /* PaletteBase */
     , (801610,   7,  268435841) /* ClothingBase */
     , (801610,   8,  100689649) /* Icon */
     , (801610,  22,  872415275) /* PhysicsEffectTable */
     , (801610,  38,      36570) /* UseCreateItem - Salvage */
     , (801610,  50,  100689648) /* IconOverlay */
     , (801610,  52,  100686604) /* IconUnderlay */;
