DELETE FROM `weenie` WHERE `class_Id` = 803214;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803214, 'Fragment of Lightning', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803214,   1,       2048) /* ItemType - Gem */
     , (803214,   5,          1) /* EncumbranceVal */
     , (803214,  11,          1) /* MaxStackSize */
     , (803214,  12,          1) /* StackSize */
     , (803214,  13,          1) /* StackUnitEncumbrance */
     , (803214,  15,          1) /* StackUnitValue */
     , (803214,  16,          1) /* ItemUseable - No */
     , (803214,  18,         64) /* UiEffects - Magical */
     , (803214,  19,          1) /* Value */
     , (803214,  33,          1) /* Bonded - Bonded */
     , (803214,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803214,  94,          8) /* TargetType - Jewelry */
     , (803214, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803214,  22, True ) /* Inscribable */
     , (803214,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803214,   1, 'Fragment of Lightning') /* Name */
     , (803214,  33, 'HarginPickup3') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803214,   1,   33556407) /* Setup */
     , (803214,   3,  536870932) /* SoundTable */
     , (803214,   7,  268435965) /* ClothingBase */
     , (803214,   8,  100673211) /* Icon */
     , (803214,  22,  872415275) /* PhysicsEffectTable */
     , (803214,  52,  100686604) /* IconUnderlay */;
