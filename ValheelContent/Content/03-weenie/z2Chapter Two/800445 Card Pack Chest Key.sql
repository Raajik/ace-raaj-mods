DELETE FROM `weenie` WHERE `class_Id` = 800445;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800445, 'Card Pack Chest Key', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800445,   1,      16384) /* ItemType - Key */
     , (800445,   5,         50) /* EncumbranceVal */
     , (800445,   8,         20) /* Mass */
     , (800445,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800445,  19,        100) /* Value */
     , (800445,  33,          1) /* Bonded - Bonded */
     , (800445,  91,          1) /* MaxStructure */
     , (800445,  92,          1) /* Structure */
     , (800445,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800445,  94,        640) /* TargetType - LockableMagicTarget */
     , (800445, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800445,  22, True ) /* Inscribable */
     , (800445,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800445,   1, 'Card Pack Chest Key') /* Name */
     , (800445,  13, 'cardpackkey') /* KeyCode */
     , (800445,  14, 'Use this item on the Card Pack Chest to unlock it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800445,   1,   33554784) /* Setup */
     , (800445,   8,  100667483) /* Icon */
     , (800445,  22,  872415275) /* PhysicsEffectTable */;
