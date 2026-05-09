DELETE FROM `weenie` WHERE `class_Id` = 800475;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800475, 'Crude Bar of Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800475,   1,        128) /* ItemType - Misc */
     , (800475,   5,         50) /* EncumbranceVal */
     , (800475,   8,         50) /* Mass */
     , (800475,   9,          0) /* ValidLocations - None */
     , (800475,  11,         25) /* MaxStackSize */
     , (800475,  12,          1) /* StackSize */
     , (800475,  13,         50) /* StackUnitEncumbrance */
     , (800475,  14,         50) /* StackUnitMass */
     , (800475,  15,          0) /* StackUnitValue */
     , (800475,  16,          1) /* ItemUseable - No */
     , (800475,  19,          0) /* Value */
     , (800475,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800475,  22, True ) /* Inscribable */
     , (800475,  23, True ) /* DestroyOnSell */
     , (800475,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800475,   1, 'Crude Bar of Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800475,   1,   33557380) /* Setup */
     , (800475,   3,  536870932) /* SoundTable */
     , (800475,   6,   67113398) /* PaletteBase */
     , (800475,   7,  268436284) /* ClothingBase */
     , (800475,   8,  100672202) /* Icon */
     , (800475,  22,  872415275) /* PhysicsEffectTable */;
