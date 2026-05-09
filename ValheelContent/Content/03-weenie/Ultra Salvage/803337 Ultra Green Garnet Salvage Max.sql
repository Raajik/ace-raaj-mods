DELETE FROM `weenie` WHERE `class_Id` = 803337;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803337, 'UltraGreenGarnetSalvage', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803337,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (803337,   3,          2) /* PaletteTemplate - Blue */
     , (803337,   5,        100) /* EncumbranceVal */
     , (803337,   8,        100) /* Mass */
     , (803337,  11,          1) /* MaxStackSize */
     , (803337,  12,          1) /* StackSize */
     , (803337,  13,        100) /* StackUnitEncumbrance */
     , (803337,  14,        100) /* StackUnitMass */
     , (803337,  15,         10) /* StackUnitValue */
     , (803337,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (803337,  19,       1500) /* Value */
     , (803337,  33,          1) /* Bonded - Bonded */
     , (803337,  91,        100) /* MaxStructure */
     , (803337,  92,        100) /* Structure */
     , (803337,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803337,  94,      32768) /* TargetType - Caster */
     , (803337, 105,        100) /* ItemWorkmanship */
     , (803337, 131,         23) /* MaterialType - GreenGarnet */
     , (803337, 150,        103) /* HookPlacement - Hook */
     , (803337, 151,          9) /* HookType - Floor, Yard */
     , (803337, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803337,  22, True ) /* Inscribable */
     , (803337,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803337,   1, 'Ultra Green Garnet Salvage') /* Name */
     , (803337,  14, 'Apply this material to a treasure-generated magic caster that has an elemental damage bonus in order to increase the elemental damage bonus by 20% vs. monsters and 10% vs. players.') /* Use */
     , (803337,  15, 'Chips of green garnet material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803337,   1,   33554817) /* Setup */
     , (803337,   3,  536870932) /* SoundTable */
     , (803337,   6,   67111919) /* PaletteBase */
     , (803337,   7,  268436874) /* ClothingBase */
     , (803337,   8,  100689650) /* Icon */
     , (803337,  22,  872415275) /* PhysicsEffectTable */
	 , (803337,  52,  100676442) /* IconUnderlay */;
