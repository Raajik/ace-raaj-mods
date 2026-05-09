DELETE FROM `weenie` WHERE `class_Id` = 802073;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802073, 'Bag of Stolen Goods', 1, '2021-11-08 06:01:47') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802073,   1,        128) /* ItemType - Misc */
     , (802073,   5,        500) /* EncumbranceVal */
     , (802073,  19,          0) /* Value */
     , (802073,  33,          1) /* Bonded - Bonded */
     , (802073,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802073, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802073,  22, False) /* Inscribable */
     , (802073,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802073,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802073,   1, 'Bag of Stolen Goods') /* Name */
     , (802073,  33, 'StolenGoodsPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802073,   1,   33554817) /* Setup */
     , (802073,   8,  100670082) /* Icon */;
