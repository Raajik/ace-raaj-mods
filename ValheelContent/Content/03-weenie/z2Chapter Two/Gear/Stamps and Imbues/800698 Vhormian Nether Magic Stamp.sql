DELETE FROM `weenie` WHERE `class_Id` = 800698;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800698, 'Vhormian Nether Magic Stamp', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800698,   1,        128) /* ItemType - Misc */
     , (800698,   5,         10) /* EncumbranceVal */
     , (800698,   8,         10) /* Mass */
     , (800698,   9,          0) /* ValidLocations - None */
     , (800698,  11,          1) /* MaxStackSize */
     , (800698,  12,          1) /* StackSize */
     , (800698,  13,         10) /* StackUnitEncumbrance */
     , (800698,  14,         10) /* StackUnitMass */
     , (800698,  15,      10500) /* StackUnitValue */
     , (800698,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (800698,  19,      10500) /* Value */
     , (800698,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800698,  94,        128) /* TargetType - Vestements */
     , (800698, 150,        103) /* HookPlacement - Hook */
     , (800698, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800698,  22, True ) /* Inscribable */
     , (800698,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800698,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800698,   1, 'Vhormian Nether Magic Stamp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800698,   1,   33556922) /* Setup */
     , (800698,   3,  536870932) /* SoundTable */
     , (800698,   6,   67111092) /* PaletteBase */
     , (800698,   7,  268436417) /* ClothingBase */
     , (800698,   8,  100673243) /* Icon */
     , (800698,  22,  872415275) /* PhysicsEffectTable */
     , (800698,  50,  28945) /* IconOverlay */
     , (800698,  51,  100673082) /* IconOverlaySecondary */;
