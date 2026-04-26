DELETE FROM `weenie` WHERE `class_Id` = 802315;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802315, 'LivingProtoKeyHeavy', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802315,   1,      16384) /* ItemType - Key */
     , (802315,   5,         50) /* EncumbranceVal */
     , (802315,   8,         20) /* Mass */
     , (802315,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802315,  18,         64) /* UiEffects - Lightning */
     , (802315,  19,          3) /* Value */
     , (802315,  91,          3) /* MaxStructure */
     , (802315,  92,          3) /* Structure */
     , (802315,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802315,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802315,  22, True ) /* Inscribable */
     , (802315,  23, True ) /* DestroyOnSell */
     , (802315,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802315,   1, 'Heavy Living Proto Key') /* Name */
     , (802315,  13, 'livingprotokey2') /* KeyCode */
     , (802315,  14, 'Use this item on a locked Living Proto Chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802315,   1,   33554784) /* Setup */
     , (802315,   3,  536870932) /* SoundTable */
     , (802315,   8,  100670820) /* Icon */
     , (802315,  22,  872415275) /* PhysicsEffectTable */;
