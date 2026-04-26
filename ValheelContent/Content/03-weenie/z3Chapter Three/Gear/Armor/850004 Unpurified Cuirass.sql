DELETE FROM `weenie` WHERE `class_Id` = 850004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850004, 'ace850004-unpurifiedcuirass', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850004,   1,          2) /* ItemType - Armor */
     , (850004,   3,         86) /* PaletteTemplate - Copper */
     , (850004,   4,       3072) /* ClothingPriority - OuterwearChest, OuterwearAbdomen */
     , (850004,   5,       2798) /* EncumbranceVal */
     , (850004,   9,        512) /* ValidLocations - ChestArmor, AbdomenArmor */
     , (850004,  16,          1) /* ItemUseable - No */
	 , (850004,  18,          2) /* UiEffects */
     , (850004,  19,       2284) /* Value */
     , (850004,  27,         32) /* ArmorType - Metal */
     , (850004,  28,       2110) /* ArmorLevel */
     , (850004,  53,        101) /* PlacementPosition - Resting */
     , (850004,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850004, 169,  118097668) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850004,  11, True ) /* IgnoreCollisions */
     , (850004,  13, True ) /* Ethereal */
     , (850004,  14, True ) /* GravityStatus */
     , (850004,  19, True ) /* Attackable */
     , (850004,  22, True ) /* Inscribable */
     , (850004, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850004,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850004,  14,       1) /* ArmorModVsPierce */
     , (850004,  15,       1) /* ArmorModVsBludgeon */
     , (850004,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850004,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850004,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850004,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850004, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850004,   1, 'Unpurified Cuirass') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850004,   1,   33559339) /* Setup */
     , (850004,   3,  536870932) /* SoundTable */
     , (850004,   6,   67108990) /* PaletteBase */
     , (850004,   7,  268436937) /* ClothingBase */
     , (850004,   8,  100686229) /* Icon */
     , (850004,  22,  872415275) /* PhysicsEffectTable */
     , (850004,  36,  234881042) /* MutateFilter */
     , (850004,  46,  939524146) /* TsysMutationFilter */;