DELETE FROM `weenie` WHERE `class_Id` = 802317;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802317, 'LivingProtoKeyMega', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802317,   1,      16384) /* ItemType - Key */
     , (802317,   5,         50) /* EncumbranceVal */
     , (802317,   8,         20) /* Mass */
     , (802317,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802317,  18,         64) /* UiEffects - Lightning */
     , (802317,  19,         50) /* Value */
     , (802317,  91,         50) /* MaxStructure */
     , (802317,  92,         50) /* Structure */
     , (802317,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802317,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802317,  22, True ) /* Inscribable */
     , (802317,  23, True ) /* DestroyOnSell */
     , (802317,  63, False) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802317,   1, 'Mega Living Proto Key') /* Name */
     , (802317,  13, 'livingprotokey2') /* KeyCode */
     , (802317,  14, 'Use this item on a locked Living Proto Chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802317,   1,   33554784) /* Setup */
     , (802317,   3,  536870932) /* SoundTable */
     , (802317,   8,  100670820) /* Icon */
     , (802317,  22,  872415275) /* PhysicsEffectTable */;
