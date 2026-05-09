DELETE FROM `weenie` WHERE `class_Id` = 300168;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300168, 'tungstenpickaxetool', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300168,   1,        128) /* ItemType - Misc */
     , (300168,   5,       4000) /* EncumbranceVal */
     , (300168,   8,          5) /* Mass */
     , (300168,   9,          0) /* ValidLocations - None */
     , (300168,  11,          1) /* MaxStackSize */
     , (300168,  12,          1) /* StackSize */
     , (300168,  13,       4000) /* StackUnitEncumbrance */
     , (300168,  14,          5) /* StackUnitMass */
     , (300168,  15,       1500) /* StackUnitValue */
     , (300168,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (300168,  19,       1500) /* Value */
     , (300168,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300168,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300168,  22, True ) /* Inscribable */
     , (300168,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300168,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300168,   1, 'Tungsten Pick Axe') /* Name */
     , (300168,  14, 'This item is used in mining and is too heavy to wield.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300168,   1,   33554813) /* Setup */
     , (300168,   3,  536870932) /* SoundTable */
     , (300168,   8,  100670275) /* Icon */
     , (300168,  22,  872415275) /* PhysicsEffectTable */;
