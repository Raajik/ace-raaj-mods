DELETE FROM `weenie` WHERE `class_Id` = 801134;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801134, 'Gauntlet Stamped Refined Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801134,   1,        128) /* ItemType - Misc */
     , (801134,   3,          8) /* PaletteTemplate - Green */
     , (801134,   5,         50) /* EncumbranceVal */
     , (801134,   8,         50) /* Mass */
     , (801134,   9,          0) /* ValidLocations - None */
     , (801134,  11,         25) /* MaxStackSize */
     , (801134,  12,          1) /* StackSize */
     , (801134,  13,         50) /* StackUnitEncumbrance */
     , (801134,  14,         50) /* StackUnitMass */
     , (801134,  15,          0) /* StackUnitValue */
     , (801134,  16,          1) /* ItemUseable - No */
     , (801134,  18,          1) /* UiEffects - Magical */
     , (801134,  19,          0) /* Value */
     , (801134,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801134,  22, True ) /* Inscribable */
     , (801134,  23, True ) /* DestroyOnSell */
     , (801134,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801134,   1, 'Gauntlet Stamped Refined Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801134,   1,   33555677) /* Setup */
     , (801134,   3,  536870932) /* SoundTable */
     , (801134,   6,   67111919) /* PaletteBase */
     , (801134,   7,  268435723) /* ClothingBase */
     , (801134,   8,  100672972) /* Icon */
	 , (801134,  50,      28745) /* IconOverlay */
     , (801134,  22,  872415275) /* PhysicsEffectTable */;
