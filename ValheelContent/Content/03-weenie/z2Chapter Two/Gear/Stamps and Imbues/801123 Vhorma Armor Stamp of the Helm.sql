DELETE FROM `weenie` WHERE `class_Id` = 801123;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801123, 'Vhorma Armor Stamp of the Helm', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801123,   1,        128) /* ItemType - Misc */
     , (801123,   5,         10) /* EncumbranceVal */
     , (801123,   8,         10) /* Mass */
     , (801123,   9,          0) /* ValidLocations - None */
     , (801123,  11,          1) /* MaxStackSize */
     , (801123,  12,          1) /* StackSize */
     , (801123,  13,         10) /* StackUnitEncumbrance */
     , (801123,  14,         10) /* StackUnitMass */
     , (801123,  15,       5000) /* StackUnitValue */
     , (801123,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801123,  19,       5000) /* Value */
     , (801123,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801123,  94,        128) /* TargetType - Vestements */
     , (801123, 150,        103) /* HookPlacement - Hook */
     , (801123, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801123,  22, True ) /* Inscribable */
     , (801123,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801123,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801123,   1, 'Vhorma Armor Stamp of the Helm') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801123,   1,   33556922) /* Setup */
     , (801123,   3,  536870932) /* SoundTable */
     , (801123,   6,   67111092) /* PaletteBase */
     , (801123,   7,  268436417) /* ClothingBase */
     , (801123,   8,  100673243) /* Icon */
     , (801123,  22,  872415275) /* PhysicsEffectTable */
     , (801123,  50,      28745) /* IconOverlay */
     , (801123,  51,  100673082) /* IconOverlaySecondary */;
