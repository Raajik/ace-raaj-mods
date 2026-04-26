DELETE FROM `weenie` WHERE `class_Id` = 1000100;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000100, 'potdyegold', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000100,   1,    4194304) /* ItemType - CraftCookingBase */
     , (1000100,   3,         17) /* PaletteTemplate - Yellow/Gold */
     , (1000100,   5,        150) /* EncumbranceVal */
     , (1000100,   8,         50) /* Mass */
     , (1000100,   9,          0) /* ValidLocations - None */
     , (1000100,  11,        100) /* MaxStackSize */
     , (1000100,  12,          1) /* StackSize */
     , (1000100,  13,        150) /* StackUnitEncumbrance */
     , (1000100,  14,         50) /* StackUnitMass */
     , (1000100,  15,          3) /* StackUnitValue */
     , (1000100,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (1000100,  18,         16) /* UI Effects - Stamina */
     , (1000100,  19,          3) /* Value */
     , (1000100,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (1000100,  94,        134) /* TargetType - Vestements, Misc */
     , (1000100, 150,        103) /* HookPlacement - Hook */
     , (1000100, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000100,  69, False) /* IsSellable */
     , (1000100,  84, True ) /* Ignore Clothing Icons */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000100,   1, 'Gold Dye') /* Name */
     , (1000100,  14, 'Use this item to dye your clothing gold.') /* Use */
     , (1000100,  15, 'This dye can only be used on clothing, unless you happen to get lucky...') /* ShortDesc */
     , (1000100,  16, 'This dye can only be used on clothing, unless you happen to get lucky...') /* LongDesc */
     , (1000100,  20, 'Gold Dyes') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000100,   1,   33556753) /* Setup */
     , (1000100,   3,  536870932) /* SoundTable */
     , (1000100,   6,   67111919) /* PaletteBase */
     , (1000100,   7,  268436036) /* ClothingBase */
     , (1000100,   8, 0x060013D7) /* Icon */
     , (1000100,  22,  872415275) /* PhysicsEffectTable */;
     /* , (1000100,  50, 0x06001F8E) IconOverlay */
     /* , (1000100,  52, 0x06002727) IconUnderlay; */
