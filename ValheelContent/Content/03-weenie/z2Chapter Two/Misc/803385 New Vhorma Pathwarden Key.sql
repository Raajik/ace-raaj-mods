DELETE FROM `weenie` WHERE `class_Id` = 803385;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803385, 'NVPathKey', 22, '2021-11-01 00:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803385,   1,      16384) /* ItemType - Key */
     , (803385,   5,         10) /* EncumbranceVal */
     , (803385,   8,         20) /* Mass */
     , (803385,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803385,  19,          0) /* Value */
     , (803385,  33,          1) /* Bonded - Bonded */
     , (803385,  91,          1) /* MaxStructure */
     , (803385,  92,          1) /* Structure */
     , (803385,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803385,  94,        640) /* TargetType - LockableMagicTarget */
     , (803385, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803385,  22, True ) /* Inscribable */
     , (803385,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803385,   1, 'Advanced Pathwarden Supply Key') /* Name */
     , (803385,  13, 'NVPathChest') /* KeyCode */
     , (803385,  14, 'Use this item on a locked chest to unlock it.') /* Use */
     , (803385,  16, 'This key unlocks the New Vhorma Pathwarden Supply chest that can be found in New Vhorma.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803385,   1,   33554784) /* Setup */
     , (803385,   3,  536870932) /* SoundTable */
     , (803385,   8,  100668441) /* Icon */
     , (803385,  22,  872415275) /* PhysicsEffectTable */;
