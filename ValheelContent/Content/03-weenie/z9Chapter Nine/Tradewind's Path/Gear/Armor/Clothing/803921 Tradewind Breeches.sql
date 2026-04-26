DELETE FROM `weenie` WHERE `class_Id` = 803921;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803921, 'Tradewind Breeches', 2, '2024-04-21 12:19:17') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803921,   1,          4) /* ItemType - Clothing */
     , (803921,   3,          9) /* PaletteTemplate - Grey */
     , (803921,   4,         19) /* ClothingPriority - Unknown, UnderwearUpperLegs, UnderwearAbdomen */
     , (803921,   5,         90) /* EncumbranceVal */
     , (803921,   8,         60) /* Mass */
     , (803921,   9,         68) /* ValidLocations - AbdomenWear, UpperLegWear */
     , (803921,  16,          1) /* ItemUseable - No */
     , (803921,  18,          0) /* UiEffects - Magical */
     , (803921,  19,         15) /* Value */
     , (803921,  27,          1) /* ArmorType - Cloth */
     , (803921,  28,        500) /* ArmorLevel */
     , (803921,  33,          1) /* Bonded - Bonded */
     , (803921,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803921, 106,        200) /* ItemSpellcraft */
     , (803921, 107,       1200) /* ItemCurMana */
     , (803921, 108,       1200) /* ItemMaxMana */
     , (803921, 114,          1) /* Attuned - Attuned */
	 , (803921, 158,          7) /* WieldRequirements - Level */
     , (803921, 160,      10000) /* WieldDifficulty */
     , (803921, 169,  201326864) /* TsysMutationData */
     , (803921, 370,       1500) /* GearDamage */
     , (803921, 371,       1500) /* GearDamageResist */
     , (803921, 374,       1500) /* GearCritDamage */
     , (803921, 375,       1500) /* GearCritDamageResist */
     , (803921, 376,       1500) /* GearHealingBoost */
     , (803921, 379,       1500) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803921,  11, True ) /* IgnoreCollisions */
     , (803921,  13, True ) /* Ethereal */
     , (803921,  14, True ) /* GravityStatus */
     , (803921,  19, True ) /* Attackable */
     , (803921,  22, True ) /* Inscribable */
     , (803921, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803921,  12,     0.1) /* Shade */
     , (803921,  13,       2) /* ArmorModVsSlash */
     , (803921,  14,       2) /* ArmorModVsPierce */
     , (803921,  15,       2) /* ArmorModVsBludgeon */
     , (803921,  16,       2) /* ArmorModVsCold */
     , (803921,  17,       2) /* ArmorModVsFire */
     , (803921,  18,       2) /* ArmorModVsAcid */
     , (803921,  19,       2) /* ArmorModVsElectric */
     , (803921, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803921,   1, 'Tradewind Breeches') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803921,   1,   33554653) /* Setup */
     , (803921,   3,  536870932) /* SoundTable */
     , (803921,   6,   67108990) /* PaletteBase */
     , (803921,   7,  268436783) /* ClothingBase */
     , (803921,   8,  100667371) /* Icon */
     , (803921,  22,  872415275) /* PhysicsEffectTable */
	 , (803921,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803921,  3710,      0)  /* Prodigal Impenetrability */
     , (803921,  3711,      0)  /* Prodigal Impregnability */
     , (803921,  3727,      0)  /* Prodigal Person Attunement */;
