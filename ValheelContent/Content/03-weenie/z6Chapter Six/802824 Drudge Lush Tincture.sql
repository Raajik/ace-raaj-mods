DELETE FROM `weenie` WHERE `class_Id` = 802824;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802824, 'DrudgeLushTincture', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802824,   1,        128) /* ItemType - Misc */
     , (802824,   5,          1) /* EncumbranceVal */
     , (802824,   8,          1) /* Mass */
     , (802824,   9,          0) /* ValidLocations - None */
     , (802824,  11,          1) /* MaxStackSize */
     , (802824,  12,          1) /* StackSize */
     , (802824,  13,          1) /* StackUnitEncumbrance */
     , (802824,  14,         70) /* StackUnitMass */
     , (802824,  15,         10) /* StackUnitValue */
     , (802824,  19,         10) /* Value */
     , (802824,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802824,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802824,   1, 'Drudge Lush Tincture') /* Name */
     , (802824,  14, 'Give this drink to Asheron to sober him up.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802824,   1,   33556854) /* Setup */
     , (802824,   3,  536870932) /* SoundTable */
     , (802824,   8,  100671131) /* Icon */
     , (802824,  22,  872415275) /* PhysicsEffectTable */;
