DELETE FROM `weenie` WHERE `class_Id` = 850005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850005, 'ace850005-unpurifiedpauldrons', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850005,   1,          2) /* ItemType - Armor */
     , (850005,   3,         86) /* PaletteTemplate - Copper */
     , (850005,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (850005,   5,        720) /* EncumbranceVal */
     , (850005,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (850005,  16,          1) /* ItemUseable - No */
	 , (850005,  18,          2) /* UiEffects */
     , (850005,  19,        653) /* Value */
     , (850005,  27,         32) /* ArmorType - Metal */
     , (850005,  28,       2110) /* ArmorLevel */
     , (850005,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850005, 169,  118096132) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850005,  11, True ) /* IgnoreCollisions */
     , (850005,  13, True ) /* Ethereal */
     , (850005,  14, True ) /* GravityStatus */
     , (850005,  19, True ) /* Attackable */
     , (850005,  22, True ) /* Inscribable */
     , (850005, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850005,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850005,  14,       1) /* ArmorModVsPierce */
     , (850005,  15,       1) /* ArmorModVsBludgeon */
     , (850005,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850005,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850005,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850005,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850005, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850005,   1, 'Unpurified Pauldrons') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850005,   1,   33559332) /* Setup */
     , (850005,   3,  536870932) /* SoundTable */
     , (850005,   6,   67108990) /* PaletteBase */
     , (850005,   7,  268436930) /* ClothingBase */
     , (850005,   8,  100686098) /* Icon */
     , (850005,  22,  872415275) /* PhysicsEffectTable */
     , (850005,  36,  234881042) /* MutateFilter */
     , (850005,  46,  939524146) /* TsysMutationFilter */;