DELETE FROM `weenie` WHERE `class_Id` = 803210;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803210, 'Hargin Trinket of Purging', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803210,   1,       2048) /* ItemType - Gem */
     , (803210,   5,          1) /* EncumbranceVal */
     , (803210,  11,          1) /* MaxStackSize */
     , (803210,  12,          1) /* StackSize */
     , (803210,  13,          1) /* StackUnitEncumbrance */
     , (803210,  15,          1) /* StackUnitValue */
     , (803210,  16,          1) /* ItemUseable - No */
     , (803210,  18,          0) /* UiEffects - Magical */
     , (803210,  19,          1) /* Value */
     , (803210,  33,          1) /* Bonded - Bonded */
     , (803210,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803210,  94,          8) /* TargetType - Jewelry */
     , (803210, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803210,  22, True ) /* Inscribable */
     , (803210,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803210,   1, 'Hargin Trinket of Purging') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803210,   1,   33556407) /* Setup */
     , (803210,   3,  536870932) /* SoundTable */
     , (803210,   7,  268435965) /* ClothingBase */
     , (803210,   8,  100673212) /* Icon */
     , (803210,  22,  872415275) /* PhysicsEffectTable */
     , (803210,  52,  100686604) /* IconUnderlay */;
