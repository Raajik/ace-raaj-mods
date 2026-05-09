DELETE FROM `weenie` WHERE `class_Id` = 802919;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802919, 'UltraSteel', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802919,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (802919,   3,         13) /* PaletteTemplate - Purple */
     , (802919,   5,        100) /* EncumbranceVal */
     , (802919,   8,        100) /* Mass */
     , (802919,  11,          1) /* MaxStackSize */
     , (802919,  12,          1) /* StackSize */
     , (802919,  13,        100) /* StackUnitEncumbrance */
     , (802919,  14,        100) /* StackUnitMass */
     , (802919,  15,         10) /* StackUnitValue */
     , (802919,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802919,  19,       1500) /* Value */
     , (802919,  33,          1) /* Bonded - Bonded */
     , (802919,  91,        100) /* MaxStructure */
     , (802919,  92,        100) /* Structure */
     , (802919,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802919,  94,          6) /* TargetType - Vestements */
     , (802919, 105,        100) /* ItemWorkmanship */
     , (802919, 131,         64) /* MaterialType - Steel */
     , (802919, 150,        103) /* HookPlacement - Hook */
     , (802919, 151,          9) /* HookType - Floor, Yard */
     , (802919, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802919,  22, True ) /* Inscribable */
     , (802919,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802919,   1, 'Ultra Salvaged Steel') /* Name */
     , (802919,  14, 'Apply this material to treasure-generated armor to increase the armor''s armor level by 400. This material cannot be used on Covenant Armor.') /* Use */
     , (802919,  15, 'A bar of steel material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802919,   1,   33554817) /* Setup */
     , (802919,   3,  536870932) /* SoundTable */
     , (802919,   6,   67111919) /* PaletteBase */
     , (802919,   7,  268436874) /* ClothingBase */
     , (802919,   8,  100677145) /* Icon */
     , (802919,  22,  872415275) /* PhysicsEffectTable */
	 , (802919,  52,  100676442) /* IconUnderlay */;
