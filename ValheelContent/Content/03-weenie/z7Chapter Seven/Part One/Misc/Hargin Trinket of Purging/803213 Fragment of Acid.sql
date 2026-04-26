DELETE FROM `weenie` WHERE `class_Id` = 803213;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803213, 'Fragment of Acid', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803213,   1,       2048) /* ItemType - Gem */
     , (803213,   5,          1) /* EncumbranceVal */
     , (803213,  11,          1) /* MaxStackSize */
     , (803213,  12,          1) /* StackSize */
     , (803213,  13,          1) /* StackUnitEncumbrance */
     , (803213,  15,          1) /* StackUnitValue */
     , (803213,  16,          1) /* ItemUseable - No */
     , (803213,  18,        256) /* UiEffects - Magical */
     , (803213,  19,          1) /* Value */
     , (803213,  33,          1) /* Bonded - Bonded */
     , (803213,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803213,  94,          8) /* TargetType - Jewelry */
     , (803213, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803213,  22, True ) /* Inscribable */
     , (803213,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803213,   1, 'Fragment of Acid') /* Name */
     , (803213,  33, 'HarginPickup4') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803213,   1,   33556407) /* Setup */
     , (803213,   3,  536870932) /* SoundTable */
     , (803213,   7,  268435965) /* ClothingBase */
     , (803213,   8,  100673211) /* Icon */
     , (803213,  22,  872415275) /* PhysicsEffectTable */
     , (803213,  52,  100686604) /* IconUnderlay */;
