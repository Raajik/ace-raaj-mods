DELETE FROM `weenie` WHERE `class_Id` = 801132;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801132, 'Coat Stamped Refined Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801132,   1,        128) /* ItemType - Misc */
     , (801132,   3,          8) /* PaletteTemplate - Green */
     , (801132,   5,         50) /* EncumbranceVal */
     , (801132,   8,         50) /* Mass */
     , (801132,   9,          0) /* ValidLocations - None */
     , (801132,  11,         25) /* MaxStackSize */
     , (801132,  12,          1) /* StackSize */
     , (801132,  13,         50) /* StackUnitEncumbrance */
     , (801132,  14,         50) /* StackUnitMass */
     , (801132,  15,          0) /* StackUnitValue */
     , (801132,  16,          1) /* ItemUseable - No */
     , (801132,  18,          1) /* UiEffects - Magical */
     , (801132,  19,          0) /* Value */
     , (801132,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801132,  22, True ) /* Inscribable */
     , (801132,  23, True ) /* DestroyOnSell */
     , (801132,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801132,   1, 'Coat Stamped Refined Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801132,   1,   33555677) /* Setup */
     , (801132,   3,  536870932) /* SoundTable */
     , (801132,   6,   67111919) /* PaletteBase */
     , (801132,   7,  268435723) /* ClothingBase */
     , (801132,   8,  100672972) /* Icon */
	 , (801132,  50,      28745) /* IconOverlay */
     , (801132,  22,  872415275) /* PhysicsEffectTable */;
