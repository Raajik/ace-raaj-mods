DELETE FROM `weenie` WHERE `class_Id` = 803351;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803351, 'Stone of the Protection2', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803351,   1,        128) /* ItemType - Misc */
     , (803351,   5,       4000) /* EncumbranceVal */
     , (803351,   8,          5) /* Mass */
     , (803351,   9,          0) /* ValidLocations - None */
     , (803351,  11,          1) /* MaxStackSize */
     , (803351,  12,          1) /* StackSize */
     , (803351,  13,       4000) /* StackUnitEncumbrance */
     , (803351,  14,          5) /* StackUnitMass */
     , (803351,  15,       5000) /* StackUnitValue */
     , (803351,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803351,  19,       5000) /* Value */
     , (803351,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803351,  94,          4) /* TargetType - Clothing */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803351,  22, True ) /* Inscribable */
     , (803351,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803351,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803351,   1, 'Stone of the Protection') /* Name */
     , (803351,  14, 'Use this item on any item to apply a spell to a piece of cloth.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803351,   1,   33559631) /* Setup */
     , (803351,   3,  536870932) /* SoundTable */
     , (803351,   6,   67116700) /* PaletteBase */
     , (803351,   8,  100673991) /* Icon */
     , (803351,  22,  872415275) /* PhysicsEffectTable */
     , (803351,  52,  100676444) /* IconUnderlay */;
