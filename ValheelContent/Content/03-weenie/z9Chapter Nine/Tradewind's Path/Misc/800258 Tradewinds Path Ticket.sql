DELETE FROM `weenie` WHERE `class_Id` = 800258;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800258, 'Tradewinds Path Ticket', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800258,   1,        128) /* ItemType - Misc */
     , (800258,   5,          5) /* EncumbranceVal */
     , (800258,  11,        100) /* MaxStackSize */
     , (800258,  12,          1) /* StackSize */
     , (800258,  13,          5) /* StackUnitEncumbrance */
     , (800258,  15,         50) /* StackUnitValue */
     , (800258,  16,          1) /* ItemUseable - No */
     , (800258,  19,         50) /* Value */
     , (800258,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800258, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800258,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800258,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800258,   1, 'Tradewinds Path Ticket') /* Name */
     , (800258,  14, 'Hand this to the Tradewinds Path Guard in the Town Network to gain access to the Tradewinds Path Trials.') /* Use */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800258,   1,   33554773) /* Setup */
     , (800258,   3,  536870932) /* SoundTable */
     , (800258,   8,  100689371) /* Icon */
     , (800258,  22,  872415275) /* PhysicsEffectTable */;
