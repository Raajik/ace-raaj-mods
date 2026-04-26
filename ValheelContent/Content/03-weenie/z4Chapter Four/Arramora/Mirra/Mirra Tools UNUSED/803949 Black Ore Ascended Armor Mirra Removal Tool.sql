DELETE FROM `weenie` WHERE `class_Id` = 803949;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803949, 'Black Ore Ascended Armor Mirra Removal Tool', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803949,   1,        128) /* ItemType - Misc */
     , (803949,   5,       4000) /* EncumbranceVal */
     , (803949,   8,          5) /* Mass */
     , (803949,   9,          0) /* ValidLocations - None */
     , (803949,  11,          1) /* MaxStackSize */
     , (803949,  12,          1) /* StackSize */
     , (803949,  13,       4000) /* StackUnitEncumbrance */
     , (803949,  14,          5) /* StackUnitMass */
     , (803949,  15,        250) /* StackUnitValue */
     , (803949,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803949,  19,        250) /* Value */
     , (803949,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803949,  94,          2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803949,  22, True ) /* Inscribable */
     , (803949,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803949,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803949,   1, 'Black Ore Ascended Armor Mirra Removal Tool') /* Name */
     , (803949,  14, 'Use this item on Black Ore Ascended Armor to remove the Mirra Gemstones.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803949,   1,   33559631) /* Setup */
     , (803949,   3,  536870932) /* SoundTable */
     , (803949,   6,   67116700) /* PaletteBase */
     , (803949,   8,  100671135) /* Icon */
     , (803949,  22,  872415275) /* PhysicsEffectTable */
     , (803949,  50,  100686629) /* IconOverlay */
     , (803949,  52,  100687395) /* IconUnderlay */;
