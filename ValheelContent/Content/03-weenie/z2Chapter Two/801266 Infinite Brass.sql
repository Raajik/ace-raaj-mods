DELETE FROM `weenie` WHERE `class_Id` = 801266;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801266, 'Infinite Brass', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801266,   1,        128) /* ItemType - Misc */
     , (801266,   3,          2) /* PaletteTemplate - Blue */
     , (801266,   5,        100) /* EncumbranceVal */
     , (801266,  11,          1) /* MaxStackSize */
     , (801266,  12,          1) /* StackSize */
     , (801266,  13,        100) /* StackUnitEncumbrance */
     , (801266,  15,          10000) /* StackUnitValue */
     , (801266,  16,          8) /* ItemUseable - Contained */
     , (801266,  19,          10000) /* Value */
     , (801266,  33,          1) /* Bonded - Bonded */
     , (801266,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801266,  94,         16) /* TargetType - Creature */
     , (801266, 114,          1) /* Attuned - Normal */
     , (801266, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801266,  22, True ) /* Inscribable */
     , (801266,  23, True ) /* DestroyOnSell */
     , (801266,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801266,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801266,   1, 'Infinite Sealed Bag of Salvaged Brass') /* Name */
     , (801266,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801266,   1,   33556223) /* Setup */
     , (801266,   3,  536870932) /* SoundTable */
     , (801266,   6,   67111928) /* PaletteBase */
     , (801266,   7,  268435841) /* ClothingBase */
     , (801266,   8,  100689649) /* Icon */
     , (801266,  22,  872415275) /* PhysicsEffectTable */
     , (801266,  38,      36570) /* UseCreateItem - Salvage */
     , (801266,  50,  100689648) /* IconOverlay */
     , (801266,  52,  100686604) /* IconUnderlay */;
