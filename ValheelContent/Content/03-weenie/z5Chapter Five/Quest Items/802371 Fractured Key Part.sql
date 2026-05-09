DELETE FROM `weenie` WHERE `class_Id` = 802371;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802371, 'Fractured Key Part1', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802371,   1,       2048) /* ItemType - Gem */
     , (802371,   5,          1) /* EncumbranceVal */
     , (802371,  11,          1) /* MaxStackSize */
     , (802371,  12,          1) /* StackSize */
     , (802371,  13,          1) /* StackUnitEncumbrance */
     , (802371,  15,         25) /* StackUnitValue */
     , (802371,  16,          1) /* ItemUseable - No */
     , (802371,  18,          0) /* UiEffects - Magical */
     , (802371,  19,          2) /* Value */
     , (802371,  33,          1) /* Bonded - Bonded */
     , (802371,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802371,  94,          8) /* TargetType - Jewelry */
     , (802371, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802371,  22, True ) /* Inscribable */
     , (802371,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802371,   1, 'Fractured Key Part') /* Name */
     , (802371,  33, 'FKey1') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802371,   1,   33556407) /* Setup */
     , (802371,   3,  536870932) /* SoundTable */
     , (802371,   7,  268435965) /* ClothingBase */
     , (802371,   8,  100674026) /* Icon */
     , (802371,  22,  872415275) /* PhysicsEffectTable */;
