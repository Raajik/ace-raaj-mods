DELETE FROM `weenie` WHERE `class_Id` = 803994;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803994, 'MunchsLetter', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803994,   1,        128) /* ItemType - Gem */
     , (803994,   5,          1) /* EncumbranceVal */
     , (803994,  11,          1) /* MaxStackSize */
     , (803994,  12,          1) /* StackSize */
     , (803994,  13,          1) /* StackUnitEncumbrance */
     , (803994,  15,          1) /* StackUnitValue */
     , (803994,  16,          1) /* ItemUseable - No */
     , (803994,  18,          0) /* UiEffects - Magical */
     , (803994,  19,          1) /* Value */
     , (803994,  33,          1) /* Bonded - Bonded */
     , (803994,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803994, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803994,  22, True ) /* Inscribable */
     , (803994,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803994,   1, 'Munch''s Letter') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803994,   1, 0x02000179) /* Setup */
     , (803994,   3,  536870932) /* SoundTable */
     , (803994,   6,   67113398) /* PaletteBase */
     , (803994,   7,  268436279) /* ClothingBase */
     , (803994,   8,  100667503) /* Icon */
     , (803994,  22,  872415275) /* PhysicsEffectTable */;
