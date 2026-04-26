DELETE FROM `weenie` WHERE `class_Id` = 803983;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803983, 'Rogue Company Ring', 51, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803983,   1,        128) /* ItemType - Gem */
     , (803983,   5,          1) /* EncumbranceVal */
     , (803983,  11,          8) /* MaxStackSize */
     , (803983,  12,          1) /* StackSize */
     , (803983,  13,          1) /* StackUnitEncumbrance */
     , (803983,  15,          1) /* StackUnitValue */
     , (803983,  16,          1) /* ItemUseable - No */
     , (803983,  18,          0) /* UiEffects - Magical */
     , (803983,  19,          1) /* Value */
     , (803983,  33,          1) /* Bonded - Bonded */
     , (803983,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803983,  94,          8) /* TargetType - Jewelry */
     , (803983, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803983,  22, True ) /* Inscribable */
     , (803983,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803983,   1, 'Rogue Company Ring') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803983,   1, 0x02000179) /* Setup */
     , (803983,   3,  536870932) /* SoundTable */
     , (803983,   6,   67113398) /* PaletteBase */
     , (803983,   7,  268436279) /* ClothingBase */
     , (803983,   8,  100671128) /* Icon */
     , (803983,  22,  872415275) /* PhysicsEffectTable */;
