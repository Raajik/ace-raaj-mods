DELETE FROM `weenie` WHERE `class_Id` = 801647;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801647, 'advancedpathwardensupplykey', 22, '2021-11-01 00:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801647,   1,      16384) /* ItemType - Key */
     , (801647,   5,         10) /* EncumbranceVal */
     , (801647,   8,         20) /* Mass */
     , (801647,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801647,  19,          0) /* Value */
     , (801647,  33,          1) /* Bonded - Bonded */
     , (801647,  91,          1) /* MaxStructure */
     , (801647,  92,          1) /* Structure */
     , (801647,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801647,  94,        640) /* TargetType - LockableMagicTarget */
     , (801647, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801647,  22, True ) /* Inscribable */
     , (801647,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801647,   1, 'Advanced Pathwarden Supply Key') /* Name */
     , (801647,  13, 'advancedpathwardenchestkey') /* KeyCode */
     , (801647,  14, 'Use this item on a locked chest to unlock it.') /* Use */
     , (801647,  16, 'This key unlocks the Advanced Pathwarden Supply chests that can be found in Holtburg, Yaraq, Shoushi, and Sanamar.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801647,   1,   33554784) /* Setup */
     , (801647,   3,  536870932) /* SoundTable */
     , (801647,   8,  100668441) /* Icon */
     , (801647,  22,  872415275) /* PhysicsEffectTable */;
