DELETE FROM `weenie` WHERE `class_Id` = 803350;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803350, 'Stone of the Protection', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803350,   1,        128) /* ItemType - Misc */
     , (803350,   5,       4000) /* EncumbranceVal */
     , (803350,   8,          5) /* Mass */
     , (803350,   9,          0) /* ValidLocations - None */
     , (803350,  11,          1) /* MaxStackSize */
     , (803350,  12,          1) /* StackSize */
     , (803350,  13,       4000) /* StackUnitEncumbrance */
     , (803350,  14,          5) /* StackUnitMass */
     , (803350,  15,       5000) /* StackUnitValue */
     , (803350,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803350,  19,       5000) /* Value */
     , (803350,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803350,  94,          2) /* TargetType - Armor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803350,  22, True ) /* Inscribable */
     , (803350,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803350,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803350,   1, 'Stone of the Protection') /* Name */
     , (803350,  14, 'Use this item on any item to apply a spell to a piece of armor.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803350,   1,   33559631) /* Setup */
     , (803350,   3,  536870932) /* SoundTable */
     , (803350,   6,   67116700) /* PaletteBase */
     , (803350,   8,  100673991) /* Icon */
     , (803350,  22,  872415275) /* PhysicsEffectTable */
     , (803350,  52,  100676435) /* IconUnderlay */;
