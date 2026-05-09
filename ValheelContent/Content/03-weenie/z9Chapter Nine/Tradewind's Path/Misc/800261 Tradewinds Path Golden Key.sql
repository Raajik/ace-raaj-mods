DELETE FROM `weenie` WHERE `class_Id` = 800261;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800261, 'tradewinds path key', 22, '2005-02-09 10:00:00') /* Key */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800261,   1,      16384) /* ItemType - Key */
     , (800261,   5,         50) /* EncumbranceVal */
     , (800261,   8,         20) /* Mass */
     , (800261,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800261,  19,        100) /* Value */
     , (800261,  33,          1) /* Bonded - Bonded */
     , (800261,  91,          1) /* MaxStructure */
     , (800261,  92,          1) /* Structure */
     , (800261,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800261,  94,        640) /* TargetType - LockableMagicTarget */
     , (800261, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800261,  22, True ) /* Inscribable */
     , (800261,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800261,   1, 'Tradewinds Path Golden Key') /* Name */
     , (800261,  13, 'tradepathkey') /* KeyCode */
     , (800261,  14, 'Use this item on the Tradewinds Path Chest to unlock it.') /* Use */
     , (800261,  33, 'TPGoldKey') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800261,   1,   33554784) /* Setup */
     , (800261,   8,  100667483) /* Icon */
     , (800261,  22,  872415275) /* PhysicsEffectTable */;
