DELETE FROM `weenie` WHERE `class_Id` = 800694;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800694, 'Vhormian Heavy Weapons Stamp', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800694,   1,        128) /* ItemType - Misc */
     , (800694,   5,         10) /* EncumbranceVal */
     , (800694,   8,         10) /* Mass */
     , (800694,   9,          0) /* ValidLocations - None */
     , (800694,  11,          1) /* MaxStackSize */
     , (800694,  12,          1) /* StackSize */
     , (800694,  13,         10) /* StackUnitEncumbrance */
     , (800694,  14,         10) /* StackUnitMass */
     , (800694,  15,        1500) /* StackUnitValue */
     , (800694,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (800694,  19,       1500) /* Value */
     , (800694,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800694,  94,        128) /* TargetType - Misc */
     , (800694, 150,        103) /* HookPlacement - Hook */
     , (800694, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800694,  22, True ) /* Inscribable */
     , (800694,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800694,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800694,   1, 'Vhormian Heavy Weapons Stamp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800694,   1,   33556922) /* Setup */
     , (800694,   3,  536870932) /* SoundTable */
     , (800694,   6,   67111092) /* PaletteBase */
     , (800694,   7,  268436417) /* ClothingBase */
     , (800694,   8,  100673243) /* Icon */
     , (800694,  22,  872415275) /* PhysicsEffectTable */
     , (800694,  50,  28941) /* IconOverlay */
     , (800694,  51,  100673082) /* IconOverlaySecondary */;
