DELETE FROM `weenie` WHERE `class_Id` = 850007;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850007, 'ace850007-unpurifiedgauntlets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850007,   1,          2) /* ItemType - Armor */
     , (850007,   3,         86) /* PaletteTemplate - Copper */
     , (850007,   4,      32768) /* ClothingPriority - Hands */
     , (850007,   5,        919) /* EncumbranceVal */
     , (850007,   9,         32) /* ValidLocations - HandWear */
     , (850007,  16,          1) /* ItemUseable - No */
	 , (850007,  18,          2) /* UiEffects */
     , (850007,  19,        653) /* Value */
     , (850007,  27,         32) /* ArmorType - Metal */
     , (850007,  28,       2150) /* ArmorLevel */
     , (850007,  44,          3) /* Damage */
     , (850007,  45,          4) /* DamageType - Bludgeon */
     , (850007,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850007, 169,  151651588) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850007,  11, True ) /* IgnoreCollisions */
     , (850007,  13, True ) /* Ethereal */
     , (850007,  14, True ) /* GravityStatus */
     , (850007,  19, True ) /* Attackable */
     , (850007,  22, True ) /* Inscribable */
     , (850007, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850007,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850007,  14,       1) /* ArmorModVsPierce */
     , (850007,  15,       1) /* ArmorModVsBludgeon */
     , (850007,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850007,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850007,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850007,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850007, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850007,   1, 'Unpurified Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850007,   1,   33559341) /* Setup */
     , (850007,   3,  536870932) /* SoundTable */
     , (850007,   6,   67108990) /* PaletteBase */
     , (850007,   7,  268436939) /* ClothingBase */
     , (850007,   8,  100686268) /* Icon */
     , (850007,  22,  872415275) /* PhysicsEffectTable */
     , (850007,  36,  234881042) /* MutateFilter */
     , (850007,  46,  939524146) /* TsysMutationFilter */;