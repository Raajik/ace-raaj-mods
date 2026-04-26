DELETE FROM `weenie` WHERE `class_Id` = 800849;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800849, 'Island Shreth Hide', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800849,   1,        128) /* ItemType - Misc */
     , (800849,   3,          4) /* PaletteTemplate - Brown */
     , (800849,   5,        500) /* EncumbranceVal */
     , (800849,   8,        500) /* Mass */
     , (800849,   9,          0) /* ValidLocations - None */
     , (800849,  11,        250) /* MaxStackSize */
     , (800849,  12,          1) /* StackSize */
     , (800849,  13,          1) /* StackUnitEncumbrance */
     , (800849,  14,          1) /* StackUnitMass */
     , (800849,  15,          1) /* StackUnitValue */
     , (800849,  16,          1) /* ItemUseable - No */
     , (800849,  19,          1) /* Value */
     , (800849,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800849,  22, True ) /* Inscribable */
     , (800849,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800849,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800849,   1, 'Island Shreth Hide') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800849,   1,   33554817) /* Setup */
     , (800849,   3,  536870932) /* SoundTable */
     , (800849,   6,   67111919) /* PaletteBase */
     , (800849,   7,  268435832) /* ClothingBase */
     , (800849,   8,  100671282) /* Icon */
     , (800849,  22,  872415275) /* PhysicsEffectTable */;
