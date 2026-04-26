DELETE FROM `weenie` WHERE `class_Id` = 803950;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803950, 'IronMirraManual', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803950,   1,        128) /* ItemType - Misc */
     , (803950,   5,          1) /* EncumbranceVal */
     , (803950,   8,          5) /* Mass */
     , (803950,   9,          0) /* ValidLocations - None */
     , (803950,  11,          1) /* MaxStackSize */
     , (803950,  12,          1) /* StackSize */
     , (803950,  13,          1) /* StackUnitEncumbrance */
     , (803950,  14,          5) /* StackUnitMass */
     , (803950,  15,      50000) /* StackUnitValue */
     , (803950,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803950,  19,      50000) /* Value */
     , (803950,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803950,  94,          1) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803950,  22, True ) /* Inscribable */
     , (803950,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803950,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803950,   1, 'Foolproof Iron Mirra') /* Name */
     , (803950,  14, 'Instert this gem into a gem socket on a melee weapon to permanently increase the Damage by 100.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803950,   1,   33554809) /* Setup */
     , (803950,   3,  536870932) /* SoundTable */
     , (803950,   8,  100673229) /* Icon */
     , (803950,  22,  872415275) /* PhysicsEffectTable */
     , (803950,  50,  100690980) /* IconOverlay */
     , (803950,  52,  100686604) /* IconUnderlay */;
