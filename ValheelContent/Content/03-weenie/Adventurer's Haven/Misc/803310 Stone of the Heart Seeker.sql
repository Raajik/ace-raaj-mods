DELETE FROM `weenie` WHERE `class_Id` = 803310;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803310, 'Stone of the Heart Seeker', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803310,   1,        128) /* ItemType - Misc */
     , (803310,   5,       4000) /* EncumbranceVal */
     , (803310,   8,          5) /* Mass */
     , (803310,   9,          0) /* ValidLocations - None */
     , (803310,  11,          1) /* MaxStackSize */
     , (803310,  12,          1) /* StackSize */
     , (803310,  13,       4000) /* StackUnitEncumbrance */
     , (803310,  14,          5) /* StackUnitMass */
     , (803310,  15,       5000) /* StackUnitValue */
     , (803310,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803310,  19,       5000) /* Value */
     , (803310,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803310,  94,        256) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803310,  22, True ) /* Inscribable */
     , (803310,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803310,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803310,   1, 'Stone of the Heart Seeker') /* Name */
     , (803310,  14, 'Use this item on any item to apply a spell to a missile weapon.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803310,   1,   33559631) /* Setup */
     , (803310,   3,  536870932) /* SoundTable */
     , (803310,   6,   67116700) /* PaletteBase */
     , (803310,   8,  100673989) /* Icon */
     , (803310,  22,  872415275) /* PhysicsEffectTable */
     , (803310,  52,  100676435) /* IconUnderlay */;
