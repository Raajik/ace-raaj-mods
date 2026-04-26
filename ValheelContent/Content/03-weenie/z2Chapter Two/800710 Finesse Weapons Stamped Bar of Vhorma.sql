DELETE FROM `weenie` WHERE `class_Id` = 800710;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800710, 'Finesse Weapons Stamped Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800710,   1,        128) /* ItemType - Misc */
     , (800710,   3,          8) /* PaletteTemplate - Green */
     , (800710,   5,         50) /* EncumbranceVal */
     , (800710,   8,         50) /* Mass */
     , (800710,   9,          0) /* ValidLocations - None */
     , (800710,  11,         25) /* MaxStackSize */
     , (800710,  12,          1) /* StackSize */
     , (800710,  13,         50) /* StackUnitEncumbrance */
     , (800710,  14,         50) /* StackUnitMass */
     , (800710,  15,          0) /* StackUnitValue */
     , (800710,  16,          1) /* ItemUseable - No */
     , (800710,  18,          1) /* UiEffects - Magical */
     , (800710,  19,          0) /* Value */
     , (800710,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800710,  22, True ) /* Inscribable */
     , (800710,  23, True ) /* DestroyOnSell */
     , (800710,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800710,   1, 'Finesse Weapons Stamped Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800710,   1,   33555677) /* Setup */
     , (800710,   3,  536870932) /* SoundTable */
     , (800710,   6,   67111919) /* PaletteBase */
     , (800710,   7,  268435723) /* ClothingBase */
     , (800710,   8,  100672972) /* Icon */
	 , (800710,  50,      28942) /* IconOverlay */
     , (800710,  22,  872415275) /* PhysicsEffectTable */;
