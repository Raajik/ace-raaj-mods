DELETE FROM `weenie` WHERE `class_Id` = 800443;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800443, 'One Time Skill Credit Coin', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800443,   1,        128) /* ItemType - Misc */
     , (800443,   5,          1) /* EncumbranceVal */
     , (800443,  11,        100) /* MaxStackSize */
     , (800443,  12,          1) /* StackSize */
     , (800443,  13,          1) /* StackUnitEncumbrance */
     , (800443,  15,          1) /* StackUnitValue */
     , (800443,  16,          1) /* ItemUseable - No */
     , (800443,  19,          1) /* Value */
     , (800443,  33,          1) /* Bonded - Bonded */
     , (800443,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800443, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800443,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800443,   1, 'One Time Skill Credit Coin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800443,   1,   33554802) /* Setup */
     , (800443,   3,  536870932) /* SoundTable */
     , (800443,   8,  100689744) /* Icon */
     , (800443,  22,  872415275) /* PhysicsEffectTable */;
