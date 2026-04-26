DELETE FROM `weenie` WHERE `class_Id` = 800709;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800709, 'Missile Weapons Stamped Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800709,   1,        128) /* ItemType - Misc */
     , (800709,   3,          8) /* PaletteTemplate - Green */
     , (800709,   5,         50) /* EncumbranceVal */
     , (800709,   8,         50) /* Mass */
     , (800709,   9,          0) /* ValidLocations - None */
     , (800709,  11,         25) /* MaxStackSize */
     , (800709,  12,          1) /* StackSize */
     , (800709,  13,         50) /* StackUnitEncumbrance */
     , (800709,  14,         50) /* StackUnitMass */
     , (800709,  15,          0) /* StackUnitValue */
     , (800709,  16,          1) /* ItemUseable - No */
     , (800709,  18,          1) /* UiEffects - Magical */
     , (800709,  19,          0) /* Value */
     , (800709,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800709,  22, True ) /* Inscribable */
     , (800709,  23, True ) /* DestroyOnSell */
     , (800709,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800709,   1, 'Missile Weapons Stamped Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800709,   1,   33555677) /* Setup */
     , (800709,   3,  536870932) /* SoundTable */
     , (800709,   6,   67111919) /* PaletteBase */
     , (800709,   7,  268435723) /* ClothingBase */
     , (800709,   8,  100672972) /* Icon */
	 , (800709,  50,      4286) /* IconOverlay */
     , (800709,  22,  872415275) /* PhysicsEffectTable */;
