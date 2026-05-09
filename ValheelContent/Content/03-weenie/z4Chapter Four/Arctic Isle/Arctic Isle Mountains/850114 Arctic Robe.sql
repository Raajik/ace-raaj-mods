DELETE FROM `weenie` WHERE `class_Id` = 850114;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850114, 'ace850114-arcticrobe', 2, '2020-10-20 10:16:42') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850114,   1,          2) /* ItemType - Armor */
     , (850114,   3,          1) /* PaletteTemplate - AquaBlue*/
     , (850114,   4,      81664) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms, Feet */
     , (850114,   5,       1300) /* EncumbranceVal */
     , (850114,   8,        340) /* Mass */
     , (850114,   9,      32545) /* ValidLocations - Armor */
     , (850114,  16,          1) /* ItemUseable - No */
     , (850114,  18,       4096) /* UiEffects */
     , (850114,  19,       4000) /* Value */
     , (850114,  27,          1) /* ArmorType - Cloth */
     , (850114,  28,        500) /* ArmorLevel */
     , (850114,  53,        101) /* PlacementPosition - Resting */
     , (850114,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850114, 150,        103) /* HookPlacement - Hook */
     , (850114, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850114,  11, True ) /* IgnoreCollisions */
     , (850114,  13, True ) /* Ethereal */
     , (850114,  14, True ) /* GravityStatus */
     , (850114,  19, True ) /* Attackable */
     , (850114,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850114,  12,       1) /* Shade */
     , (850114,  13,       2) /* ArmorModVsSlash */
     , (850114,  14,       2) /* ArmorModVsPierce */
     , (850114,  15,       2) /* ArmorModVsBludgeon */
     , (850114,  16,       2) /* ArmorModVsCold */
     , (850114,  17,       2) /* ArmorModVsFire */
     , (850114,  18,       2) /* ArmorModVsAcid */
     , (850114,  19,       2) /* ArmorModVsElectric */
     , (850114, 110,       1) /* BulkMod */
     , (850114, 111,       1) /* SizeMod */
     , (850114, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850114,   1, 'Arctic Robe') /* Name */
     , (850114,  15, 'Proctective and durable robe, much like the people who own them.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850114,   1,   33554854) /* Setup */
     , (850114,   3,  536870932) /* SoundTable */
     , (850114,   6,   67108990) /* PaletteBase */
     , (850114,   7,  268436244) /* ClothingBase */
     , (850114,   8,  100672057) /* Icon */
     , (850114,  22,  872415275) /* PhysicsEffectTable */
     , (850114,  36,  234881046) /* MutateFilter */
     , (850114,  52,  100676440) /* IconUnderlay */;
