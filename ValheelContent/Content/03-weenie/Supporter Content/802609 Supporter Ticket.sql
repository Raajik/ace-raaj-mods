DELETE FROM `weenie` WHERE `class_Id` = 802609;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802609, 'SupporterTicket', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802609,   1,        128) /* ItemType - Misc */
     , (802609,   5,          1) /* EncumbranceVal */
     , (802609,  11,          1) /* MaxStackSize */
     , (802609,  12,          1) /* StackSize */
     , (802609,  13,          1) /* StackUnitEncumbrance */
     , (802609,  15,          1) /* StackUnitValue */
     , (802609,  16,          1) /* ItemUseable - No */
     , (802609,  19,          1) /* Value */
     , (802609,  33,          1) /* Bonded - Bonded */
     , (802609,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802609, 114,          1) /* Attuned - Attuned */
     , (802609, 267,    1296000) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802609,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802609,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802609,   1, 'Lux Party Pass') /* Name */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802609,   1,   33554773) /* Setup */
     , (802609,   3,  536870932) /* SoundTable */
     , (802609,   8,  100673915) /* Icon */
     , (802609,  22,  872415275) /* PhysicsEffectTable */;
