DELETE FROM `weenie` WHERE `class_Id` = 802277;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802277, 'Infinite Steel3', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802277,   1,        128) /* ItemType - Misc */
     , (802277,   3,          2) /* PaletteTemplate - Blue */
     , (802277,   5,        100) /* EncumbranceVal */
     , (802277,  11,          1) /* MaxStackSize */
     , (802277,  12,          1) /* StackSize */
     , (802277,  13,        100) /* StackUnitEncumbrance */
     , (802277,  15,      10000) /* StackUnitValue */
     , (802277,  16,          8) /* ItemUseable - Contained */
     , (802277,  19,      10000) /* Value */
     , (802277,  33,          1) /* Bonded - Bonded */
     , (802277,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802277,  94,         16) /* TargetType - Creature */
     , (802277, 114,          1) /* Attuned - Normal */
     , (802277, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802277,  22, True ) /* Inscribable */
     , (802277,  23, True ) /* DestroyOnSell */
     , (802277,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802277,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802277,   1, 'Infinite Sealed Bag of Salvaged Steel') /* Name */
     , (802277,  14, 'Use this bag to break the seal and open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802277,   1,   33556223) /* Setup */
     , (802277,   3,  536870932) /* SoundTable */
     , (802277,   6,   67111928) /* PaletteBase */
     , (802277,   7,  268435841) /* ClothingBase */
     , (802277,   8,  100677145) /* Icon */
     , (802277,  22,  872415275) /* PhysicsEffectTable */
     , (802277,  38,      29581) /* UseCreateItem - Salvaged Steel */
     , (802277,  50,  100689648) /* IconOverlay */
     , (802277,  52,  100686604) /* IconUnderlay */;
