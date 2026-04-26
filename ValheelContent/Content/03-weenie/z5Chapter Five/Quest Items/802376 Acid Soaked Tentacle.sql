DELETE FROM `weenie` WHERE `class_Id` = 802376;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802376, 'Acid Soaked Tentacle', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802376,   1,       2048) /* ItemType - Gem */
     , (802376,   5,          1) /* EncumbranceVal */
     , (802376,  11,          1) /* MaxStackSize */
     , (802376,  12,          1) /* StackSize */
     , (802376,  13,          1) /* StackUnitEncumbrance */
     , (802376,  15,         25) /* StackUnitValue */
     , (802376,  16,          1) /* ItemUseable - No */
     , (802376,  18,          0) /* UiEffects - Magical */
     , (802376,  19,          2) /* Value */
     , (802376,  33,          1) /* Bonded - Bonded */
     , (802376,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802376,  94,          8) /* TargetType - Jewelry */
     , (802376, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802376,  22, True ) /* Inscribable */
     , (802376,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802376,   1, 'Acid Soaked Tentacle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802376,   1,   33556407) /* Setup */
     , (802376,   3,  536870932) /* SoundTable */
     , (802376,   7,  268435965) /* ClothingBase */
     , (802376,   8,  100671118) /* Icon */
     , (802376,  22,  872415275) /* PhysicsEffectTable */;
