DELETE FROM `weenie` WHERE `class_Id` = 800941;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800941, 'Tradewinds Path Placeholder', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800941,   1,        128) /* ItemType - Misc */
     , (800941,   5,          5) /* EncumbranceVal */
     , (800941,  11,        100) /* MaxStackSize */
     , (800941,  12,          1) /* StackSize */
     , (800941,  13,          5) /* StackUnitEncumbrance */
     , (800941,  15,         50) /* StackUnitValue */
     , (800941,  16,          1) /* ItemUseable - No */
     , (800941,  19,         50) /* Value */
     , (800941,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800941, 267,       3600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800941,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800941,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800941,   1, 'Tradewinds Path Placeholder') /* Name */
     , (800941,  14, 'Hand this to the Tradewinds Path Guard when the Trials are available again.') /* Use */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800941,   1,   33554773) /* Setup */
     , (800941,   3,  536870932) /* SoundTable */
     , (800941,   8,      28773) /* Icon */
     , (800941,  22,  872415275) /* PhysicsEffectTable */;
