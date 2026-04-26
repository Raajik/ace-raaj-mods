DELETE FROM `weenie` WHERE `class_Id` = 802150;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802150, 'BigETechDye', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802150,   1,        128) /* ItemType - Misc */
     , (802150,   5,          5) /* EncumbranceVal */
     , (802150,   8,          5) /* Mass */
     , (802150,   9,          0) /* ValidLocations - None */
     , (802150,  11,          1) /* MaxStackSize */
     , (802150,  12,          1) /* StackSize */
     , (802150,  13,          5) /* StackUnitEncumbrance */
     , (802150,  14,          5) /* StackUnitMass */
     , (802150,  15,          5) /* StackUnitValue */
     , (802150,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802150,  19,          5) /* Value */
     , (802150,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802150,  94,          6) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802150,  22, True ) /* Inscribable */
     , (802150,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802150,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802150,   1, 'Big E''s Technicolor Dye') /* Name */
     , (802150,  14, 'Use this item to mutate the color of a piece of armor completely randomly.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802150,   1,   33556753) /* Setup */
     , (802150,   3,  536870932) /* SoundTable */
     , (802150,   8,  100692980) /* Icon */
     , (802150,  22,  872415275) /* PhysicsEffectTable */;
