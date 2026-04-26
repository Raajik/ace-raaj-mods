DELETE FROM `weenie` WHERE `class_Id` = 803342;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803342, 'Powdered Mirra Essence', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803342,   1,        128) /* ItemType - Misc */
     , (803342,   3,          2) /* PaletteTemplate - Blue */
     , (803342,   5,          0) /* EncumbranceVal */
     , (803342,   8,          0) /* Mass */
     , (803342,   9,          0) /* ValidLocations - None */
     , (803342,  11,       5000) /* MaxStackSize */
     , (803342,  12,          1) /* StackSize */
     , (803342,  13,          0) /* StackUnitEncumbrance */
     , (803342,  14,          0) /* StackUnitMass */
     , (803342,  15,          1) /* StackUnitValue */
     , (803342,  16,          1) /* ItemUseable - No */
     , (803342,  19,          1) /* Value */
     , (803342,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803342,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803342,   1, 'Powdered Mirra Essence') /* Name */
     , (803342,  20, 'Powdered Mirra Essences') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803342,   1,   33555208) /* Setup */
     , (803342,   3,  536870932) /* SoundTable */
     , (803342,   6,   67111919) /* PaletteBase */
     , (803342,   7,  268435778) /* ClothingBase */
     , (803342,   8,  100669703) /* Icon */
     , (803342,  22,  872415275) /* PhysicsEffectTable */
	 , (803342,  52,  100676442) /* IconUnderlay */;
