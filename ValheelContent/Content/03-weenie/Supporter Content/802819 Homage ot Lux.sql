DELETE FROM `weenie` WHERE `class_Id` = 802819;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802819, 'LuxHomage', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802819,   1,        128) /* ItemType - Misc */
     , (802819,   5,          1) /* EncumbranceVal */
     , (802819,  11,          1) /* MaxStackSize */
     , (802819,  12,          1) /* StackSize */
     , (802819,  13,          1) /* StackUnitEncumbrance */
     , (802819,  15,          1) /* StackUnitValue */
     , (802819,  16,          1) /* ItemUseable - No */
     , (802819,  19,          1) /* Value */
     , (802819,  33,          1) /* Bonded - Bonded */
     , (802819,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802819, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802819,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802819,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802819,   1, 'Homage to Lux') /* Name */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802819,   1,   33554773) /* Setup */
     , (802819,   3,  536870932) /* SoundTable */
     , (802819,   8,  100673915) /* Icon */
     , (802819,  22,  872415275) /* PhysicsEffectTable */;
