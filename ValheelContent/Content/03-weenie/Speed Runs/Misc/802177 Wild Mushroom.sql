DELETE FROM `weenie` WHERE `class_Id` = 802177;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802177, 'wildmushroom', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802177,   1,         32) /* ItemType - Food */
     , (802177,   5,         50) /* EncumbranceVal */
     , (802177,   8,         25) /* Mass */
     , (802177,   9,          0) /* ValidLocations - None */
     , (802177,  11,          1) /* MaxStackSize */
     , (802177,  12,          1) /* StackSize */
     , (802177,  13,         50) /* StackUnitEncumbrance */
     , (802177,  14,         25) /* StackUnitMass */
     , (802177,  15,          6) /* StackUnitValue */
     , (802177,  16,          8) /* ItemUseable - Contained */
     , (802177,  19,          6) /* Value */
     , (802177,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802177,   1, 'Wild Mushroom') /* Name */
     , (802177,  33, 'wildmushroompickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802177,   1,   33554805) /* Setup */
     , (802177,   3,  536870932) /* SoundTable */
     , (802177,   8,  100668116) /* Icon */
     , (802177,  22,  872415275) /* PhysicsEffectTable */;
