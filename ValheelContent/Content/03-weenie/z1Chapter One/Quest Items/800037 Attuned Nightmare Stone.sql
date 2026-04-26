DELETE FROM `weenie` WHERE `class_Id` = 800037;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800037, 'Attuned Nightmare Stone', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800037,   1,       2048) /* ItemType - Gem */
     , (800037,   5,          1) /* EncumbranceVal */
     , (800037,  11,          1) /* MaxStackSize */
     , (800037,  12,          1) /* StackSize */
     , (800037,  13,          1) /* StackUnitEncumbrance */
     , (800037,  15,         25) /* StackUnitValue */
     , (800037,  16,          1) /* ItemUseable - No */
     , (800037,  18,          1) /* UiEffects - Magical */
     , (800037,  19,          2) /* Value */
     , (800037,  33,          1) /* Bonded - Bonded */
     , (800037,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800037,  94,          8) /* TargetType - Jewelry */
     , (800037, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800037,  22, True ) /* Inscribable */
     , (800037,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800037,   1, 'Attuned Nightmare Stone') /* Name */
     , (800037,  16, 'Thorid the Dark in Ayan can inlay this stone into a weapon of your choice.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800037,   1,   33556407) /* Setup */
     , (800037,   3,  536870932) /* SoundTable */
     , (800037,   7,  268435965) /* ClothingBase */
     , (800037,   8,  100672516) /* Icon */
     , (800037,  22,  872415275) /* PhysicsEffectTable */;
