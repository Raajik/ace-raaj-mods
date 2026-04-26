DELETE FROM `weenie` WHERE `class_Id` = 802318;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802318, 'LivingProtoKeyUltra', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802318,   1,      16384) /* ItemType - Key */
     , (802318,   5,         50) /* EncumbranceVal */
     , (802318,   8,         20) /* Mass */
     , (802318,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802318,  18,         64) /* UiEffects - Lightning */
     , (802318,  19,        100) /* Value */
     , (802318,  91,        100) /* MaxStructure */
     , (802318,  92,        100) /* Structure */
     , (802318,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802318,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802318,  22, True ) /* Inscribable */
     , (802318,  23, True ) /* DestroyOnSell */
     , (802318,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802318,   1, 'Ultra Living Proto Key') /* Name */
     , (802318,  13, 'livingprotokey2') /* KeyCode */
     , (802318,  14, 'Use this item on a locked Living Proto Chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802318,   1,   33554784) /* Setup */
     , (802318,   3,  536870932) /* SoundTable */
     , (802318,   8,  100670820) /* Icon */
     , (802318,  22,  872415275) /* PhysicsEffectTable */;
