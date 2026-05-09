DELETE FROM `weenie` WHERE `class_Id` = 850009;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850009, 'ace850009-unpurifiedtassets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850009,   1,          2) /* ItemType - Armor */
     , (850009,   3,         86) /* PaletteTemplate - Copper */
     , (850009,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (850009,   5,        919) /* EncumbranceVal */
     , (850009,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (850009,  16,          1) /* ItemUseable - No */
	 , (850009,  18,          2) /* UiEffects */
     , (850009,  19,        653) /* Value */
     , (850009,  27,         32) /* ArmorType - Metal */
     , (850009,  28,       2110) /* ArmorLevel */
     , (850009,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850009, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850009,  11, True ) /* IgnoreCollisions */
     , (850009,  13, True ) /* Ethereal */
     , (850009,  14, True ) /* GravityStatus */
     , (850009,  19, True ) /* Attackable */
     , (850009,  22, True ) /* Inscribable */
     , (850009, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850009,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850009,  14,       1) /* ArmorModVsPierce */
     , (850009,  15,       1) /* ArmorModVsBludgeon */
     , (850009,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850009,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850009,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850009,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850009, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850009,   1, 'Unpurified Tassets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850009,   1,   33559335) /* Setup */
     , (850009,   3,  536870932) /* SoundTable */
     , (850009,   6,   67108990) /* PaletteBase */
     , (850009,   7,  268436933) /* ClothingBase */
     , (850009,   8,  100686158) /* Icon */
     , (850009,  22,  872415275) /* PhysicsEffectTable */
     , (850009,  36,  234881042) /* MutateFilter */
     , (850009,  46,  939524146) /* TsysMutationFilter */;