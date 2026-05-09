DELETE FROM `weenie` WHERE `class_Id` = 802151;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802151, 'BigEMultiDye', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802151,   1,        128) /* ItemType - Misc */
     , (802151,   5,          5) /* EncumbranceVal */
     , (802151,   8,          5) /* Mass */
     , (802151,   9,          0) /* ValidLocations - None */
     , (802151,  11,          1) /* MaxStackSize */
     , (802151,  12,          1) /* StackSize */
     , (802151,  13,          5) /* StackUnitEncumbrance */
     , (802151,  14,          5) /* StackUnitMass */
     , (802151,  15,          5) /* StackUnitValue */
     , (802151,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802151,  19,          5) /* Value */
     , (802151,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802151,  94,          6) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802151,  22, True ) /* Inscribable */
     , (802151,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802151,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802151,   1, 'Big E''s Multicolor Dye') /* Name */
     , (802151,  14, 'Use this item to mutate the color of a piece of armor from pallets based on the items material.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802151,   1,   33556753) /* Setup */
     , (802151,   3,  536870932) /* SoundTable */
     , (802151,   8,  100692975) /* Icon */
     , (802151,  22,  872415275) /* PhysicsEffectTable */;
