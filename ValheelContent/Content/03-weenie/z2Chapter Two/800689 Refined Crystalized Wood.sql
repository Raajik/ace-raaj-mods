DELETE FROM `weenie` WHERE `class_Id` = 800689;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800689, 'Refined Crystalized Wood', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800689,   1,        128) /* ItemType - Misc */
     , (800689,   3,          4) /* PaletteTemplate - Brown */
     , (800689,   5,         15) /* EncumbranceVal */
     , (800689,   8,        180) /* Mass */
     , (800689,   9,          0) /* ValidLocations - None */
     , (800689,  16,          1) /* ItemUseable - No */
     , (800689,  19,         10) /* Value */
     , (800689,  33,          1) /* Bonded - Bonded */
     , (800689,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800689, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800689,  22, True ) /* Inscribable */
     , (800689,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800689,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800689,   1, 'Refined Crystalized Wood') /* Name */
     , (800689,  15, 'A smooth, refined slab of Crystalized Wood.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800689,   1,   33554817) /* Setup */
     , (800689,   3,  536870932) /* SoundTable */
     , (800689,   6,   67111919) /* PaletteBase */
     , (800689,   7,  268435832) /* ClothingBase */
     , (800689,   8,  100676644) /* Icon */
     , (800689,  22,  872415275) /* PhysicsEffectTable */;
