DELETE FROM `weenie` WHERE `class_Id` = 802131;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802131, 'brokendagger', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802131,   1,        128) /* ItemType - Misc */
     , (802131,   5,         50) /* EncumbranceVal */
     , (802131,  11,          1) /* MaxStackSize */
     , (802131,  12,          1) /* StackSize */
     , (802131,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802131,  19,          0) /* Value */
     , (802131,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802131,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802131,  11, True ) /* IgnoreCollisions */
     , (802131,  13, True ) /* Ethereal */
     , (802131,  14, True ) /* GravityStatus */
     , (802131,  19, True ) /* Attackable */
     , (802131,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802131,   1, 'Broken Dagger') /* Name */
     , (802131,  33, 'BrokenDaggerPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802131,   1,   33554817) /* Setup */
     , (802131,   3,  536870932) /* SoundTable */
     , (802131,   8,  100687869) /* Icon */
     , (802131,  22,  872415275) /* PhysicsEffectTable */;
