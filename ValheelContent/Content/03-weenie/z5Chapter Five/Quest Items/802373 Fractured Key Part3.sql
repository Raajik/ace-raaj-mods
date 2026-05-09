DELETE FROM `weenie` WHERE `class_Id` = 802373;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802373, 'Fractured Key Part3', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802373,   1,       2048) /* ItemType - Gem */
     , (802373,   5,          1) /* EncumbranceVal */
     , (802373,  11,          1) /* MaxStackSize */
     , (802373,  12,          1) /* StackSize */
     , (802373,  13,          1) /* StackUnitEncumbrance */
     , (802373,  15,         25) /* StackUnitValue */
     , (802373,  16,          1) /* ItemUseable - No */
     , (802373,  18,          0) /* UiEffects - Magical */
     , (802373,  19,          2) /* Value */
     , (802373,  33,          1) /* Bonded - Bonded */
     , (802373,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802373,  94,          8) /* TargetType - Jewelry */
     , (802373, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802373,  22, True ) /* Inscribable */
     , (802373,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802373,   1, 'Fractured Key Part') /* Name */
     , (802373,  33, 'FKey3') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802373,   1,   33556407) /* Setup */
     , (802373,   3,  536870932) /* SoundTable */
     , (802373,   7,  268435965) /* ClothingBase */
     , (802373,   8,  100674028) /* Icon */
     , (802373,  22,  872415275) /* PhysicsEffectTable */;
