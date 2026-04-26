DELETE FROM `weenie` WHERE `class_Id` = 802923;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802923, 'ultramahogmin', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802923,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (802923,   3,         14) /* PaletteTemplate - Red */
     , (802923,   5,        100) /* EncumbranceVal */
     , (802923,   8,        100) /* Mass */
     , (802923,  11,          1) /* MaxStackSize */
     , (802923,  12,          1) /* StackSize */
     , (802923,  13,        100) /* StackUnitEncumbrance */
     , (802923,  14,        100) /* StackUnitMass */
     , (802923,  15,         10) /* StackUnitValue */
     , (802923,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802923,  19,       1500) /* Value */
     , (802923,  33,          1) /* Bonded - Bonded */
     , (802923,  91,        100) /* MaxStructure */
     , (802923,  92,        100) /* Structure */
     , (802923,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802923,  94,        256) /* TargetType - MissileWeapon */
     , (802923, 105,        100) /* ItemWorkmanship */
     , (802923, 131,         74) /* MaterialType - Mahogany */
     , (802923, 150,        103) /* HookPlacement - Hook */
     , (802923, 151,          9) /* HookType - Floor, Yard */
     , (802923, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802923,  22, True ) /* Inscribable */
     , (802923,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802923,   1, 'Ultra Salvaged Mahogony') /* Name */
     , (802923,  14, 'Apply this material to a treasure-generated missile weapon to increase the weapon''s damage modifier by 200%.') /* Use */
     , (802923,  15, 'A bundle of mahogany material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802923,   1,   33554817) /* Setup */
     , (802923,   3,  536870932) /* SoundTable */
     , (802923,   6,   67111919) /* PaletteBase */
     , (802923,   7,  268436874) /* ClothingBase */
     , (802923,   8,  100677147) /* Icon */
     , (802923,  22,  872415275) /* PhysicsEffectTable */
	 , (802923,  52,  100676442) /* IconUnderlay */;
