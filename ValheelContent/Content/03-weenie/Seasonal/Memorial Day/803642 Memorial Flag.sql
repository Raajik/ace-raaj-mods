DELETE FROM `weenie` WHERE `class_Id` = 803642;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803642, 'MemorialFlag', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803642,   1,          4) /* ItemType - Clothing */
     , (803642,   3,         85) /* PaletteTemplate - DyeDarkRed */
     , (803642,   4,          0) /* ClothingPriority - 0 */
     , (803642,   5,         50) /* EncumbranceVal */
     , (803642,   8,         50) /* Mass */
     , (803642,   9,   16777216) /* ValidLocations - Held */
     , (803642,  16,          1) /* ItemUseable - No */
     , (803642,  19,        500) /* Value */
     , (803642,  27,          1) /* ArmorType - Cloth */
     , (803642,  28,          0) /* ArmorLevel */
     , (803642,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803642,   1, True ) /* Stuck */
     , (803642,  22, False) /* Inscribable */
     , (803642,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803642,  12,     0.4) /* Shade */
     , (803642,  39,     0.3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803642,   1, 'Memorial Flag') /* Name */
     , (803642,  15, 'A memorial flag.') /* ShortDesc */
     , (803642,  16, 'A flag memorializing all those who served and died.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803642,   1,   33557723) /* Setup */
     , (803642,   3,  536870932) /* SoundTable */
     , (803642,   6,   67113849) /* PaletteBase */
     , (803642,   7,  268436415) /* ClothingBase */
     , (803642,   8,  100672424) /* Icon */
     , (803642,  22,  872415275) /* PhysicsEffectTable */
     , (803642,  50,  100673179) /* IconOverlay */;
