DELETE FROM `weenie` WHERE `class_Id` = 800707;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800707, 'Heavy Weapons Stamped Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800707,   1,        128) /* ItemType - Misc */
     , (800707,   3,          8) /* PaletteTemplate - Green */
     , (800707,   5,         50) /* EncumbranceVal */
     , (800707,   8,         50) /* Mass */
     , (800707,   9,          0) /* ValidLocations - None */
     , (800707,  11,         25) /* MaxStackSize */
     , (800707,  12,          1) /* StackSize */
     , (800707,  13,         50) /* StackUnitEncumbrance */
     , (800707,  14,         50) /* StackUnitMass */
     , (800707,  15,          0) /* StackUnitValue */
     , (800707,  16,          1) /* ItemUseable - No */
     , (800707,  18,          1) /* UiEffects - Magical */
     , (800707,  19,          0) /* Value */
     , (800707,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800707,  22, True ) /* Inscribable */
     , (800707,  23, True ) /* DestroyOnSell */
     , (800707,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800707,   1, 'Heavy Weapons Stamped Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800707,   1,   33555677) /* Setup */
     , (800707,   3,  536870932) /* SoundTable */
     , (800707,   6,   67111919) /* PaletteBase */
     , (800707,   7,  268435723) /* ClothingBase */
     , (800707,   8,  100672972) /* Icon */
	 , (800707,  50,      28941) /* IconOverlay */
     , (800707,  22,  872415275) /* PhysicsEffectTable */;
