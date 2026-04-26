DELETE FROM `weenie` WHERE `class_Id` = 803970;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803970, 'Sol Crystal', 51, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803970,   1,        128) /* ItemType - Gem */
     , (803970,   5,          1) /* EncumbranceVal */
     , (803970,  11,         25) /* MaxStackSize */
     , (803970,  12,          1) /* StackSize */
     , (803970,  13,          1) /* StackUnitEncumbrance */
     , (803970,  15,          1) /* StackUnitValue */
     , (803970,  16,          1) /* ItemUseable - No */
     , (803970,  18,          0) /* UiEffects - Magical */
     , (803970,  19,          1) /* Value */
     , (803970,  33,          1) /* Bonded - Bonded */
     , (803970,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803970,  94,          8) /* TargetType - Jewelry */
     , (803970, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803970,  22, True ) /* Inscribable */
     , (803970,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803970,   1, 'Sol Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803970,   1, 0x02000179) /* Setup */
     , (803970,   3,  536870932) /* SoundTable */
     , (803970,   6,   67113398) /* PaletteBase */
     , (803970,   7,  268436279) /* ClothingBase */
     , (803970,   8,  100670756) /* Icon */
     , (803970,  22,  872415275) /* PhysicsEffectTable */;
