DELETE FROM `weenie` WHERE `class_Id` = 802182;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802182, 'astick', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802182,   1,    4194304) /* ItemType - CraftCookingBase */
     , (802182,   5,         25) /* EncumbranceVal */
     , (802182,   8,         10) /* Mass */
     , (802182,   9,          0) /* ValidLocations - None */
     , (802182,  11,          1) /* MaxStackSize */
     , (802182,  12,          1) /* StackSize */
     , (802182,  13,         25) /* StackUnitEncumbrance */
     , (802182,  14,         10) /* StackUnitMass */
     , (802182,  15,         10) /* StackUnitValue */
     , (802182,  19,         10) /* Value */
     , (802182,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802182,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802182,   1, 'A Stick') /* Name */
     , (802182,  15, 'A Stick.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802182,   1,   33554749) /* Setup */
     , (802182,   3,  536870932) /* SoundTable */
     , (802182,   8,  100670312) /* Icon */
     , (802182,  22,  872415275) /* PhysicsEffectTable */;
