DELETE FROM `weenie` WHERE `class_Id` = 803447;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803447, 'Carved Arramoran Key', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803447,   1,      16384) /* ItemType - Key */
     , (803447,   5,        100) /* EncumbranceVal */
     , (803447,   8,         20) /* Mass */
     , (803447,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803447,  19,          0) /* Value */
     , (803447,  91,          5) /* MaxStructure */
     , (803447,  92,          5) /* Structure */
     , (803447,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803447,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803447,  22, True ) /* Inscribable */
     , (803447,  23, True ) /* DestroyOnSell */
     , (803447,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803447,   1, 'Carved Arramoran Key') /* Name */
     , (803447,  13, 'arramoranlock') /* KeyCode */
     , (803447,  14, 'Use this item on a locked Arramoran chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803447,   1,   33554784) /* Setup */
     , (803447,   3,  536870932) /* SoundTable */
     , (803447,   8,  100674912) /* Icon */
     , (803447,  22,  872415275) /* PhysicsEffectTable */;
