DELETE FROM `weenie` WHERE `class_Id` = 800435;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800435, 'certchestkey', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800435,   1,      128) /* ItemType - Misc */
     , (800435,   5,         50) /* EncumbranceVal */
     , (800435,   8,         20) /* Mass */
     , (800435,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800435,  19,          2) /* Value */
     , (800435,  91,          1) /* MaxStructure */
     , (800435,  92,          1) /* Structure */
     , (800435,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800435,  94,        640) /* TargetType - LockableMagicTarget */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800435,  22, True ) /* Inscribable */
     , (800435,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800435,   1, 'Certificate Chest Key') /* Name */
     , (800435,  13, 'certchest1') /* KeyCode */
     , (800435,  14, 'Use this item to open the Certificate Chest.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800435,   1,   33554784) /* Setup */
     , (800435,   8,  100667483) /* Icon */
     , (800435,  22,  872415275) /* PhysicsEffectTable */;
