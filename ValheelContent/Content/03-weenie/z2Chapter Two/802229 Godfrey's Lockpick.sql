DELETE FROM `weenie` WHERE `class_Id` = 802229;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802229, 'GodfreyLockpick', 22, '2021-11-01 00:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802229,   1,      16384) /* ItemType - Key */
     , (802229,   5,         10) /* EncumbranceVal */
     , (802229,   8,         20) /* Mass */
     , (802229,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802229,  19,          0) /* Value */
     , (802229,  33,          1) /* Bonded - Bonded */
     , (802229,  91,          1) /* MaxStructure */
     , (802229,  92,          1) /* Structure */
     , (802229,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802229,  94,        640) /* TargetType - LockableMagicTarget */
     , (802229, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802229,  22, True ) /* Inscribable */
     , (802229,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802229,   1, 'Godfrey''s Lockpick') /* Name */
     , (802229,  13, 'shemchest') /* KeyCode */
     , (802229,  14, 'Use this item on a locked chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802229,   1,   33554790) /* Setup */
     , (802229,   8,  100670829) /* Icon */;
