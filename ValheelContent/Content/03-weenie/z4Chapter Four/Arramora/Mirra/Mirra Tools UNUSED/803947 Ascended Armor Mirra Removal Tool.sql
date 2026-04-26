DELETE FROM `weenie` WHERE `class_Id` = 803947;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803947, 'Ascended Armor Mirra Removal Tool', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803947,   1,        128) /* ItemType - Misc */
     , (803947,   5,       4000) /* EncumbranceVal */
     , (803947,   8,          5) /* Mass */
     , (803947,   9,          0) /* ValidLocations - None */
     , (803947,  11,          1) /* MaxStackSize */
     , (803947,  12,          1) /* StackSize */
     , (803947,  13,       4000) /* StackUnitEncumbrance */
     , (803947,  14,          5) /* StackUnitMass */
     , (803947,  15,        250) /* StackUnitValue */
     , (803947,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803947,  19,        250) /* Value */
     , (803947,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803947,  94,          2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803947,  22, True ) /* Inscribable */
     , (803947,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803947,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803947,   1, 'Ascended Armor Mirra Removal Tool') /* Name */
     , (803947,  14, 'Use this item on Ascended Armor to remove the Mirra Gemstones.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803947,   1,   33559631) /* Setup */
     , (803947,   3,  536870932) /* SoundTable */
     , (803947,   6,   67116700) /* PaletteBase */
     , (803947,   8,  100671135) /* Icon */
     , (803947,  22,  872415275) /* PhysicsEffectTable */
     , (803947,  50,  100686629) /* IconOverlay */
     , (803947,  52,  100686604) /* IconUnderlay */;
