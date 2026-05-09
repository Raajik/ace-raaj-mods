DELETE FROM `weenie` WHERE `class_Id` = 801133;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801133, 'Helm Stamped Refined Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801133,   1,        128) /* ItemType - Misc */
     , (801133,   3,          8) /* PaletteTemplate - Green */
     , (801133,   5,         50) /* EncumbranceVal */
     , (801133,   8,         50) /* Mass */
     , (801133,   9,          0) /* ValidLocations - None */
     , (801133,  11,         25) /* MaxStackSize */
     , (801133,  12,          1) /* StackSize */
     , (801133,  13,         50) /* StackUnitEncumbrance */
     , (801133,  14,         50) /* StackUnitMass */
     , (801133,  15,          0) /* StackUnitValue */
     , (801133,  16,          1) /* ItemUseable - No */
     , (801133,  18,          1) /* UiEffects - Magical */
     , (801133,  19,          0) /* Value */
     , (801133,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801133,  22, True ) /* Inscribable */
     , (801133,  23, True ) /* DestroyOnSell */
     , (801133,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801133,   1, 'Helm Stamped Refined Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801133,   1,   33555677) /* Setup */
     , (801133,   3,  536870932) /* SoundTable */
     , (801133,   6,   67111919) /* PaletteBase */
     , (801133,   7,  268435723) /* ClothingBase */
     , (801133,   8,  100672972) /* Icon */
	 , (801133,  50,      28745) /* IconOverlay */
     , (801133,  22,  872415275) /* PhysicsEffectTable */;
