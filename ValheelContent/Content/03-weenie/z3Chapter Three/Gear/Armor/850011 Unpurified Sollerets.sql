DELETE FROM `weenie` WHERE `class_Id` = 850011;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850011, 'ace850011-unpurifiedsollerets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850011,   1,          2) /* ItemType - Armor */
     , (850011,   3,         86) /* PaletteTemplate - Copper */
     , (850011,   4,      65536) /* ClothingPriority - Feet */
     , (850011,   5,        540) /* EncumbranceVal */
     , (850011,   9,        256) /* ValidLocations - FootWear */
     , (850011,  16,          1) /* ItemUseable - No */
	 , (850011,  18,          2) /* UiEffects */
     , (850011,  19,        653) /* Value */
     , (850011,  27,         32) /* ArmorType - Metal */
     , (850011,  28,       2150) /* ArmorLevel */
     , (850011,  44,          3) /* Damage */
     , (850011,  45,          4) /* DamageType - Bludgeon */
     , (850011,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (850011, 169,  151650564) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850011,  11, True ) /* IgnoreCollisions */
     , (850011,  13, True ) /* Ethereal */
     , (850011,  14, True ) /* GravityStatus */
     , (850011,  19, True ) /* Attackable */
     , (850011,  22, True ) /* Inscribable */
     , (850011, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850011,  13, 1.2999999523162842) /* ArmorModVsSlash */
     , (850011,  14,       1) /* ArmorModVsPierce */
     , (850011,  15,       1) /* ArmorModVsBludgeon */
     , (850011,  16, 0.4000000059604645) /* ArmorModVsCold */
     , (850011,  17, 0.4000000059604645) /* ArmorModVsFire */
     , (850011,  18, 0.6000000238418579) /* ArmorModVsAcid */
     , (850011,  19, 0.4000000059604645) /* ArmorModVsElectric */
     , (850011, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850011,   1, 'Unpurified Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850011,   1,   33559334) /* Setup */
     , (850011,   3,  536870932) /* SoundTable */
     , (850011,   6,   67108990) /* PaletteBase */
     , (850011,   7,  268436932) /* ClothingBase */
     , (850011,   8,  100686135) /* Icon */
     , (850011,  22,  872415275) /* PhysicsEffectTable */
     , (850011,  36,  234881042) /* MutateFilter */
     , (850011,  46,  939524146) /* TsysMutationFilter */;