DELETE FROM `weenie` WHERE `class_Id` = 801428;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801428, 'PrismaticIOU', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801428,   1,        128) /* ItemType - Misc */
     , (801428,   5,          1) /* EncumbranceVal */
     , (801428,  11,       1000) /* MaxStackSize */
     , (801428,  12,          1) /* StackSize */
     , (801428,  13,          1) /* StackUnitEncumbrance */
     , (801428,  15,       2500) /* StackUnitValue */
     , (801428,  16,          1) /* ItemUseable - No */
     , (801428,  19,       2500) /* Value */
     , (801428,  33,          1) /* Bonded - Bonded */
     , (801428,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801428, 114,          0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801428,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801428,   1, 'Prismatic+ Card Pack Note') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801428,   1,   33554659) /* Setup */
     , (801428,   3,  536870932) /* SoundTable */
     , (801428,   8,  100691812) /* Icon */
     , (801428,  22,  872415275) /* PhysicsEffectTable */;
	 