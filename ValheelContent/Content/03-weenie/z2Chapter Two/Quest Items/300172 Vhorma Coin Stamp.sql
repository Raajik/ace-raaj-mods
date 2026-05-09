DELETE FROM `weenie` WHERE `class_Id` = 300172;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300172, 'vhormacoinstamp', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300172,   1,        128) /* ItemType - Misc */
     , (300172,   5,         10) /* EncumbranceVal */
     , (300172,   8,         10) /* Mass */
     , (300172,   9,          0) /* ValidLocations - None */
     , (300172,  11,          1) /* MaxStackSize */
     , (300172,  12,          1) /* StackSize */
     , (300172,  13,         10) /* StackUnitEncumbrance */
     , (300172,  14,         10) /* StackUnitMass */
     , (300172,  15,        100) /* StackUnitValue */
     , (300172,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (300172,  19,        100) /* Value */
     , (300172,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300172,  94,        128) /* TargetType - Vestements */
     , (300172, 114,          2) /* Attuned - Attuned */
     , (300172, 150,        103) /* HookPlacement - Hook */
     , (300172, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300172,  22, True ) /* Inscribable */
     , (300172,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300172,  12,       0) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300172,   1, 'Vhorma Coin Stamp') /* Name */
     , (300172,  14, 'Use this stamp to place its symbol onto an Refined Bar of Vhorma or Infused Bar of Ethereal Vhorma.') /* Use */
     , (300172,  15, 'A stamp with the Vhorman symbol.') /* ShortDesc */
     , (300172,  33, 'VhormaTokenPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300172,   1,   33556922) /* Setup */
     , (300172,   3,  536870932) /* SoundTable */
     , (300172,   6,   67111092) /* PaletteBase */
     , (300172,   7,  268436417) /* ClothingBase */
     , (300172,   8,  100691509) /* Icon */
     , (300172,  22,  872415275) /* PhysicsEffectTable */
     , (300172,  50,  100689497) /* IconOverlay */
	 /* , (300172,  52,  100689404) /* IconUnderlay */
     /* , (300172,  51,  100673082) /* IconOverlaySecondary */;
