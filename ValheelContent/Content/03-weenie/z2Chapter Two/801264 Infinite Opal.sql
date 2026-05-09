DELETE FROM `weenie` WHERE `class_Id` = 801264;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801264, 'Infinite Opal', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801264,   1,        128) /* ItemType - Misc */
     , (801264,   3,          2) /* PaletteTemplate - Blue */
     , (801264,   5,        100) /* EncumbranceVal */
     , (801264,  11,          1) /* MaxStackSize */
     , (801264,  12,          1) /* StackSize */
     , (801264,  13,        100) /* StackUnitEncumbrance */
     , (801264,  15,          10000) /* StackUnitValue */
     , (801264,  16,          8) /* ItemUseable - Contained */
     , (801264,  19,          10000) /* Value */
     , (801264,  33,          1) /* Bonded - Bonded */
     , (801264,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801264,  94,         16) /* TargetType - Creature */
     , (801264, 114,          1) /* Attuned - Normal */
     , (801264, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801264,  22, True ) /* Inscribable */
     , (801264,  23, True ) /* DestroyOnSell */
     , (801264,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801264,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801264,   1, 'Infinite Sealed Bag of Salvaged Opal') /* Name */
     , (801264,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801264,   1,   33556223) /* Setup */
     , (801264,   3,  536870932) /* SoundTable */
     , (801264,   6,   67111928) /* PaletteBase */
     , (801264,   7,  268435841) /* ClothingBase */
     , (801264,   8,  100689666) /* Icon */
     , (801264,  22,  872415275) /* PhysicsEffectTable */
     , (801264,  38,      36574) /* UseCreateItem - Salvage */
     , (801264,  50,  100689648) /* IconOverlay */
     , (801264,  52,  100686604) /* IconUnderlay */;
