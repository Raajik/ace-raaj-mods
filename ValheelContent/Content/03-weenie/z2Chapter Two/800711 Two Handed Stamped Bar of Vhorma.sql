DELETE FROM `weenie` WHERE `class_Id` = 800711;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800711, 'Two Handed Weapons Stamped Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800711,   1,        128) /* ItemType - Misc */
     , (800711,   3,          8) /* PaletteTemplate - Green */
     , (800711,   5,         50) /* EncumbranceVal */
     , (800711,   8,         50) /* Mass */
     , (800711,   9,          0) /* ValidLocations - None */
     , (800711,  11,         25) /* MaxStackSize */
     , (800711,  12,          1) /* StackSize */
     , (800711,  13,         50) /* StackUnitEncumbrance */
     , (800711,  14,         50) /* StackUnitMass */
     , (800711,  15,          0) /* StackUnitValue */
     , (800711,  16,          1) /* ItemUseable - No */
     , (800711,  18,          1) /* UiEffects - Magical */
     , (800711,  19,          0) /* Value */
     , (800711,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800711,  22, True ) /* Inscribable */
     , (800711,  23, True ) /* DestroyOnSell */
     , (800711,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800711,   1, 'Two Handed Weapons Stamped Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800711,   1,   33555677) /* Setup */
     , (800711,   3,  536870932) /* SoundTable */
     , (800711,   6,   67111919) /* PaletteBase */
     , (800711,   7,  268435723) /* ClothingBase */
     , (800711,   8,  100672972) /* Icon */
	 , (800711,  50,      28993) /* IconOverlay */
     , (800711,  22,  872415275) /* PhysicsEffectTable */;
