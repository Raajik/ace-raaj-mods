DELETE FROM `weenie` WHERE `class_Id` = 802372;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802372, 'Fractured Key Part2', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802372,   1,       2048) /* ItemType - Gem */
     , (802372,   5,          1) /* EncumbranceVal */
     , (802372,  11,          1) /* MaxStackSize */
     , (802372,  12,          1) /* StackSize */
     , (802372,  13,          1) /* StackUnitEncumbrance */
     , (802372,  15,         25) /* StackUnitValue */
     , (802372,  16,          1) /* ItemUseable - No */
     , (802372,  18,          0) /* UiEffects - Magical */
     , (802372,  19,          2) /* Value */
     , (802372,  33,          1) /* Bonded - Bonded */
     , (802372,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802372,  94,          8) /* TargetType - Jewelry */
     , (802372, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802372,  22, True ) /* Inscribable */
     , (802372,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802372,   1, 'Fractured Key Part') /* Name */
     , (802372,  33, 'FKey2') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802372,   1,   33556407) /* Setup */
     , (802372,   3,  536870932) /* SoundTable */
     , (802372,   7,  268435965) /* ClothingBase */
     , (802372,   8,  100674027) /* Icon */
     , (802372,  22,  872415275) /* PhysicsEffectTable */;
