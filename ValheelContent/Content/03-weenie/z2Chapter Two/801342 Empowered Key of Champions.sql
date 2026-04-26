DELETE FROM `weenie` WHERE `class_Id` = 801342;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801342, 'Empowered Key of Champions', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801342,   1,      16384) /* ItemType - Key */
     , (801342,   5,         10) /* EncumbranceVal */
     , (801342,   8,         10) /* Mass */
     , (801342,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801342,  18,         16) /* UiEffects - BoostStamina */
     , (801342,  19,        100) /* Value */
     , (801342,  91,          3) /* MaxStructure */
     , (801342,  92,          3) /* Structure */
     , (801342,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801342,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801342,  22, True ) /* Inscribable */
     , (801342,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801342,   1, 'Empowered Key of Champions') /* Name */
     , (801342,  13, 'valheelempoweredkey') /* KeyCode */
     , (801342,  16, 'This key goes to a ValHeel Empowered Legendary Chest.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801342,   1,   33554784) /* Setup */
     , (801342,   3,  536870932) /* SoundTable */
     , (801342,   8,  100668437) /* Icon */
     , (801342,  22,  872415275) /* PhysicsEffectTable */;
