DELETE FROM `weenie` WHERE `class_Id` = 803311;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803311, 'Stone of the Defender', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803311,   1,        128) /* ItemType - Misc */
     , (803311,   5,       4000) /* EncumbranceVal */
     , (803311,   8,          5) /* Mass */
     , (803311,   9,          0) /* ValidLocations - None */
     , (803311,  11,          1) /* MaxStackSize */
     , (803311,  12,          1) /* StackSize */
     , (803311,  13,       4000) /* StackUnitEncumbrance */
     , (803311,  14,          5) /* StackUnitMass */
     , (803311,  15,       5000) /* StackUnitValue */
     , (803311,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803311,  19,       5000) /* Value */
     , (803311,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803311,  94,          2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803311,  22, True ) /* Inscribable */
     , (803311,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803311,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803311,   1, 'Stone of the Defender') /* Name */
     , (803311,  14, 'Use this item on any item to apply a spell to a piece of armor.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803311,   1,   33559631) /* Setup */
     , (803311,   3,  536870932) /* SoundTable */
     , (803311,   6,   67116700) /* PaletteBase */
     , (803311,   8,  100673991) /* Icon */
     , (803311,  22,  872415275) /* PhysicsEffectTable */
     , (803311,  52,  100676435) /* IconUnderlay */;
