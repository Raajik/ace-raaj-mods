DELETE FROM `weenie` WHERE `class_Id` = 803338;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803338, 'Mirra Agent of Power', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803338,   1,        128) /* ItemType - Misc */
     , (803338,   5,       4000) /* EncumbranceVal */
     , (803338,   8,          5) /* Mass */
     , (803338,   9,          0) /* ValidLocations - None */
     , (803338,  11,          1) /* MaxStackSize */
     , (803338,  12,          1) /* StackSize */
     , (803338,  13,       4000) /* StackUnitEncumbrance */
     , (803338,  14,          5) /* StackUnitMass */
     , (803338,  15,       5000) /* StackUnitValue */
     , (803338,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803338,  19,       5000) /* Value */
     , (803338,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803338,  94, 1073741824) /* TargetType - TinkeringMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803338,  22, True ) /* Inscribable */
     , (803338,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803338,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803338,   1, 'Mirra Agent of Power') /* Name */
     , (803338,  14, 'Apply this to a full bag of Salvage Iron to increase the tinkering power to maximum.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803338,   1,   33559631) /* Setup */
     , (803338,   3,  536870932) /* SoundTable */
     , (803338,   6,   67116700) /* PaletteBase */
     , (803338,   8,  100673783) /* Icon */
     , (803338,  22,  872415275) /* PhysicsEffectTable */
     , (803338,  52,  100676435) /* IconUnderlay */;
