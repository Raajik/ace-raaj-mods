DELETE FROM `weenie` WHERE `class_Id` = 801601;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801601, 'Infinite Steel2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801601,   1,        128) /* ItemType - Misc */
     , (801601,   3,          2) /* PaletteTemplate - Blue */
     , (801601,   5,        100) /* EncumbranceVal */
     , (801601,  11,          1) /* MaxStackSize */
     , (801601,  12,          1) /* StackSize */
     , (801601,  13,        100) /* StackUnitEncumbrance */
     , (801601,  15,          1) /* StackUnitValue */
     , (801601,  16,          8) /* ItemUseable - Contained */
     , (801601,  19,          1) /* Value */
     , (801601,  33,          1) /* Bonded - Bonded */
     , (801601,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801601,  94,         16) /* TargetType - Creature */
     , (801601, 114,          1) /* Attuned - Normal */
     , (801601, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801601,  22, True ) /* Inscribable */
     , (801601,  23, True ) /* DestroyOnSell */
     , (801601,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801601,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801601,   1, 'Infinite Sealed Bag of Salvaged Steel') /* Name */
     , (801601,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801601,   1,   33556223) /* Setup */
     , (801601,   3,  536870932) /* SoundTable */
     , (801601,   6,   67111928) /* PaletteBase */
     , (801601,   7,  268435841) /* ClothingBase */
     , (801601,   8,  100677145) /* Icon */
     , (801601,  22,  872415275) /* PhysicsEffectTable */
     , (801601,  38,      29581) /* UseCreateItem - Salvaged Steel */
     , (801601,  50,  100689648) /* IconOverlay */
     , (801601,  52,  100686604) /* IconUnderlay */;
