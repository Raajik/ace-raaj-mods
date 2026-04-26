DELETE FROM `weenie` WHERE `class_Id` = 803567;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803567, 'Plain Shirt', 1, '2005-02-09 10:00:00') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803567,   1,       8192) /* ItemType - Writable */
     , (803567,   5,         25) /* EncumbranceVal */
     , (803567,   8,          5) /* Mass */
     , (803567,   9,          0) /* ValidLocations - None */
     , (803567,  16,          8) /* ItemUseable - Contained */
     , (803567,  19,         10) /* Value */
     , (803567,  33,          1) /* Bonded - Bonded */
     , (803567,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803567, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803567,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803567,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803567,   1, 'Plain Shirt') /* Name */
     , (803567,  33, 'PlainShirtPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803567,   1,   33554644) /* Setup */
     , (803567,   3,  536870932) /* SoundTable */
     , (803567,   6,   67108990) /* PaletteBase */
     , (803567,   7,  268436782) /* ClothingBase */
     , (803567,   8,  100667380) /* Icon */
     , (803567,  22,  872415275) /* PhysicsEffectTable */;
