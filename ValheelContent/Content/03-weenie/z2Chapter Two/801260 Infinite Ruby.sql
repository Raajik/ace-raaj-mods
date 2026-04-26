DELETE FROM `weenie` WHERE `class_Id` = 801260;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801260, 'Infinite Ruby', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801260,   1,        128) /* ItemType - Misc */
     , (801260,   3,          2) /* PaletteTemplate - Blue */
     , (801260,   5,        100) /* EncumbranceVal */
     , (801260,  11,          1) /* MaxStackSize */
     , (801260,  12,          1) /* StackSize */
     , (801260,  13,        100) /* StackUnitEncumbrance */
     , (801260,  15,          10000) /* StackUnitValue */
     , (801260,  16,          8) /* ItemUseable - Contained */
     , (801260,  19,          10000) /* Value */
     , (801260,  33,          1) /* Bonded - Bonded */
     , (801260,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801260,  94,         16) /* TargetType - Creature */
     , (801260, 114,          1) /* Attuned - Normal */
     , (801260, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801260,  22, True ) /* Inscribable */
     , (801260,  23, True ) /* DestroyOnSell */
     , (801260,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801260,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801260,   1, 'Infinite Sealed Bag of Salvaged Ruby') /* Name */
     , (801260,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801260,   1,   33556223) /* Setup */
     , (801260,   3,  536870932) /* SoundTable */
     , (801260,   6,   67111928) /* PaletteBase */
     , (801260,   7,  268435841) /* ClothingBase */
     , (801260,   8,  100667436) /* Icon */
     , (801260,  22,  872415275) /* PhysicsEffectTable */
     , (801260,  38,      70741) /* UseCreateItem - Salvage */
     , (801260,  50,  100673295) /* IconOverlay */
     , (801260,  52,  100686604) /* IconUnderlay */;
