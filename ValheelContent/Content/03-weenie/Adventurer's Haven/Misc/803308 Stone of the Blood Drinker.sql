DELETE FROM `weenie` WHERE `class_Id` = 803308;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803308, 'Stone of the Blood Drinker2', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803308,   1,        128) /* ItemType - Misc */
     , (803308,   5,       4000) /* EncumbranceVal */
     , (803308,   8,          5) /* Mass */
     , (803308,   9,          0) /* ValidLocations - None */
     , (803308,  11,          1) /* MaxStackSize */
     , (803308,  12,          1) /* StackSize */
     , (803308,  13,       4000) /* StackUnitEncumbrance */
     , (803308,  14,          5) /* StackUnitMass */
     , (803308,  15,       5000) /* StackUnitValue */
     , (803308,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803308,  19,       5000) /* Value */
     , (803308,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803308,  94,          1) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803308,  22, True ) /* Inscribable */
     , (803308,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803308,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803308,   1, 'Stone of the Blood Drinker') /* Name */
     , (803308,  14, 'Use this item on any item to apply a spell to a weapon.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803308,   1,   33559631) /* Setup */
     , (803308,   3,  536870932) /* SoundTable */
     , (803308,   6,   67116700) /* PaletteBase */
     , (803308,   8,  100673986) /* Icon */
     , (803308,  22,  872415275) /* PhysicsEffectTable */
     , (803308,  52,  100676435) /* IconUnderlay */;
