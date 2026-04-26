DELETE FROM `weenie` WHERE `class_Id` = 800359;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800359, 'Carnage Token Note2', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800359,   1,        128) /* ItemType - Misc */
     , (800359,   5,          1) /* EncumbranceVal */
     , (800359,  11,       1000) /* MaxStackSize */
     , (800359,  12,          1) /* StackSize */
     , (800359,  13,          1) /* StackUnitEncumbrance */
     , (800359,  15,         10) /* StackUnitValue */
     , (800359,  16,          1) /* ItemUseable - No */
     , (800359,  19,         10) /* Value */
     , (800359,  33,          1) /* Bonded - Bonded */
     , (800359,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800359, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800359,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800359,   1, 'Carnage Token Note') /* Name */
     , (800359,  33, 'CarnageTokenPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800359,   1,   33554659) /* Setup */
     , (800359,   3,  536870932) /* SoundTable */
     , (800359,   8,  100691812) /* Icon */
     , (800359,  22,  872415275) /* PhysicsEffectTable */;