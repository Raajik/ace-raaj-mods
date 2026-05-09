DELETE FROM `weenie` WHERE `class_Id` = 802924;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802924, 'Ultra Salvaged Mahog Min', 44, '2021-11-17 16:56:08') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802924,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (802924,   3,         14) /* PaletteTemplate - Red */
     , (802924,   5,        100) /* EncumbranceVal */
     , (802924,   8,        100) /* Mass */
     , (802924,   9,          0) /* ValidLocations - None */
     , (802924,  11,          1) /* MaxStackSize */
     , (802924,  12,          1) /* StackSize */
     , (802924,  13,        100) /* StackUnitEncumbrance */
     , (802924,  14,        100) /* StackUnitMass */
     , (802924,  15,         10) /* StackUnitValue */
     , (802924,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802924,  19,         10) /* Value */
     , (802924,  33,          1) /* Bonded - Bonded */
     , (802924,  91,        100) /* MaxStructure */
     , (802924,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802924,  94,        256) /* TargetType - MissileWeapon */
     , (802924, 131,         74) /* MaterialType - Mahogany */
     , (802924, 150,        103) /* HookPlacement - Hook */
     , (802924, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802924,  22, True ) /* Inscribable */
     , (802924,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802924,   1, 'Ultra Salvaged Mahogany') /* Name */
     , (802924,  14, 'Apply this material to a treasure-generated missile weapon to increase the weapon''s damage modifier by 4%.') /* Use */
     , (802924,  15, 'A bundle of mahogany material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802924,   1,   33554817) /* Setup */
     , (802924,   3,  536870932) /* SoundTable */
     , (802924,   6,   67111919) /* PaletteBase */
     , (802924,   7,  268436430) /* ClothingBase */
     , (802924,   8,  100677147) /* Icon */
     , (802924,  22,  872415275) /* PhysicsEffectTable */
     , (802924,  50,  100673232) /* IconOverlay */;
