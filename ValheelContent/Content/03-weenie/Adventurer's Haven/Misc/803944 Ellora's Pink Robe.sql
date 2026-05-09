DELETE FROM `weenie` WHERE `class_Id` = 803944;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803944, 'EllorasPinkRobe', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803944,   1,          4) /* ItemType - Clothing */
     , (803944,   3,         87) /* PaletteTemplate - Brown */
     , (803944,   4,      98048) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms, Head, Feet */
     , (803944,   5,        200) /* EncumbranceVal */
     , (803944,   9,      32513) /* ValidLocations - HeadWear, Armor */
     , (803944,  16,          1) /* ItemUseable - No */
     , (803944,  19,         50) /* Value */
     , (803944,  27,          1) /* ArmorType - Cloth */
     , (803944,  28,          0) /* ArmorLevel */
     , (803944,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803944, 169,  201328144) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803944,  11, True ) /* IgnoreCollisions */
     , (803944,  13, True ) /* Ethereal */
     , (803944,  14, True ) /* GravityStatus */
     , (803944,  19, True ) /* Attackable */
     , (803944,  22, True ) /* Inscribable */
     , (803944, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803944,  12,    0.67) /* Shade */
     , (803944,  13,     0.8) /* ArmorModVsSlash */
     , (803944,  14,     0.8) /* ArmorModVsPierce */
     , (803944,  15,       1) /* ArmorModVsBludgeon */
     , (803944,  16,     0.2) /* ArmorModVsCold */
     , (803944,  17,     0.2) /* ArmorModVsFire */
     , (803944,  18,     0.1) /* ArmorModVsAcid */
     , (803944,  19,     0.2) /* ArmorModVsElectric */
     , (803944, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803944,   1, 'Ellora''s Pink Robe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803944,   1,   33559315) /* Setup */
     , (803944,   3,  536870932) /* SoundTable */
     , (803944,   6,   67108990) /* PaletteBase */
     , (803944,   7,  268436922) /* ClothingBase */
     , (803944,   8,  100687434) /* Icon */
     , (803944,  22,  872415275) /* PhysicsEffectTable */
     , (803944,  36,  234881046) /* MutateFilter */;
