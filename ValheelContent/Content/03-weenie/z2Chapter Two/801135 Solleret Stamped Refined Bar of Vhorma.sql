DELETE FROM `weenie` WHERE `class_Id` = 801135;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801135, 'Solleret Stamped Refined Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801135,   1,        128) /* ItemType - Misc */
     , (801135,   3,          8) /* PaletteTemplate - Green */
     , (801135,   5,         50) /* EncumbranceVal */
     , (801135,   8,         50) /* Mass */
     , (801135,   9,          0) /* ValidLocations - None */
     , (801135,  11,         25) /* MaxStackSize */
     , (801135,  12,          1) /* StackSize */
     , (801135,  13,         50) /* StackUnitEncumbrance */
     , (801135,  14,         50) /* StackUnitMass */
     , (801135,  15,          0) /* StackUnitValue */
     , (801135,  16,          1) /* ItemUseable - No */
     , (801135,  18,          1) /* UiEffects - Magical */
     , (801135,  19,          0) /* Value */
     , (801135,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801135,  22, True ) /* Inscribable */
     , (801135,  23, True ) /* DestroyOnSell */
     , (801135,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801135,   1, 'Solleret Stamped Refined Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801135,   1,   33555677) /* Setup */
     , (801135,   3,  536870932) /* SoundTable */
     , (801135,   6,   67111919) /* PaletteBase */
     , (801135,   7,  268435723) /* ClothingBase */
     , (801135,   8,  100672972) /* Icon */
	 , (801135,  50,      28745) /* IconOverlay */
     , (801135,  22,  872415275) /* PhysicsEffectTable */;
