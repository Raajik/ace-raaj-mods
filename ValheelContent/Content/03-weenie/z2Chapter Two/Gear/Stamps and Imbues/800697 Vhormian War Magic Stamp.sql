DELETE FROM `weenie` WHERE `class_Id` = 800697;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800697, 'Vhormian War Magic Stamp', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800697,   1,        128) /* ItemType - Misc */
     , (800697,   5,         10) /* EncumbranceVal */
     , (800697,   8,         10) /* Mass */
     , (800697,   9,          0) /* ValidLocations - None */
     , (800697,  11,          1) /* MaxStackSize */
     , (800697,  12,          1) /* StackSize */
     , (800697,  13,         10) /* StackUnitEncumbrance */
     , (800697,  14,         10) /* StackUnitMass */
     , (800697,  15,        1500) /* StackUnitValue */
     , (800697,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (800697,  19,        1500) /* Value */
     , (800697,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800697,  94,          128) /* TargetType - Vestements */
     , (800697, 150,        103) /* HookPlacement - Hook */
     , (800697, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800697,  22, True ) /* Inscribable */
     , (800697,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800697,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800697,   1, 'Vhormian War Magic Stamp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800697,   1,   33556922) /* Setup */
     , (800697,   3,  536870932) /* SoundTable */
     , (800697,   6,   67111092) /* PaletteBase */
     , (800697,   7,  268436417) /* ClothingBase */
     , (800697,   8,  100673243) /* Icon */
     , (800697,  22,  872415275) /* PhysicsEffectTable */
     , (800697,  50,  29675) /* IconOverlay */
     , (800697,  51,  100673082) /* IconOverlaySecondary */;
