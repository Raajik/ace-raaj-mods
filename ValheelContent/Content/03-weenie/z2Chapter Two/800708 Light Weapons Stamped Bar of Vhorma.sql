DELETE FROM `weenie` WHERE `class_Id` = 800708;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800708, 'Light Weapons Stamped Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800708,   1,        128) /* ItemType - Misc */
     , (800708,   3,          8) /* PaletteTemplate - Green */
     , (800708,   5,         50) /* EncumbranceVal */
     , (800708,   8,         50) /* Mass */
     , (800708,   9,          0) /* ValidLocations - None */
     , (800708,  11,         25) /* MaxStackSize */
     , (800708,  12,          1) /* StackSize */
     , (800708,  13,         50) /* StackUnitEncumbrance */
     , (800708,  14,         50) /* StackUnitMass */
     , (800708,  15,          0) /* StackUnitValue */
     , (800708,  16,          1) /* ItemUseable - No */
     , (800708,  18,          1) /* UiEffects - Magical */
     , (800708,  19,          0) /* Value */
     , (800708,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800708,  22, True ) /* Inscribable */
     , (800708,  23, True ) /* DestroyOnSell */
     , (800708,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800708,   1, 'Light Weapons Stamped Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800708,   1,   33555677) /* Setup */
     , (800708,   3,  536870932) /* SoundTable */
     , (800708,   6,   67111919) /* PaletteBase */
     , (800708,   7,  268435723) /* ClothingBase */
     , (800708,   8,  100672972) /* Icon */
	 , (800708,  50,      28943) /* IconOverlay */
     , (800708,  22,  872415275) /* PhysicsEffectTable */;
