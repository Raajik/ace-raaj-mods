DELETE FROM `weenie` WHERE `class_Id` = 803952;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803952, 'GreenGarnettMirraManual', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803952,   1,        128) /* ItemType - Misc */
     , (803952,   5,          1) /* EncumbranceVal */
     , (803952,   8,          5) /* Mass */
     , (803952,   9,          0) /* ValidLocations - None */
     , (803952,  11,          1) /* MaxStackSize */
     , (803952,  12,          1) /* StackSize */
     , (803952,  13,          1) /* StackUnitEncumbrance */
     , (803952,  14,          5) /* StackUnitMass */
     , (803952,  15,      50000) /* StackUnitValue */
     , (803952,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803952,  19,      50000) /* Value */
     , (803952,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803952,  94,      32768) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803952,  22, True ) /* Inscribable */
     , (803952,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803952,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803952,   1, 'Foolproof Green Garnett Mirra') /* Name */
     , (803952,  14, 'Instert this gem into a gem socket on a missile weapon to permanently increase the Damage Modifier.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803952,   1,   33554809) /* Setup */
     , (803952,   3,  536870932) /* SoundTable */
     , (803952,   8,  100674740) /* Icon */
     , (803952,  22,  872415275) /* PhysicsEffectTable */
     , (803952,  50,  100690980) /* IconOverlay */
     , (803952,  52,  100686604) /* IconUnderlay */;
