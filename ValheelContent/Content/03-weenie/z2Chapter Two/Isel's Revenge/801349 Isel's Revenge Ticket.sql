DELETE FROM `weenie` WHERE `class_Id` = 801349;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801349, 'IselRevengeTicket', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801349,   1,        128) /* ItemType - Misc */
     , (801349,   5,          5) /* EncumbranceVal */
     , (801349,  11,        100) /* MaxStackSize */
     , (801349,  12,          1) /* StackSize */
     , (801349,  13,          5) /* StackUnitEncumbrance */
     , (801349,  15,         50) /* StackUnitValue */
     , (801349,  16,          1) /* ItemUseable - No */
     , (801349,  19,         50) /* Value */
     , (801349,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801349, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801349,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801349,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801349,   1, 'Isel''s Revenge Ticket') /* Name */
     , (801349,  14, 'Hand this to Isel''s Guard in down the ramp to gain access to the this quest.') /* Use */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801349,   1,   33554773) /* Setup */
     , (801349,   3,  536870932) /* SoundTable */
     , (801349,   8,  100689371) /* Icon */
     , (801349,  22,  872415275) /* PhysicsEffectTable */;
