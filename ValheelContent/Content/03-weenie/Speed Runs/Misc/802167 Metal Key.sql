DELETE FROM `weenie` WHERE `class_Id` = 802167;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802167, 'MetalKey', 22, '2021-11-01 00:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802167,   1,      16384) /* ItemType - Key */
     , (802167,   5,         10) /* EncumbranceVal */
     , (802167,   8,         20) /* Mass */
     , (802167,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802167,  19,          0) /* Value */
     , (802167,  33,          1) /* Bonded - Bonded */
     , (802167,  91,          1) /* MaxStructure */
     , (802167,  92,          1) /* Structure */
     , (802167,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802167,  94,        640) /* TargetType - LockableMagicTarget */
     , (802167, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802167,  22, True ) /* Inscribable */
     , (802167,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802167,   1, 'Metal Key') /* Name */
     , (802167,  13, 'metalkeycode') /* KeyCode */
     , (802167,  14, 'Use this item on a locked chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802167,   1,   33554784) /* Setup */
     , (802167,   3,  536870932) /* SoundTable */
     , (802167,   8,  100668441) /* Icon */
     , (802167,  22,  872415275) /* PhysicsEffectTable */;
