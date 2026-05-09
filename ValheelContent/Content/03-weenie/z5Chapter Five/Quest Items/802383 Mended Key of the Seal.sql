DELETE FROM `weenie` WHERE `class_Id` = 802383;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802383, 'Mended Key of the Seal', 1, '2023-03-04 10:37:40') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802383,   1,        128) /* ItemType - Misc */
     , (802383,   3,         39) /* PaletteTemplate - Black */
     , (802383,   5,          5) /* EncumbranceVal */
     , (802383,   8,          5) /* Mass */
     , (802383,  11,          1) /* MaxStackSize */
     , (802383,  12,          1) /* StackSize */
     , (802383,  13,          5) /* StackUnitEncumbrance */
     , (802383,  14,          5) /* StackUnitMass */
     , (802383,  15,          1) /* StackUnitValue */
     , (802383,  18,          0) /* UiEffects - Undef */
     , (802383,  19,          1) /* Value */
     , (802383,  33,          1) /* Bonded - Bonded */
     , (802383,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802383, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802383,  22, True ) /* Inscribable */
     , (802383,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802383,   1, 'Mended Key of the Seal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802383,   1,   33554784) /* Setup */
     , (802383,   3,  536870932) /* SoundTable */
     , (802383,   7,  268437442) /* ClothingBase */
     , (802383,   8,  100668436) /* Icon */
     , (802383,  22,  872415275) /* PhysicsEffectTable */;
