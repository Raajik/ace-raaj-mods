DELETE FROM `weenie` WHERE `class_Id` = 801125;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801125, 'Vhorma Armor Stamp of the Feet', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801125,   1,        128) /* ItemType - Misc */
     , (801125,   5,         10) /* EncumbranceVal */
     , (801125,   8,         10) /* Mass */
     , (801125,   9,          0) /* ValidLocations - None */
     , (801125,  11,          1) /* MaxStackSize */
     , (801125,  12,          1) /* StackSize */
     , (801125,  13,         10) /* StackUnitEncumbrance */
     , (801125,  14,         10) /* StackUnitMass */
     , (801125,  15,       5000) /* StackUnitValue */
     , (801125,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801125,  19,       5000) /* Value */
     , (801125,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801125,  94,        128) /* TargetType - Vestements */
     , (801125, 150,        103) /* HookPlacement - Hook */
     , (801125, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801125,  22, True ) /* Inscribable */
     , (801125,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801125,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801125,   1, 'Vhorma Armor Stamp of the Feet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801125,   1,   33556922) /* Setup */
     , (801125,   3,  536870932) /* SoundTable */
     , (801125,   6,   67111092) /* PaletteBase */
     , (801125,   7,  268436417) /* ClothingBase */
     , (801125,   8,  100673243) /* Icon */
     , (801125,  22,  872415275) /* PhysicsEffectTable */
     , (801125,  50,      28745) /* IconOverlay */
     , (801125,  51,  100673082) /* IconOverlaySecondary */;
