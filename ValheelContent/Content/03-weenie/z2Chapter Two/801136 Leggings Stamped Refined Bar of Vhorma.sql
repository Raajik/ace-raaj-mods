DELETE FROM `weenie` WHERE `class_Id` = 801136;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801136, 'Leggings Stamped Refined Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801136,   1,        128) /* ItemType - Misc */
     , (801136,   3,          8) /* PaletteTemplate - Green */
     , (801136,   5,         50) /* EncumbranceVal */
     , (801136,   8,         50) /* Mass */
     , (801136,   9,          0) /* ValidLocations - None */
     , (801136,  11,         25) /* MaxStackSize */
     , (801136,  12,          1) /* StackSize */
     , (801136,  13,         50) /* StackUnitEncumbrance */
     , (801136,  14,         50) /* StackUnitMass */
     , (801136,  15,          0) /* StackUnitValue */
     , (801136,  16,          1) /* ItemUseable - No */
     , (801136,  18,          1) /* UiEffects - Magical */
     , (801136,  19,          0) /* Value */
     , (801136,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801136,  22, True ) /* Inscribable */
     , (801136,  23, True ) /* DestroyOnSell */
     , (801136,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801136,   1, 'Leggings Stamped Refined Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801136,   1,   33555677) /* Setup */
     , (801136,   3,  536870932) /* SoundTable */
     , (801136,   6,   67111919) /* PaletteBase */
     , (801136,   7,  268435723) /* ClothingBase */
     , (801136,   8,  100672972) /* Icon */
	 , (801136,  50,      28745) /* IconOverlay */
     , (801136,  22,  872415275) /* PhysicsEffectTable */;
