DELETE FROM `weenie` WHERE `class_Id` = 801377;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801377, 'AdminEmpoweredKeyofChampions', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801377,   1,      16384) /* ItemType - Key */
     , (801377,   5,         10) /* EncumbranceVal */
     , (801377,   8,         10) /* Mass */
     , (801377,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801377,  18,         16) /* UiEffects - BoostStamina */
     , (801377,  19,        100) /* Value */
     , (801377,  91,          3) /* MaxStructure */
     , (801377,  92,          3) /* Structure */
     , (801377,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801377,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801377,  22, True ) /* Inscribable */
     , (801377,  23, True ) /* DestroyOnSell */
     , (801377,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801377,   1, 'Admin Empowered Key of Champions') /* Name */
     , (801377,  13, 'valheelempoweredkey') /* KeyCode */
     , (801377,  14, 'Use this item on an Empowered Key of Champions.') /* Use */    
     , (801377,  16, 'Use this key to use a ValHeel Empowered Chest.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801377,   1,   33554784) /* Setup */
     , (801377,   3,  536870932) /* SoundTable */
     , (801377,   8,  100668437) /* Icon */
     , (801377,  22,  872415275) /* PhysicsEffectTable */;
