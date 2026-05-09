DELETE FROM `weenie` WHERE `class_Id` = 801245;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801245, 'Nether Weapons Stamped Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801245,   1,        128) /* ItemType - Misc */
     , (801245,   3,          8) /* PaletteTemplate - Green */
     , (801245,   5,         50) /* EncumbranceVal */
     , (801245,   8,         50) /* Mass */
     , (801245,   9,          0) /* ValidLocations - None */
     , (801245,  11,         25) /* MaxStackSize */
     , (801245,  12,          1) /* StackSize */
     , (801245,  13,         50) /* StackUnitEncumbrance */
     , (801245,  14,         50) /* StackUnitMass */
     , (801245,  15,          0) /* StackUnitValue */
     , (801245,  16,          1) /* ItemUseable - No */
     , (801245,  18,          1) /* UiEffects - Magical */
     , (801245,  19,          0) /* Value */
     , (801245,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801245,  22, True ) /* Inscribable */
     , (801245,  23, True ) /* DestroyOnSell */
     , (801245,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801245,   1, 'Nether Weapons Stamped Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801245,   1,   33555677) /* Setup */
     , (801245,   3,  536870932) /* SoundTable */
     , (801245,   6,   67111919) /* PaletteBase */
     , (801245,   7,  268435723) /* ClothingBase */
     , (801245,   8,  100672972) /* Icon */
	 , (801245,  50,      28945) /* IconOverlay */
     , (801245,  22,  872415275) /* PhysicsEffectTable */;
