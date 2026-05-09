DELETE FROM `weenie` WHERE `class_Id` = 803948;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803948, 'Perfect Ascended Armor Mirra Removal Tool', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803948,   1,        128) /* ItemType - Misc */
     , (803948,   5,       4000) /* EncumbranceVal */
     , (803948,   8,          5) /* Mass */
     , (803948,   9,          0) /* ValidLocations - None */
     , (803948,  11,          1) /* MaxStackSize */
     , (803948,  12,          1) /* StackSize */
     , (803948,  13,       4000) /* StackUnitEncumbrance */
     , (803948,  14,          5) /* StackUnitMass */
     , (803948,  15,        250) /* StackUnitValue */
     , (803948,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803948,  19,        250) /* Value */
     , (803948,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803948,  94,          2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803948,  22, True ) /* Inscribable */
     , (803948,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803948,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803948,   1, 'Perfect Ascended Armor Mirra Removal Tool') /* Name */
     , (803948,  14, 'Use this item on Perfect Ascended Armor to remove the Mirra Gemstones.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803948,   1,   33559631) /* Setup */
     , (803948,   3,  536870932) /* SoundTable */
     , (803948,   6,   67116700) /* PaletteBase */
     , (803948,   8,  100671135) /* Icon */
     , (803948,  22,  872415275) /* PhysicsEffectTable */
     , (803948,  50,  100686629) /* IconOverlay */
     , (803948,  52,  100676442) /* IconUnderlay */;
