DELETE FROM `weenie` WHERE `class_Id` = 801275;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801275, 'Heavy ValheelKey', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801275,   1,      16384) /* ItemType - Key */
     , (801275,   5,         10) /* EncumbranceVal */
     , (801275,   8,         10) /* Mass */
     , (801275,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801275,  18,         16) /* UiEffects - BoostStamina */
     , (801275,  19,        100) /* Value */
     , (801275,  91,          3) /* MaxStructure */
     , (801275,  92,          3) /* Structure */
     , (801275,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801275,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801275,  22, True ) /* Inscribable */
     , (801275,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801275,   1, 'Heavy ValHeel Empowered Key') /* Name */
     , (801275,  13, 'valheelkey') /* KeyCode */
     , (801275,  14, 'Use this item on a locked door.') /* Use */    
     , (801275,  16, 'Use this key to use a ValHeel Empowered Chest.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801275,   1,   33554784) /* Setup */
     , (801275,   3,  536870932) /* SoundTable */
     , (801275,   8,  100668437) /* Icon */
     , (801275,  22,  872415275) /* PhysicsEffectTable */;
