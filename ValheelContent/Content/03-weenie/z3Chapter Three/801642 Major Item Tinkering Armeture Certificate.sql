DELETE FROM `weenie` WHERE `class_Id` = 801642;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801642, 'Major Item Tinkering Armeture Certificate', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801642,   1,        128) /* ItemType - Misc */
     , (801642,   5,          5) /* EncumbranceVal */
     , (801642,  11,          1) /* MaxStackSize */
     , (801642,  15,         10) /* StackUnitValue */
     , (801642,  16,          1) /* ItemUseable - No */
     , (801642,  19,         10) /* Value */
     , (801642,  33,          1) /* Bonded - Bonded */
     , (801642,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801642, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801642,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801642,   1, 'Major Item Tinkering Armeture Certificate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801642,   1,   33554659) /* Setup */
     , (801642,   3,  536870932) /* SoundTable */
     , (801642,   8,  100692711) /* Icon */
     , (801642,  22,  872415275) /* PhysicsEffectTable */;
