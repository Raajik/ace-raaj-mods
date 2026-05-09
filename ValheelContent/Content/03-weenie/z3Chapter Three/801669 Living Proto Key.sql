DELETE FROM `weenie` WHERE `class_Id` = 801669;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801669, 'LivingProtoKey', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801669,   1,      16384) /* ItemType - Key */
     , (801669,   5,         50) /* EncumbranceVal */
     , (801669,   8,         20) /* Mass */
     , (801669,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801669,  18,         64) /* UiEffects - Lightning */
     , (801669,  19,         10) /* Value */
     , (801669,  91,          1) /* MaxStructure */
     , (801669,  92,          1) /* Structure */
     , (801669,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801669,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801669,  22, True ) /* Inscribable */
     , (801669,  23, True ) /* DestroyOnSell */
     , (801669,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801669,   1, 'Living Proto Key') /* Name */
     , (801669,  13, 'livingprotokey2') /* KeyCode */
     , (801669,  14, 'Use this item on a locked Living Proto Chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801669,   1,   33554784) /* Setup */
     , (801669,   3,  536870932) /* SoundTable */
     , (801669,   8,  100670820) /* Icon */
     , (801669,  22,  872415275) /* PhysicsEffectTable */;
