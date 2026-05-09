DELETE FROM `weenie` WHERE `class_Id` = 800692;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800692, 'Vhormian Missile Weapons Stamp', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800692,   1,        128) /* ItemType - Misc */
     , (800692,   5,         10) /* EncumbranceVal */
     , (800692,   8,         10) /* Mass */
     , (800692,   9,          0) /* ValidLocations - None */
     , (800692,  11,          1) /* MaxStackSize */
     , (800692,  12,          1) /* StackSize */
     , (800692,  13,         10) /* StackUnitEncumbrance */
     , (800692,  14,         10) /* StackUnitMass */
     , (800692,  15,        1500) /* StackUnitValue */
     , (800692,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (800692,  19,        1500) /* Value */
     , (800692,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800692,  94,          128) /* TargetType - Vestements */
     , (800692, 150,        103) /* HookPlacement - Hook */
     , (800692, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800692,  22, True ) /* Inscribable */
     , (800692,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800692,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800692,   1, 'Vhormian Missile Weapons Stamp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800692,   1,   33556922) /* Setup */
     , (800692,   3,  536870932) /* SoundTable */
     , (800692,   6,   67111092) /* PaletteBase */
     , (800692,   7,  268436417) /* ClothingBase */
     , (800692,   8,  100673243) /* Icon */
     , (800692,  22,  872415275) /* PhysicsEffectTable */
     , (800692,  50,  4286) /* IconOverlay */
     , (800692,  51,  100673082) /* IconOverlaySecondary */;
