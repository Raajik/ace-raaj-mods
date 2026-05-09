DELETE FROM `weenie` WHERE `class_Id` = 801124;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801124, 'Vhorma Armor Stamp of the Hands', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801124,   1,        128) /* ItemType - Misc */
     , (801124,   5,         10) /* EncumbranceVal */
     , (801124,   8,         10) /* Mass */
     , (801124,   9,          0) /* ValidLocations - None */
     , (801124,  11,          1) /* MaxStackSize */
     , (801124,  12,          1) /* StackSize */
     , (801124,  13,         10) /* StackUnitEncumbrance */
     , (801124,  14,         10) /* StackUnitMass */
     , (801124,  15,       5000) /* StackUnitValue */
     , (801124,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801124,  19,       5000) /* Value */
     , (801124,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801124,  94,        128) /* TargetType - Vestements */
     , (801124, 150,        103) /* HookPlacement - Hook */
     , (801124, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801124,  22, True ) /* Inscribable */
     , (801124,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801124,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801124,   1, 'Vhorma Armor Stamp of the Hands') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801124,   1,   33556922) /* Setup */
     , (801124,   3,  536870932) /* SoundTable */
     , (801124,   6,   67111092) /* PaletteBase */
     , (801124,   7,  268436417) /* ClothingBase */
     , (801124,   8,  100673243) /* Icon */
     , (801124,  22,  872415275) /* PhysicsEffectTable */
     , (801124,  50,      28745) /* IconOverlay */
     , (801124,  51,  100673082) /* IconOverlaySecondary */;
