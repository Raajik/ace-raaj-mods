DELETE FROM `weenie` WHERE `class_Id` = 802920;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802920, 'Ultra Steel 1', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802920,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (802920,   3,         13) /* PaletteTemplate - Purple */
     , (802920,   5,        100) /* EncumbranceVal */
     , (802920,   8,        100) /* Mass */
     , (802920,   9,          0) /* ValidLocations - None */
     , (802920,  11,          1) /* MaxStackSize */
     , (802920,  12,          1) /* StackSize */
     , (802920,  13,        100) /* StackUnitEncumbrance */
     , (802920,  14,        100) /* StackUnitMass */
     , (802920,  15,         10) /* StackUnitValue */
     , (802920,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802920,  19,         10) /* Value */
     , (802920,  33,          1) /* Bonded - Bonded */
     , (802920,  91,        100) /* MaxStructure */
     , (802920,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802920,  94,          6) /* TargetType - Vestements */
     , (802920, 131,         64) /* MaterialType - Steel */
     , (802920, 150,        103) /* HookPlacement - Hook */
     , (802920, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802920,  22, True ) /* Inscribable */
     , (802920,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802920,   1, 'Ultra Salvaged Steel') /* Name */
     , (802920,  14, 'Apply this material to treasure-generated armor to increase the armor''s armor level by 20. This material cannot be used on Covenant Armor.') /* Use */
     , (802920,  15, 'A bar of steel material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802920,   1,   33554817) /* Setup */
     , (802920,   3,  536870932) /* SoundTable */
     , (802920,   6,   67111919) /* PaletteBase */
     , (802920,   7,  268436430) /* ClothingBase */
     , (802920,   8,  100667436) /* Icon */
     , (802920,  22,  872415275) /* PhysicsEffectTable */
     , (802920,  50,  100673237) /* IconOverlay */;
