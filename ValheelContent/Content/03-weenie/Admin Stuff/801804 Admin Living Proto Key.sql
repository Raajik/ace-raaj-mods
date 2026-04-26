DELETE FROM `weenie` WHERE `class_Id` = 801804;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801804, 'LivingProtoKeyAdmin', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801804,   1,      16384) /* ItemType - Key */
     , (801804,   5,         50) /* EncumbranceVal */
     , (801804,   8,         20) /* Mass */
     , (801804,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801804,  18,         64) /* UiEffects - Lightning */
     , (801804,  19,        200) /* Value */
     , (801804,  91,          1) /* MaxStructure */
     , (801804,  92,          1) /* Structure */
     , (801804,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801804,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801804,  22, True ) /* Inscribable */
     , (801804,  23, True ) /* DestroyOnSell */
     , (801804,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801804,   1, 'Admin Living Proto Key') /* Name */
     , (801804,  13, 'livingprotokey') /* KeyCode */
     , (801804,  14, 'Use this item on a locked Living Proto Chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801804,   1,   33554784) /* Setup */
     , (801804,   3,  536870932) /* SoundTable */
     , (801804,   8,  100670820) /* Icon */
     , (801804,  22,  872415275) /* PhysicsEffectTable */;
