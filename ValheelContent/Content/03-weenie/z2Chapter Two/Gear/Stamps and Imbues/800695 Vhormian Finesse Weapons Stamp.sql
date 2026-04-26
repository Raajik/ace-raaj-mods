DELETE FROM `weenie` WHERE `class_Id` = 800695;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800695, 'Vhormian Finesse Weapons Stamp', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800695,   1,        128) /* ItemType - Misc */
     , (800695,   5,         10) /* EncumbranceVal */
     , (800695,   8,         10) /* Mass */
     , (800695,   9,          0) /* ValidLocations - None */
     , (800695,  11,          1) /* MaxStackSize */
     , (800695,  12,          1) /* StackSize */
     , (800695,  13,         10) /* StackUnitEncumbrance */
     , (800695,  14,         10) /* StackUnitMass */
     , (800695,  15,        1500) /* StackUnitValue */
     , (800695,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (800695,  19,        1500) /* Value */
     , (800695,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800695,  94,          128) /* TargetType - Vestements */
     , (800695, 150,        103) /* HookPlacement - Hook */
     , (800695, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800695,  22, True ) /* Inscribable */
     , (800695,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800695,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800695,   1, 'Vhormian Finesse Weapons Stamp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800695,   1,   33556922) /* Setup */
     , (800695,   3,  536870932) /* SoundTable */
     , (800695,   6,   67111092) /* PaletteBase */
     , (800695,   7,  268436417) /* ClothingBase */
     , (800695,   8,  100673243) /* Icon */
     , (800695,  22,  872415275) /* PhysicsEffectTable */
     , (800695,  50,  28942) /* IconOverlay */
     , (800695,  51,  100673082) /* IconOverlaySecondary */;
