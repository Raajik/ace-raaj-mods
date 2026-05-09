DELETE FROM `weenie` WHERE `class_Id` = 800476;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800476, 'Refined Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800476,   1,        128) /* ItemType - Misc */
     , (800476,   3,          8) /* PaletteTemplate - Green */
     , (800476,   5,         50) /* EncumbranceVal */
     , (800476,   8,         50) /* Mass */
     , (800476,   9,          0) /* ValidLocations - None */
     , (800476,  11,        500) /* MaxStackSize */
     , (800476,  12,          1) /* StackSize */
     , (800476,  13,         50) /* StackUnitEncumbrance */
     , (800476,  14,         50) /* StackUnitMass */
     , (800476,  15,          0) /* StackUnitValue */
     , (800476,  16,          1) /* ItemUseable - No */
     , (800476,  18,          1) /* UiEffects - Magical */
     , (800476,  19,          0) /* Value */
     , (800476,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800476,  22, True ) /* Inscribable */
     , (800476,  23, True ) /* DestroyOnSell */
     , (800476,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800476,   1, 'Refined Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800476,   1,   33555677) /* Setup */
     , (800476,   3,  536870932) /* SoundTable */
     , (800476,   6,   67111919) /* PaletteBase */
     , (800476,   7,  268435723) /* ClothingBase */
     , (800476,   8,  100672972) /* Icon */
     , (800476,  22,  872415275) /* PhysicsEffectTable */;
