DELETE FROM `weenie` WHERE `class_Id` = 803336;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803336, 'UltraSalvageIronMax', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803336,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (803336,   3,         14) /* PaletteTemplate - Red */
     , (803336,   5,        100) /* EncumbranceVal */
     , (803336,   8,        100) /* Mass */
     , (803336,  11,          1) /* MaxStackSize */
     , (803336,  12,          1) /* StackSize */
     , (803336,  13,        100) /* StackUnitEncumbrance */
     , (803336,  14,        100) /* StackUnitMass */
     , (803336,  15,         10) /* StackUnitValue */
     , (803336,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (803336,  19,       1500) /* Value */
     , (803336,  33,          1) /* Bonded - Bonded */
     , (803336,  91,        100) /* MaxStructure */
     , (803336,  92,        100) /* Structure */
     , (803336,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803336,  94,        257) /* TargetType - Weapon */
     , (803336, 105,        100) /* ItemWorkmanship */
     , (803336, 131,         61) /* MaterialType - Iron */
     , (803336, 150,        103) /* HookPlacement - Hook */
     , (803336, 151,          9) /* HookType - Floor, Yard */
     , (803336, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803336,  22, True ) /* Inscribable */
     , (803336,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803336,   1, 'Ultra Salvage Iron') /* Name */
     , (803336,  14, 'Apply this material to a treasure-generated weapon to increase the weapon''s damage by 100.') /* Use */
     , (803336,  15, 'A bar of iron material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803336,   1,   33554817) /* Setup */
     , (803336,   3,  536870932) /* SoundTable */
     , (803336,   6,   67111919) /* PaletteBase */
     , (803336,   7,  268436874) /* ClothingBase */
     , (803336,   8,  100689651) /* Icon */
     , (803336,  22,  872415275) /* PhysicsEffectTable */
	 , (803336,  52,  100676442) /* IconUnderlay */;
