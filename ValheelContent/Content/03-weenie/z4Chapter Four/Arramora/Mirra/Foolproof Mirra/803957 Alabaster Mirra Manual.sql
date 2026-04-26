DELETE FROM `weenie` WHERE `class_Id` = 803957;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803957, 'AlabasterMirraManual', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803957,   1,        128) /* ItemType - Misc */
     , (803957,   5,          1) /* EncumbranceVal */
     , (803957,   8,          5) /* Mass */
     , (803957,   9,          0) /* ValidLocations - None */
     , (803957,  11,          1) /* MaxStackSize */
     , (803957,  12,          1) /* StackSize */
     , (803957,  13,          1) /* StackUnitEncumbrance */
     , (803957,  14,          5) /* StackUnitMass */
     , (803957,  15,     250000) /* StackUnitValue */
     , (803957,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803957,  19,     250000) /* Value */
     , (803957,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803957,  94,          2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803957,  22, True ) /* Inscribable */
     , (803957,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803957,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803957,   1, 'Foolproof Alabaster Mirra') /* Name */
     , (803957,  14, 'Instert this gem into a gem socket on a piece of armor to permanently increase all Ratings by 25.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803957,   1,   33554809) /* Setup */
     , (803957,   3,  536870932) /* SoundTable */
     , (803957,   8,  100673223) /* Icon */
     , (803957,  22,  872415275) /* PhysicsEffectTable */
     , (803957,  50,  100690980) /* IconOverlay */
     , (803957,  52,  100686604) /* IconUnderlay */;
