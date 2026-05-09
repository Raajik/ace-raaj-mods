DELETE FROM `weenie` WHERE `class_Id` = 802596;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802596, 'GunBladeAdapter', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802596,   1,        128) /* ItemType - Misc */
     , (802596,   5,         50) /* EncumbranceVal */
     , (802596,   8,          5) /* Mass */
     , (802596,   9,          0) /* ValidLocations - None */
     , (802596,  11,          1) /* MaxStackSize */
     , (802596,  12,          1) /* StackSize */
     , (802596,  13,       4000) /* StackUnitEncumbrance */
     , (802596,  14,          5) /* StackUnitMass */
     , (802596,  15,       1500) /* StackUnitValue */
     , (802596,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802596,  19,       1500) /* Value */
     , (802596,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802596,  94,          1) /* TargetType - Melee Weapons */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802596,  22, True ) /* Inscribable */
     , (802596,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802596,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802596,   1, 'Gun Blade Adapter') /* Name */
     , (802596,  14, 'Use this item on any sword to turn it into a Gunblade.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802596,   1,   33554813) /* Setup */
     , (802596,   3,  536870932) /* SoundTable */
     , (802596,   8,  100686753) /* Icon */
     , (802596,  22,  872415275) /* PhysicsEffectTable */;
