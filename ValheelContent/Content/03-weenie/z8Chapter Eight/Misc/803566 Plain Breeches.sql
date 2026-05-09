DELETE FROM `weenie` WHERE `class_Id` = 803566;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803566, 'Plain Breeches', 1, '2005-02-09 10:00:00') /* General */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803566,   1,       8192) /* ItemType - Writable */
     , (803566,   5,         25) /* EncumbranceVal */
     , (803566,   8,          5) /* Mass */
     , (803566,   9,          0) /* ValidLocations - None */
     , (803566,  16,          8) /* ItemUseable - Contained */
     , (803566,  19,         10) /* Value */
     , (803566,  33,          1) /* Bonded - Bonded */
     , (803566,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803566, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803566,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803566,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803566,   1, 'Plain Breeches') /* Name */
     , (803566,  33, 'PlainBreechesPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803566,   1,   33554653) /* Setup */
     , (803566,   3,  536870932) /* SoundTable */
     , (803566,   6,   67108990) /* PaletteBase */
     , (803566,   7,  268436783) /* ClothingBase */
     , (803566,   8,  100667371) /* Icon */
     , (803566,  22,  872415275) /* PhysicsEffectTable */;
