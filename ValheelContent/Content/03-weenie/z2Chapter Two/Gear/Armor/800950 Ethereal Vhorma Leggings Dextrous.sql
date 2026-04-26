DELETE FROM `weenie` WHERE `class_Id` = 800950;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800950, 'Ethereal Vhorma Leggings Dextrous', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800950,   1,          2) /* ItemType - Armor */
     , (800950,   3,         92) /* PaletteTemplate - Gold */
     , (800950,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800950,   5,        500) /* EncumbranceVal */
     , (800950,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800950,  16,          1) /* ItemUseable - No */
     , (800950,  18,          1) /* UiEffects - Magical */
     , (800950,  19,         30) /* Value */
     , (800950,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800950,  27,         32) /* ArmorType - Scalemail */
     , (800950,  28,       2000) /* ArmorLevel */
     , (800950,  33,          1) /* Bonded - Normal */
     , (800950,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800950, 106,        225) /* ItemSpellcraft */
     , (800950, 107,       2000) /* ItemCurMana */
     , (800950, 108,       2000) /* ItemMaxMana */
     , (800950, 109,        425) /* ItemDifficulty */
     , (800950, 114,          1) /* Attuned - Normal */
     , (800950, 158,          7) /* WieldRequirements - Level */
     , (800950, 159,          1) /* WieldSkillType - Axe */
     , (800950, 160,        325) /* WieldDifficulty */
     , (800950, 265,         20) /* Defenders */
     , (800950, 374,         10) /* Crit Damage */
     , (800950, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800950,  11, True ) /* IgnoreCollisions */
     , (800950,  13, True ) /* Ethereal */
     , (800950,  14, True ) /* GravityStatus */
     , (800950,  19, True ) /* Attackable */
     , (800950,  22, True ) /* Inscribable */
     , (800950,  69, True ) /* IsSellable */
     , (800950, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800950,   5,   -0.05) /* ManaRate */
     , (800950,  13,     2) /* ArmorModVsSlash */
     , (800950,  14,     2) /* ArmorModVsPierce */
     , (800950,  15,     2) /* ArmorModVsBludgeon */
     , (800950,  16,     2) /* ArmorModVsCold */
     , (800950,  17,     2) /* ArmorModVsFire */
     , (800950,  18,     2) /* ArmorModVsAcid */
     , (800950,  19,     2) /* ArmorModVsElectric */
     , (800950, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800950,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800950,   1,   33554856) /* Setup */
     , (800950,   3,  536870932) /* SoundTable */
     , (800950,   6,   67108990) /* PaletteBase */
     , (800950,   7,  268437013) /* ClothingBase */
     , (800950,   8,  100687759) /* Icon */
     , (800950,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800950,  6103,      2)  /* Legendary Coordination */
     , (800950,  6105,      2)  /* Legendary Focus */
     , (800950,  6101,      2)  /* Legendary Willpower */
     , (800950,  6076,      2)  /* Legendary Stamina Gain */
	 , (800950,  6078,      2)  /* Legendary Mana Gain */
	 , (800950,  6102,      2)  /* Legendary Armor */;
