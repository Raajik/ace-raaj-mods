DELETE FROM `weenie` WHERE `class_Id` = 850008;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850008, 'ace850008-unpurifiedgirth', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850008,   1,          2) /* ItemType - Armor */
     , (850008,   3,         86) /* PaletteTemplate - Copper */
     , (850008,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (850008,   5,       1099) /* EncumbranceVal */
     , (850008,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (850008,  16,          1) /* ItemUseable - No */
	 , (850008,  18,          2) /* UiEffects */
     , (850008,  19,        980) /* Value */
     , (850008,  27,         32) /* ArmorType - Metal */
     , (850008,  28,       2110) /* ArmorLevel */
     , (850008,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850008, 169,  118096132) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850008,  11, True ) /* IgnoreCollisions */
     , (850008,  13, True ) /* Ethereal */
     , (850008,  14, True ) /* GravityStatus */
     , (850008,  19, True ) /* Attackable */
     , (850008,  22, True ) /* Inscribable */
     , (850008, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850008,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850008,  14,       1) /* ArmorModVsPierce */
     , (850008,  15,       1) /* ArmorModVsBludgeon */
     , (850008,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850008,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850008,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850008,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850008, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850008,   1, 'Unpurified Girth') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850008,   1,   33559342) /* Setup */
     , (850008,   3,  536870932) /* SoundTable */
     , (850008,   6,   67108990) /* PaletteBase */
     , (850008,   7,  268436940) /* ClothingBase */
     , (850008,   8,  100686292) /* Icon */
     , (850008,  22,  872415275) /* PhysicsEffectTable */
     , (850008,  36,  234881042) /* MutateFilter */
     , (850008,  46,  939524146) /* TsysMutationFilter */;