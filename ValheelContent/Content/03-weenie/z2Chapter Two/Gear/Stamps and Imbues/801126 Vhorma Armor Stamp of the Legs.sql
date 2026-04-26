DELETE FROM `weenie` WHERE `class_Id` = 801126;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801126, 'Vhorma Armor Stamp of the Legs', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801126,   1,        128) /* ItemType - Misc */
     , (801126,   5,         10) /* EncumbranceVal */
     , (801126,   8,         10) /* Mass */
     , (801126,   9,          0) /* ValidLocations - None */
     , (801126,  11,          1) /* MaxStackSize */
     , (801126,  12,          1) /* StackSize */
     , (801126,  13,         10) /* StackUnitEncumbrance */
     , (801126,  14,         10) /* StackUnitMass */
     , (801126,  15,       5000) /* StackUnitValue */
     , (801126,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801126,  19,       5000) /* Value */
     , (801126,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801126,  94,        128) /* TargetType - Vestements */
     , (801126, 150,        103) /* HookPlacement - Hook */
     , (801126, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801126,  22, True ) /* Inscribable */
     , (801126,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801126,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801126,   1, 'Vhorma Armor Stamp of the Legs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801126,   1,   33556922) /* Setup */
     , (801126,   3,  536870932) /* SoundTable */
     , (801126,   6,   67111092) /* PaletteBase */
     , (801126,   7,  268436417) /* ClothingBase */
     , (801126,   8,  100673243) /* Icon */
     , (801126,  22,  872415275) /* PhysicsEffectTable */
     , (801126,  50,      28745) /* IconOverlay */
     , (801126,  51,  100673082) /* IconOverlaySecondary */;
