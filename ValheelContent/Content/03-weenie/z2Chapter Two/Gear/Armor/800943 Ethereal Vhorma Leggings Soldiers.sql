DELETE FROM `weenie` WHERE `class_Id` = 800943;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800943, 'Ethereal Vhorma Leggings Soldiers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800943,   1,          2) /* ItemType - Armor */
     , (800943,   3,         92) /* PaletteTemplate - Gold */
     , (800943,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800943,   5,        500) /* EncumbranceVal */
     , (800943,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800943,  16,          1) /* ItemUseable - No */
     , (800943,  18,          1) /* UiEffects - Magical */
     , (800943,  19,         30) /* Value */
     , (800943,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800943,  27,         32) /* ArmorType - Scalemail */
     , (800943,  28,       2000) /* ArmorLevel */
     , (800943,  33,          1) /* Bonded - Normal */
     , (800943,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800943, 106,        225) /* ItemSpellcraft */
     , (800943, 107,       2000) /* ItemCurMana */
     , (800943, 108,       2000) /* ItemMaxMana */
     , (800943, 109,        425) /* ItemDifficulty */
     , (800943, 114,          1) /* Attuned - Normal */
     , (800943, 158,          7) /* WieldRequirements - Level */
     , (800943, 159,          1) /* WieldSkillType - Axe */
     , (800943, 160,        325) /* WieldDifficulty */
     , (800943, 265,         13) /* Defenders */
     , (800943, 374,         10) /* Crit Damage */
     , (800943, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800943,  11, True ) /* IgnoreCollisions */
     , (800943,  13, True ) /* Ethereal */
     , (800943,  14, True ) /* GravityStatus */
     , (800943,  19, True ) /* Attackable */
     , (800943,  22, True ) /* Inscribable */
     , (800943,  69, True ) /* IsSellable */
     , (800943, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800943,   5,   -0.05) /* ManaRate */
     , (800943,  13,     2) /* ArmorModVsSlash */
     , (800943,  14,     2) /* ArmorModVsPierce */
     , (800943,  15,     2) /* ArmorModVsBludgeon */
     , (800943,  16,     2) /* ArmorModVsCold */
     , (800943,  17,     2) /* ArmorModVsFire */
     , (800943,  18,     2) /* ArmorModVsAcid */
     , (800943,  19,     2) /* ArmorModVsElectric */
     , (800943, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800943,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800943,   1,   33554856) /* Setup */
     , (800943,   3,  536870932) /* SoundTable */
     , (800943,   6,   67108990) /* PaletteBase */
     , (800943,   7,  268437013) /* ClothingBase */
     , (800943,   8,  100687759) /* Icon */
     , (800943,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800943,  6103,      2)  /* Legendary Coordination */
     , (800943,  6105,      2)  /* Legendary Focus */
     , (800943,  6101,      2)  /* Legendary Willpower */
     , (800943,  6076,      2)  /* Legendary Stamina Gain */
	 , (800943,  6078,      2)  /* Legendary Mana Gain */
	 , (800943,  6102,      2)  /* Legendary Armor */;
