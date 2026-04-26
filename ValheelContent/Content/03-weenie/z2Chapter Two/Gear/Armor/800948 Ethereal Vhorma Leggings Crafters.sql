DELETE FROM `weenie` WHERE `class_Id` = 800948;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800948, 'Ethereal Vhorma Leggings Crafters', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800948,   1,          2) /* ItemType - Armor */
     , (800948,   3,         92) /* PaletteTemplate - Gold */
     , (800948,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800948,   5,        500) /* EncumbranceVal */
     , (800948,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800948,  16,          1) /* ItemUseable - No */
     , (800948,  18,          1) /* UiEffects - Magical */
     , (800948,  19,         30) /* Value */
     , (800948,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800948,  27,         32) /* ArmorType - Scalemail */
     , (800948,  28,       2000) /* ArmorLevel */
     , (800948,  33,          1) /* Bonded - Normal */
     , (800948,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800948, 106,        225) /* ItemSpellcraft */
     , (800948, 107,       2000) /* ItemCurMana */
     , (800948, 108,       2000) /* ItemMaxMana */
     , (800948, 109,        425) /* ItemDifficulty */
     , (800948, 114,          1) /* Attuned - Normal */
     , (800948, 158,          7) /* WieldRequirements - Level */
     , (800948, 159,          1) /* WieldSkillType - Axe */
     , (800948, 160,        325) /* WieldDifficulty */
     , (800948, 265,         18) /* Defenders */
     , (800948, 374,         10) /* Crit Damage */
     , (800948, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800948,  11, True ) /* IgnoreCollisions */
     , (800948,  13, True ) /* Ethereal */
     , (800948,  14, True ) /* GravityStatus */
     , (800948,  19, True ) /* Attackable */
     , (800948,  22, True ) /* Inscribable */
     , (800948,  69, True ) /* IsSellable */
     , (800948, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800948,   5,   -0.05) /* ManaRate */
     , (800948,  13,     2) /* ArmorModVsSlash */
     , (800948,  14,     2) /* ArmorModVsPierce */
     , (800948,  15,     2) /* ArmorModVsBludgeon */
     , (800948,  16,     2) /* ArmorModVsCold */
     , (800948,  17,     2) /* ArmorModVsFire */
     , (800948,  18,     2) /* ArmorModVsAcid */
     , (800948,  19,     2) /* ArmorModVsElectric */
     , (800948, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800948,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800948,   1,   33554856) /* Setup */
     , (800948,   3,  536870932) /* SoundTable */
     , (800948,   6,   67108990) /* PaletteBase */
     , (800948,   7,  268437013) /* ClothingBase */
     , (800948,   8,  100687759) /* Icon */
     , (800948,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800948,  6103,      2)  /* Legendary Coordination */
     , (800948,  6105,      2)  /* Legendary Focus */
     , (800948,  6101,      2)  /* Legendary Willpower */
     , (800948,  6076,      2)  /* Legendary Stamina Gain */
	 , (800948,  6078,      2)  /* Legendary Mana Gain */
	 , (800948,  6102,      2)  /* Legendary Armor */;
