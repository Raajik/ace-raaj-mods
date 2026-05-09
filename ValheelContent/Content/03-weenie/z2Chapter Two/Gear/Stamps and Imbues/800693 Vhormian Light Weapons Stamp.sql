DELETE FROM `weenie` WHERE `class_Id` = 800693;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800693, 'Vhormian Light Weapons Stamp', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800693,   1,        128) /* ItemType - Misc */
     , (800693,   5,         10) /* EncumbranceVal */
     , (800693,   8,         10) /* Mass */
     , (800693,   9,          0) /* ValidLocations - None */
     , (800693,  11,          1) /* MaxStackSize */
     , (800693,  12,          1) /* StackSize */
     , (800693,  13,         10) /* StackUnitEncumbrance */
     , (800693,  14,         10) /* StackUnitMass */
     , (800693,  15,        1500) /* StackUnitValue */
     , (800693,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (800693,  19,        1500) /* Value */
     , (800693,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800693,  94,          128) /* TargetType - Vestements */
     , (800693, 150,        103) /* HookPlacement - Hook */
     , (800693, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800693,  22, True ) /* Inscribable */
     , (800693,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800693,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800693,   1, 'Vhormian Light Weapons Stamp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800693,   1,   33556922) /* Setup */
     , (800693,   3,  536870932) /* SoundTable */
     , (800693,   6,   67111092) /* PaletteBase */
     , (800693,   7,  268436417) /* ClothingBase */
     , (800693,   8,  100673243) /* Icon */
     , (800693,  22,  872415275) /* PhysicsEffectTable */
     , (800693,  50,  28943) /* IconOverlay */
     , (800693,  51,  100673082) /* IconOverlaySecondary */;
