DELETE FROM `weenie` WHERE `class_Id` = 300191;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300191, 'ValheelKey', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300191,   1,      16384) /* ItemType - Key */
     , (300191,   5,         10) /* EncumbranceVal */
     , (300191,   8,         10) /* Mass */
     , (300191,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (300191,  18,         16) /* UiEffects - BoostStamina */
     , (300191,  19,        100) /* Value */
     , (300191,  91,          1) /* MaxStructure */
     , (300191,  92,          1) /* Structure */
     , (300191,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300191,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300191,  22, True ) /* Inscribable */
     , (300191,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300191,   1, 'ValHeel Empowered Key') /* Name */
     , (300191,  13, 'valheelkey') /* KeyCode */
     , (300191,  14, 'Use this item on a locked door.') /* Use */    
     , (300191,  16, 'Use this key to use a ValHeel Empowered Chest.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300191,   1,   33554784) /* Setup */
     , (300191,   3,  536870932) /* SoundTable */
     , (300191,   8,  100668437) /* Icon */
     , (300191,  22,  872415275) /* PhysicsEffectTable */;
