DELETE FROM `weenie` WHERE `class_Id` = 850006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850006, 'ace850006-unpurifiedbracers', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850006,   1,          2) /* ItemType - Armor */
     , (850006,   3,         86) /* PaletteTemplate - Copper */
     , (850006,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (850006,   5,        540) /* EncumbranceVal */
     , (850006,   8,        270) /* Mass */
     , (850006,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (850006,  16,          1) /* ItemUseable - No */
	 , (850006,  18,          2) /* UiEffects */
     , (850006,  19,        653) /* Value */
     , (850006,  27,         16) /* ArmorType - Chainmail */
     , (850006,  28,       2110) /* ArmorLevel */
     , (850006,  53,        101) /* PlacementPosition - Resting */
     , (850006,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850006, 150,        103) /* HookPlacement - Hook */
     , (850006, 151,          2) /* HookType - Wall */
     , (850006, 169,  118097668) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850006,  11, True ) /* IgnoreCollisions */
     , (850006,  13, True ) /* Ethereal */
     , (850006,  14, True ) /* GravityStatus */
     , (850006,  19, True ) /* Attackable */
     , (850006,  22, True ) /* Inscribable */
     , (850006, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850006,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850006,  14,       1) /* ArmorModVsPierce */
     , (850006,  15,       1) /* ArmorModVsBludgeon */
     , (850006,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850006,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850006,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850006,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850006, 110, 0.800000011920929) /* BulkMod */
     , (850006, 111,       1) /* SizeMod */
     , (850006, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850006,   1, 'Unpurified Bracers') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850006,   1,   33559336) /* Setup */
     , (850006,   3,  536870932) /* SoundTable */
     , (850006,   6,   67108990) /* PaletteBase */
     , (850006,   7,  268436934) /* ClothingBase */
     , (850006,   8,  100686172) /* Icon */
     , (850006,  22,  872415275) /* PhysicsEffectTable */
     , (850006,  36,  234881042) /* MutateFilter */
     , (850006,  46,  939524146) /* TsysMutationFilter */;