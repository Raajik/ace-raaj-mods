DELETE FROM `weenie` WHERE `class_Id` = 801375;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801375, 'AdminValheelKey', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801375,   1,      16384) /* ItemType - Key */
     , (801375,   5,         10) /* EncumbranceVal */
     , (801375,   8,         10) /* Mass */
     , (801375,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801375,  18,         16) /* UiEffects - BoostStamina */
     , (801375,  19,        100) /* Value */
     , (801375,  91,          1) /* MaxStructure */
     , (801375,  92,          1) /* Structure */
     , (801375,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801375,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801375,  22, True ) /* Inscribable */
     , (801375,  23, True ) /* DestroyOnSell */
     , (801375,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801375,   1, 'Admin ValHeel Empowered Key') /* Name */
     , (801375,  13, 'valheelkey') /* KeyCode */
     , (801375,  14, 'Use this item on a locked door.') /* Use */
     , (801375,  16, 'Use this key to use a ValHeel Empowered Chest.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801375,   1,   33554784) /* Setup */
     , (801375,   3,  536870932) /* SoundTable */
     , (801375,   8,  100668437) /* Icon */
     , (801375,  22,  872415275) /* PhysicsEffectTable */;
