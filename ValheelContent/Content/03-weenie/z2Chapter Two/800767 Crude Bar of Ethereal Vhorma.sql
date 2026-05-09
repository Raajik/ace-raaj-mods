DELETE FROM `weenie` WHERE `class_Id` = 800767;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800767, 'Crude Bar of Ethereal Vhorma', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800767,   1,        128) /* ItemType - Misc */
     , (800767,   5,         50) /* EncumbranceVal */
     , (800767,   8,         50) /* Mass */
     , (800767,   9,          0) /* ValidLocations - None */
     , (800767,  11,         25) /* MaxStackSize */
     , (800767,  12,          1) /* StackSize */
     , (800767,  13,         50) /* StackUnitEncumbrance */
     , (800767,  14,         50) /* StackUnitMass */
     , (800767,  15,          0) /* StackUnitValue */
     , (800767,  16,          1) /* ItemUseable - No */
     , (800767,  19,          0) /* Value */
     , (800767,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800767,  22, True ) /* Inscribable */
     , (800767,  23, True ) /* DestroyOnSell */
     , (800767,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800767,   1, 'Crude Bar of Ethereal Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800767,   1,   33557380) /* Setup */
     , (800767,   3,  536870932) /* SoundTable */
     , (800767,   6,   67113398) /* PaletteBase */
     , (800767,   7,  268436284) /* ClothingBase */
     , (800767,   8,  27135) /* Icon */
     , (800767,  22,  872415275) /* PhysicsEffectTable */;
