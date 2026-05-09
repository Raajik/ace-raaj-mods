DELETE FROM `weenie` WHERE `class_Id` = 801608;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801608, 'Infinite Opal2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801608,   1,        128) /* ItemType - Misc */
     , (801608,   3,          2) /* PaletteTemplate - Blue */
     , (801608,   5,        100) /* EncumbranceVal */
     , (801608,  11,          1) /* MaxStackSize */
     , (801608,  12,          1) /* StackSize */
     , (801608,  13,        100) /* StackUnitEncumbrance */
     , (801608,  15,          1) /* StackUnitValue */
     , (801608,  16,          8) /* ItemUseable - Contained */
     , (801608,  19,          1) /* Value */
     , (801608,  33,          1) /* Bonded - Bonded */
     , (801608,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801608,  94,         16) /* TargetType - Creature */
     , (801608, 114,          1) /* Attuned - Normal */
     , (801608, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801608,  22, True ) /* Inscribable */
     , (801608,  23, True ) /* DestroyOnSell */
     , (801608,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801608,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801608,   1, 'Infinite Sealed Bag of Salvaged Opal') /* Name */
     , (801608,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801608,   1,   33556223) /* Setup */
     , (801608,   3,  536870932) /* SoundTable */
     , (801608,   6,   67111928) /* PaletteBase */
     , (801608,   7,  268435841) /* ClothingBase */
     , (801608,   8,  100689666) /* Icon */
     , (801608,  22,  872415275) /* PhysicsEffectTable */
     , (801608,  38,      36574) /* UseCreateItem - Salvage */
     , (801608,  50,  100689648) /* IconOverlay */
     , (801608,  52,  100686604) /* IconUnderlay */;
