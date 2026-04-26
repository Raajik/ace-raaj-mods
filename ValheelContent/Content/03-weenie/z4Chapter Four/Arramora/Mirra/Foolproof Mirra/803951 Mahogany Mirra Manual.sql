DELETE FROM `weenie` WHERE `class_Id` = 803951;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803951, 'MahoganyMirraManual', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803951,   1,        128) /* ItemType - Misc */
     , (803951,   5,          1) /* EncumbranceVal */
     , (803951,   8,          5) /* Mass */
     , (803951,   9,          0) /* ValidLocations - None */
     , (803951,  11,          1) /* MaxStackSize */
     , (803951,  12,          1) /* StackSize */
     , (803951,  13,          1) /* StackUnitEncumbrance */
     , (803951,  14,          5) /* StackUnitMass */
     , (803951,  15,      50000) /* StackUnitValue */
     , (803951,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803951,  19,      50000) /* Value */
     , (803951,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803951,  94,        256) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803951,  22, True ) /* Inscribable */
     , (803951,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803951,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803951,   1, 'Foolproof Mahogany Mirra') /* Name */
     , (803951,  14, 'Instert this gem into a gem socket on a missile weapon to permanently increase the Damage Modifier.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803951,   1,   33554809) /* Setup */
     , (803951,   3,  536870932) /* SoundTable */
     , (803951,   8,  100673232) /* Icon */
     , (803951,  22,  872415275) /* PhysicsEffectTable */
     , (803951,  50,  100690980) /* IconOverlay */
     , (803951,  52,  100686604) /* IconUnderlay */;
