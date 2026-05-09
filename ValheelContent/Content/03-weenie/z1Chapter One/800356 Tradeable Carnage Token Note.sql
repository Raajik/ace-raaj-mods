DELETE FROM `weenie` WHERE `class_Id` = 800356;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800356, 'Tradeable Carnage Token Note', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800356,   1,        128) /* ItemType - Misc */
     , (800356,   5,          1) /* EncumbranceVal */
     , (800356,  11,       1000) /* MaxStackSize */
     , (800356,  12,          1) /* StackSize */
     , (800356,  13,          1) /* StackUnitEncumbrance */
     , (800356,  15,         10) /* StackUnitValue */
     , (800356,  16,          1) /* ItemUseable - No */
     , (800356,  19,         10) /* Value */
     , (800356,  33,          1) /* Bonded - Bonded */
     , (800356,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800356, 114,          0) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800356,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800356,   1, 'Tradeable Carnage Token Note') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800356,   1,   33554659) /* Setup */
     , (800356,   3,  536870932) /* SoundTable */
     , (800356,   8,  100691812) /* Icon */
     , (800356,  22,  872415275) /* PhysicsEffectTable */;
