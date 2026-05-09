DELETE FROM `weenie` WHERE `class_Id` = 802966;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802966, 'UltraIron', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802966,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (802966,   3,         14) /* PaletteTemplate - Red */
     , (802966,   5,        100) /* EncumbranceVal */
     , (802966,   8,        100) /* Mass */
     , (802966,  11,          1) /* MaxStackSize */
     , (802966,  12,          1) /* StackSize */
     , (802966,  13,        100) /* StackUnitEncumbrance */
     , (802966,  14,        100) /* StackUnitMass */
     , (802966,  15,         10) /* StackUnitValue */
     , (802966,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802966,  19,         10) /* Value */
     , (802966,  33,          1) /* Bonded - Bonded */
     , (802966,  91,        100) /* MaxStructure */
     , (802966,  92,        100) /* Structure */
     , (802966,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802966,  94,        257) /* TargetType - Weapon */
     , (802966, 105,        100) /* ItemWorkmanship */
     , (802966, 131,         61) /* MaterialType - Iron */
     , (802966, 150,        103) /* HookPlacement - Hook */
     , (802966, 151,          9) /* HookType - Floor, Yard */
     , (802966, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802966,  22, True ) /* Inscribable */
     , (802966,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802966,   1, 'Ultra Salvaged Iron') /* Name */
     , (802966,  14, 'Apply this material to a treasure-generated weapon to increase the weapon''s damage by 1.') /* Use */
     , (802966,  15, 'A bar of iron material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802966,   1,   33554817) /* Setup */
     , (802966,   3,  536870932) /* SoundTable */
     , (802966,   6,   67111919) /* PaletteBase */
     , (802966,   7,  268436874) /* ClothingBase */
     , (802966,   8,  100689651) /* Icon */
     , (802966,  22,  872415275) /* PhysicsEffectTable */;
