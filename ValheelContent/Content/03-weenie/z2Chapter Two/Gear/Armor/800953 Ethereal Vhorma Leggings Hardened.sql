DELETE FROM `weenie` WHERE `class_Id` = 800953;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800953, 'Ethereal Vhorma Leggings Hardened', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800953,   1,          2) /* ItemType - Armor */
     , (800953,   3,         92) /* PaletteTemplate - Gold */
     , (800953,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800953,   5,        500) /* EncumbranceVal */
     , (800953,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800953,  16,          1) /* ItemUseable - No */
     , (800953,  18,          1) /* UiEffects - Magical */
     , (800953,  19,         30) /* Value */
     , (800953,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800953,  27,         32) /* ArmorType - Scalemail */
     , (800953,  28,       2000) /* ArmorLevel */
     , (800953,  33,          1) /* Bonded - Normal */
     , (800953,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800953, 106,        225) /* ItemSpellcraft */
     , (800953, 107,       2000) /* ItemCurMana */
     , (800953, 108,       2000) /* ItemMaxMana */
     , (800953, 109,        425) /* ItemDifficulty */
     , (800953, 114,          1) /* Attuned - Normal */
     , (800953, 158,          7) /* WieldRequirements - Level */
     , (800953, 159,          1) /* WieldSkillType - Axe */
     , (800953, 160,        325) /* WieldDifficulty */
     , (800953, 265,         23) /* Defenders */
     , (800953, 374,         10) /* Crit Damage */
     , (800953, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800953,  11, True ) /* IgnoreCollisions */
     , (800953,  13, True ) /* Ethereal */
     , (800953,  14, True ) /* GravityStatus */
     , (800953,  19, True ) /* Attackable */
     , (800953,  22, True ) /* Inscribable */
     , (800953,  69, True ) /* IsSellable */
     , (800953, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800953,   5,   -0.05) /* ManaRate */
     , (800953,  13,     2) /* ArmorModVsSlash */
     , (800953,  14,     2) /* ArmorModVsPierce */
     , (800953,  15,     2) /* ArmorModVsBludgeon */
     , (800953,  16,     2) /* ArmorModVsCold */
     , (800953,  17,     2) /* ArmorModVsFire */
     , (800953,  18,     2) /* ArmorModVsAcid */
     , (800953,  19,     2) /* ArmorModVsElectric */
     , (800953, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800953,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800953,   1,   33554856) /* Setup */
     , (800953,   3,  536870932) /* SoundTable */
     , (800953,   6,   67108990) /* PaletteBase */
     , (800953,   7,  268437013) /* ClothingBase */
     , (800953,   8,  100687759) /* Icon */
     , (800953,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800953,  6103,      2)  /* Legendary Coordination */
     , (800953,  6105,      2)  /* Legendary Focus */
     , (800953,  6101,      2)  /* Legendary Willpower */
     , (800953,  6076,      2)  /* Legendary Stamina Gain */
	 , (800953,  6078,      2)  /* Legendary Mana Gain */
	 , (800953,  6102,      2)  /* Legendary Armor */;
