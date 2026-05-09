DELETE FROM `weenie` WHERE `class_Id` = 801122;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801122, 'Vhorma Armor Stamp of the Coat', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801122,   1,        128) /* ItemType - Misc */
     , (801122,   5,         10) /* EncumbranceVal */
     , (801122,   8,         10) /* Mass */
     , (801122,   9,          0) /* ValidLocations - None */
     , (801122,  11,          1) /* MaxStackSize */
     , (801122,  12,          1) /* StackSize */
     , (801122,  13,         10) /* StackUnitEncumbrance */
     , (801122,  14,         10) /* StackUnitMass */
     , (801122,  15,       5000) /* StackUnitValue */
     , (801122,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801122,  19,       5000) /* Value */
     , (801122,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801122,  94,        128) /* TargetType - Vestements */
     , (801122, 150,        103) /* HookPlacement - Hook */
     , (801122, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801122,  22, True ) /* Inscribable */
     , (801122,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801122,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801122,   1, 'Vhorma Armor Stamp of the Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801122,   1,   33556922) /* Setup */
     , (801122,   3,  536870932) /* SoundTable */
     , (801122,   6,   67111092) /* PaletteBase */
     , (801122,   7,  268436417) /* ClothingBase */
     , (801122,   8,  100673243) /* Icon */
     , (801122,  22,  872415275) /* PhysicsEffectTable */
     , (801122,  50,      28745) /* IconOverlay */
     , (801122,  51,  100673082) /* IconOverlaySecondary */;
