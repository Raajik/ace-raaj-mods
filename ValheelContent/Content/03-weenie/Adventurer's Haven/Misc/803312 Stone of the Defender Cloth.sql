DELETE FROM `weenie` WHERE `class_Id` = 803312;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803312, 'Stone of the Defender2', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803312,   1,        128) /* ItemType - Misc */
     , (803312,   5,       4000) /* EncumbranceVal */
     , (803312,   8,          5) /* Mass */
     , (803312,   9,          0) /* ValidLocations - None */
     , (803312,  11,          1) /* MaxStackSize */
     , (803312,  12,          1) /* StackSize */
     , (803312,  13,       4000) /* StackUnitEncumbrance */
     , (803312,  14,          5) /* StackUnitMass */
     , (803312,  15,       5000) /* StackUnitValue */
     , (803312,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803312,  19,       5000) /* Value */
     , (803312,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803312,  94,          4) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803312,  22, True ) /* Inscribable */
     , (803312,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803312,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803312,   1, 'Stone of the Defender') /* Name */
     , (803312,  14, 'Use this item on any item to apply a spell to a piece of cloth.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803312,   1,   33559631) /* Setup */
     , (803312,   3,  536870932) /* SoundTable */
     , (803312,   6,   67116700) /* PaletteBase */
     , (803312,   8,  100673991) /* Icon */
     , (803312,  22,  872415275) /* PhysicsEffectTable */
     , (803312,  52,  100676444) /* IconUnderlay */;
