DELETE FROM `weenie` WHERE `class_Id` = 801429;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801429, 'PrismaticIOU2', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801429,   1,        128) /* ItemType - Misc */
     , (801429,   5,          1) /* EncumbranceVal */
     , (801429,  11,       1000) /* MaxStackSize */
     , (801429,  12,          1) /* StackSize */
     , (801429,  13,          1) /* StackUnitEncumbrance */
     , (801429,  15,        500) /* StackUnitValue */
     , (801429,  16,          1) /* ItemUseable - No */
     , (801429,  19,        500) /* Value */
     , (801429,  33,          1) /* Bonded - Bonded */
     , (801429,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801429, 114,          0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801429,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801429,   1, 'Prismatic+ Card Pack Note') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801429,   1,   33554659) /* Setup */
     , (801429,   3,  536870932) /* SoundTable */
     , (801429,   8,  100691812) /* Icon */
     , (801429,  22,  872415275) /* PhysicsEffectTable */;
	 