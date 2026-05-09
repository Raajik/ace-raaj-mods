DELETE FROM `weenie` WHERE `class_Id` = 800474;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800474, 'Chunk of Raw Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800474,   1,        128) /* ItemType - Misc */
     , (800474,   3,         21) /* PaletteTemplate - Gold */
     , (800474,   5,         50) /* EncumbranceVal */
     , (800474,   8,         50) /* Mass */
     , (800474,   9,          0) /* ValidLocations - None */
     , (800474,  11,        500) /* MaxStackSize */
     , (800474,  12,          1) /* StackSize */
     , (800474,  13,         50) /* StackUnitEncumbrance */
     , (800474,  14,         50) /* StackUnitMass */
     , (800474,  15,          0) /* StackUnitValue */
     , (800474,  16,          1) /* ItemUseable - No */
     , (800474,  19,          0) /* Value */
     , (800474,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800474,  22, True ) /* Inscribable */
     , (800474,  23, True ) /* DestroyOnSell */
     , (800474,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800474,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800474,   1, 'Chunk of Raw Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800474,   1,   33554669) /* Setup */
     , (800474,   3,  536870932) /* SoundTable */
     , (800474,   6,   67111919) /* PaletteBase */
     , (800474,   7,  268435968) /* ClothingBase */
     , (800474,   8,  100670485) /* Icon */
     , (800474,  22,  872415275) /* PhysicsEffectTable */;
