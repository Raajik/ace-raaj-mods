DELETE FROM `weenie` WHERE `class_Id` = 850003;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850003, 'ace850003-unpurifiedhelm', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850003,   1,          2) /* ItemType - Armor */
     , (850003,   3,         86) /* PaletteTemplate - Copper */
     , (850003,   4,      16384) /* ClothingPriority - Head */
     , (850003,   5,        666) /* EncumbranceVal */
     , (850003,   9,          1) /* ValidLocations - HeadWear */
     , (850003,  16,          1) /* ItemUseable - No */
	 , (850003,  18,          2) /* UiEffects */
     , (850003,  19,        819) /* Value */
     , (850003,  27,         32) /* ArmorType - Metal */
     , (850003,  28,       2150) /* ArmorLevel */
     , (850003,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850003, 150,        103) /* HookPlacement - Hook */
     , (850003, 151,          2) /* HookType - Wall */
     , (850003, 169,  118096132) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850003,  11, True ) /* IgnoreCollisions */
     , (850003,  13, True ) /* Ethereal */
     , (850003,  14, True ) /* GravityStatus */
     , (850003,  19, True ) /* Attackable */
     , (850003,  22, True ) /* Inscribable */
     , (850003, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850003,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850003,  14,       1) /* ArmorModVsPierce */
     , (850003,  15,       1) /* ArmorModVsBludgeon */
     , (850003,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850003,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850003,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850003,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850003, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850003,   1, 'Unpurified Helm') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850003,   1,   33556883) /* Setup */
     , (850003,   3,  536870932) /* SoundTable */
     , (850003,   6,   67108990) /* PaletteBase */
     , (850003,   7,  268436088) /* ClothingBase */
     , (850003,   8,  100667349) /* Icon */
     , (850003,  22,  872415275) /* PhysicsEffectTable */
     , (850003,  36,  234881042) /* MutateFilter */
     , (850003,  46,  939524146) /* TsysMutationFilter */;