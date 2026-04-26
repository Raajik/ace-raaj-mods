DELETE FROM `weenie` WHERE `class_Id` = 800696;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800696, 'Vhormian Two-Handed Weapons Stamp', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800696,   1,        128) /* ItemType - Misc */
     , (800696,   5,         10) /* EncumbranceVal */
     , (800696,   8,         10) /* Mass */
     , (800696,   9,          0) /* ValidLocations - None */
     , (800696,  11,          1) /* MaxStackSize */
     , (800696,  12,          1) /* StackSize */
     , (800696,  13,         10) /* StackUnitEncumbrance */
     , (800696,  14,         10) /* StackUnitMass */
     , (800696,  15,        1500) /* StackUnitValue */
     , (800696,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (800696,  19,        1500) /* Value */
     , (800696,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800696,  94,          128) /* TargetType - Vestements */
     , (800696, 150,        103) /* HookPlacement - Hook */
     , (800696, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800696,  22, True ) /* Inscribable */
     , (800696,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800696,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800696,   1, 'Vhormian Two-Handed Weapons Stamp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800696,   1,   33556922) /* Setup */
     , (800696,   3,  536870932) /* SoundTable */
     , (800696,   6,   67111092) /* PaletteBase */
     , (800696,   7,  268436417) /* ClothingBase */
     , (800696,   8,  100673243) /* Icon */
     , (800696,  22,  872415275) /* PhysicsEffectTable */
     , (800696,  50,  28993) /* IconOverlay */
     , (800696,  51,  100673082) /* IconOverlaySecondary */;
