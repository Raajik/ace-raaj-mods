DELETE FROM `weenie` WHERE `class_Id` = 801607;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801607, 'Infinite Amber2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801607,   1,        128) /* ItemType - Misc */
     , (801607,   3,          2) /* PaletteTemplate - Blue */
     , (801607,   5,        100) /* EncumbranceVal */
     , (801607,  11,          1) /* MaxStackSize */
     , (801607,  12,          1) /* StackSize */
     , (801607,  13,        100) /* StackUnitEncumbrance */
     , (801607,  15,          1) /* StackUnitValue */
     , (801607,  16,          8) /* ItemUseable - Contained */
     , (801607,  19,          1) /* Value */
     , (801607,  33,          1) /* Bonded - Bonded */
     , (801607,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801607,  94,         16) /* TargetType - Creature */
     , (801607, 114,          1) /* Attuned - Normal */
     , (801607, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801607,  22, True ) /* Inscribable */
     , (801607,  23, True ) /* DestroyOnSell */
     , (801607,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801607,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801607,   1, 'Infinite Sealed Bag of Salvaged Amber') /* Name */
     , (801607,  14, 'Use this item to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801607,   1,   33556223) /* Setup */
     , (801607,   3,  536870932) /* SoundTable */
     , (801607,   6,   67111928) /* PaletteBase */
     , (801607,   7,  268435841) /* ClothingBase */
     , (801607,   8,  100667436) /* Icon */
     , (801607,  22,  872415275) /* PhysicsEffectTable */
     , (801607,  38,      70737) /* UseCreateItem - Salvage */
     , (801607,  50,  100673260) /* IconOverlay */
     , (801607,  52,  100686604) /* IconUnderlay */;
