DELETE FROM `weenie` WHERE `class_Id` = 800944;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800944, 'Ethereal Vhorma Leggings Adepts', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800944,   1,          2) /* ItemType - Armor */
     , (800944,   3,         92) /* PaletteTemplate - Gold */
     , (800944,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800944,   5,        500) /* EncumbranceVal */
     , (800944,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800944,  16,          1) /* ItemUseable - No */
     , (800944,  18,          1) /* UiEffects - Magical */
     , (800944,  19,         30) /* Value */
     , (800944,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800944,  27,         32) /* ArmorType - Scalemail */
     , (800944,  28,       2000) /* ArmorLevel */
     , (800944,  33,          1) /* Bonded - Normal */
     , (800944,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800944, 106,        225) /* ItemSpellcraft */
     , (800944, 107,       2000) /* ItemCurMana */
     , (800944, 108,       2000) /* ItemMaxMana */
     , (800944, 109,        425) /* ItemDifficulty */
     , (800944, 114,          1) /* Attuned - Normal */
     , (800944, 158,          7) /* WieldRequirements - Level */
     , (800944, 159,          1) /* WieldSkillType - Axe */
     , (800944, 160,        325) /* WieldDifficulty */
     , (800944, 265,         14) /* Defenders */
     , (800944, 374,         10) /* Crit Damage */
     , (800944, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800944,  11, True ) /* IgnoreCollisions */
     , (800944,  13, True ) /* Ethereal */
     , (800944,  14, True ) /* GravityStatus */
     , (800944,  19, True ) /* Attackable */
     , (800944,  22, True ) /* Inscribable */
     , (800944,  69, True ) /* IsSellable */
     , (800944, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800944,   5,   -0.05) /* ManaRate */
     , (800944,  13,     2) /* ArmorModVsSlash */
     , (800944,  14,     2) /* ArmorModVsPierce */
     , (800944,  15,     2) /* ArmorModVsBludgeon */
     , (800944,  16,     2) /* ArmorModVsCold */
     , (800944,  17,     2) /* ArmorModVsFire */
     , (800944,  18,     2) /* ArmorModVsAcid */
     , (800944,  19,     2) /* ArmorModVsElectric */
     , (800944, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800944,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800944,   1,   33554856) /* Setup */
     , (800944,   3,  536870932) /* SoundTable */
     , (800944,   6,   67108990) /* PaletteBase */
     , (800944,   7,  268437013) /* ClothingBase */
     , (800944,   8,  100687759) /* Icon */
     , (800944,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800944,  6103,      2)  /* Legendary Coordination */
     , (800944,  6105,      2)  /* Legendary Focus */
     , (800944,  6101,      2)  /* Legendary Willpower */
     , (800944,  6076,      2)  /* Legendary Stamina Gain */
	 , (800944,  6078,      2)  /* Legendary Mana Gain */
	 , (800944,  6102,      2)  /* Legendary Armor */;
