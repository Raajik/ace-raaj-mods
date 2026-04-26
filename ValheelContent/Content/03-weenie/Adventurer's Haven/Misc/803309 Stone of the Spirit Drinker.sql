DELETE FROM `weenie` WHERE `class_Id` = 803309;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803309, 'Stone of the Spirit Drinker', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803309,   1,        128) /* ItemType - Misc */
     , (803309,   5,       4000) /* EncumbranceVal */
     , (803309,   8,          5) /* Mass */
     , (803309,   9,          0) /* ValidLocations - None */
     , (803309,  11,          1) /* MaxStackSize */
     , (803309,  12,          1) /* StackSize */
     , (803309,  13,       4000) /* StackUnitEncumbrance */
     , (803309,  14,          5) /* StackUnitMass */
     , (803309,  15,       5000) /* StackUnitValue */
     , (803309,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803309,  19,       5000) /* Value */
     , (803309,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803309,  94,      32768) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803309,  22, True ) /* Inscribable */
     , (803309,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803309,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803309,   1, 'Stone of the Spirit Drinker') /* Name */
     , (803309,  14, 'Use this item on any item to apply a spell to a magic caster.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803309,   1,   33559631) /* Setup */
     , (803309,   3,  536870932) /* SoundTable */
     , (803309,   6,   67116700) /* PaletteBase */
     , (803309,   8,  100673984) /* Icon */
     , (803309,  22,  872415275) /* PhysicsEffectTable */
     , (803309,  52,  100676435) /* IconUnderlay */;
