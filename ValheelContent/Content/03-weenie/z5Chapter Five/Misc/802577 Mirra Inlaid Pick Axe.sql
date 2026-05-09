DELETE FROM `weenie` WHERE `class_Id` = 802577;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802577, 'mirrasocketedpickaxetool', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802577,   1,        128) /* ItemType - Misc */
     , (802577,   5,       4000) /* EncumbranceVal */
     , (802577,   8,          5) /* Mass */
     , (802577,   9,          0) /* ValidLocations - None */
     , (802577,  11,          1) /* MaxStackSize */
     , (802577,  12,          1) /* StackSize */
     , (802577,  13,       4000) /* StackUnitEncumbrance */
     , (802577,  14,          5) /* StackUnitMass */
     , (802577,  15,       1500) /* StackUnitValue */
     , (802577,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802577,  18,          1) /* UiEffects */
     , (802577,  19,       1500) /* Value */
     , (802577,  33,         -1) /* Bonded - Normal */
     , (802577,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802577,  94,        128) /* TargetType - Misc */
     , (802577, 114,          0) /* Attuned - Normal */
     , (802577, 267,      72000) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802577,  22, True ) /* Inscribable */
     , (802577,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802577,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802577,   1, 'Mirra Inlaid Pick Axe') /* Name */
     , (802577,  14, 'This item is used in mining Glistening Nodes.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802577,   1,   33554813) /* Setup */
     , (802577,   3,  536870932) /* SoundTable */
     , (802577,   8,  100670275) /* Icon */
     , (802577,  22,  872415275) /* PhysicsEffectTable */
     , (802577,  52,  100686604) /* IconUnderlay */;
