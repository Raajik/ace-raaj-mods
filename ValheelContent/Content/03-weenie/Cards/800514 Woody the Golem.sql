DELETE FROM `weenie` WHERE `class_Id` = 800514;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800514, 'Woody the Golem', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800514,   1,        128) /* ItemType - Misc */
     , (800514,   5,          1) /* EncumbranceVal */
     , (800514,   8,          1) /* Mass */
     , (800514,   9,          0) /* ValidLocations - None */
     , (800514,  11,       1000) /* MaxStackSize */
     , (800514,  12,          1) /* StackSize */
     , (800514,  13,         10) /* StackUnitEncumbrance */
     , (800514,  14,         10) /* StackUnitMass */
     , (800514,  15,          1) /* StackUnitValue */
     , (800514,  16,          1) /* ItemUseable - No */
     , (800514,  19,          1) /* Value */
     , (800514,  33,          1) /* Bonded - Bonded */
     , (800514,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800514, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800514,  22, True ) /* Inscribable */
     , (800514,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800514,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800514,   1, 'Woody the Golem (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800514,   1,   33554773) /* Setup */
     , (800514,   3,  536870932) /* SoundTable */
     , (800514,   8,  100668176) /* Icon */
     , (800514,  22,  872415275) /* PhysicsEffectTable */;