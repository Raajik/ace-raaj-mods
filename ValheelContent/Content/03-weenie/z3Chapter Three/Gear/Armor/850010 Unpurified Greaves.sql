DELETE FROM `weenie` WHERE `class_Id` = 850010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850010, 'ace850010-unpurifiedgreaves', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850010,   1,          2) /* ItemType - Armor */
     , (850010,   3,         86) /* PaletteTemplate - Copper */
     , (850010,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (850010,   5,        919) /* EncumbranceVal */
     , (850010,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (850010,  16,          1) /* ItemUseable - No */
	 , (850010,  18,          2) /* UiEffects */
     , (850010,  19,        653) /* Value */
     , (850010,  27,         32) /* ArmorType - Metal */
     , (850010,  28,       2110) /* ArmorLevel */
     , (850010,  53,        101) /* PlacementPosition - Resting */
     , (850010,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850010, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850010,  11, True ) /* IgnoreCollisions */
     , (850010,  13, True ) /* Ethereal */
     , (850010,  14, True ) /* GravityStatus */
     , (850010,  19, True ) /* Attackable */
     , (850010,  22, True ) /* Inscribable */
     , (850010, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850010,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850010,  14,       1) /* ArmorModVsPierce */
     , (850010,  15,       1) /* ArmorModVsBludgeon */
     , (850010,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850010,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850010,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850010,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850010, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850010,   1, 'Unpurified Greaves') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850010,   1,   33559343) /* Setup */
     , (850010,   3,  536870932) /* SoundTable */
     , (850010,   6,   67108990) /* PaletteBase */
     , (850010,   7,  268436941) /* ClothingBase */
     , (850010,   8,  100686303) /* Icon */
     , (850010,  22,  872415275) /* PhysicsEffectTable */
     , (850010,  36,  234881042) /* MutateFilter */
     , (850010,  46,  939524146) /* TsysMutationFilter */;