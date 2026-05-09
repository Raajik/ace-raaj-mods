DELETE FROM `weenie` WHERE `class_Id` = 802316;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802316, 'LivingProtoKeyDurable', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802316,   1,      16384) /* ItemType - Key */
     , (802316,   5,         50) /* EncumbranceVal */
     , (802316,   8,         20) /* Mass */
     , (802316,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802316,  18,         64) /* UiEffects - Lightning */
     , (802316,  19,         10) /* Value */
     , (802316,  91,         10) /* MaxStructure */
     , (802316,  92,         10) /* Structure */
     , (802316,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802316,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802316,  22, True ) /* Inscribable */
     , (802316,  23, True ) /* DestroyOnSell */
     , (802316,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802316,   1, 'Durable Living Proto Key') /* Name */
     , (802316,  13, 'livingprotokey2') /* KeyCode */
     , (802316,  14, 'Use this item on a locked Living Proto Chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802316,   1,   33554784) /* Setup */
     , (802316,   3,  536870932) /* SoundTable */
     , (802316,   8,  100670820) /* Icon */
     , (802316,  22,  872415275) /* PhysicsEffectTable */;
