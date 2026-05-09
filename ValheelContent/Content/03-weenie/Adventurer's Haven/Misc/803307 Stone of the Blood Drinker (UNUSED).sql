DELETE FROM `weenie` WHERE `class_Id` = 803307;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803307, 'Stone of the Blood Drinker', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803307,   1,        128) /* ItemType - Misc */
     , (803307,   5,       4000) /* EncumbranceVal */
     , (803307,   8,          5) /* Mass */
     , (803307,   9,          0) /* ValidLocations - None */
     , (803307,  11,          1) /* MaxStackSize */
     , (803307,  12,          1) /* StackSize */
     , (803307,  13,       4000) /* StackUnitEncumbrance */
     , (803307,  14,          5) /* StackUnitMass */
     , (803307,  15,        250) /* StackUnitValue */
     , (803307,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803307,  19,        250) /* Value */
     , (803307,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803307,  94,          2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803307,  22, True ) /* Inscribable */
     , (803307,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803307,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803307,   1, 'Stone of the Blood Drinker') /* Name */
     , (803307,  14, 'Use this item on any item to apply a spell to a piece of armor.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803307,   1,   33559631) /* Setup */
     , (803307,   3,  536870932) /* SoundTable */
     , (803307,   6,   67116700) /* PaletteBase */
     , (803307,   8,  100673986) /* Icon */
     , (803307,  22,  872415275) /* PhysicsEffectTable */
     , (803307,  52,  100686604) /* IconUnderlay */;
