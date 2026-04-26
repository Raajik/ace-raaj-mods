DELETE FROM `weenie` WHERE `class_Id` = 800951;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800951, 'Ethereal Vhorma Leggings Wise', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800951,   1,          2) /* ItemType - Armor */
     , (800951,   3,         92) /* PaletteTemplate - Gold */
     , (800951,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800951,   5,        500) /* EncumbranceVal */
     , (800951,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800951,  16,          1) /* ItemUseable - No */
     , (800951,  18,          1) /* UiEffects - Magical */
     , (800951,  19,         30) /* Value */
     , (800951,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800951,  27,         32) /* ArmorType - Scalemail */
     , (800951,  28,       2000) /* ArmorLevel */
     , (800951,  33,          1) /* Bonded - Normal */
     , (800951,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800951, 106,        225) /* ItemSpellcraft */
     , (800951, 107,       2000) /* ItemCurMana */
     , (800951, 108,       2000) /* ItemMaxMana */
     , (800951, 109,        425) /* ItemDifficulty */
     , (800951, 114,          1) /* Attuned - Normal */
     , (800951, 158,          7) /* WieldRequirements - Level */
     , (800951, 159,          1) /* WieldSkillType - Axe */
     , (800951, 160,        325) /* WieldDifficulty */
     , (800951, 265,         21) /* Defenders */
     , (800951, 374,         10) /* Crit Damage */
     , (800951, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800951,  11, True ) /* IgnoreCollisions */
     , (800951,  13, True ) /* Ethereal */
     , (800951,  14, True ) /* GravityStatus */
     , (800951,  19, True ) /* Attackable */
     , (800951,  22, True ) /* Inscribable */
     , (800951,  69, True ) /* IsSellable */
     , (800951, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800951,   5,   -0.05) /* ManaRate */
     , (800951,  13,     2) /* ArmorModVsSlash */
     , (800951,  14,     2) /* ArmorModVsPierce */
     , (800951,  15,     2) /* ArmorModVsBludgeon */
     , (800951,  16,     2) /* ArmorModVsCold */
     , (800951,  17,     2) /* ArmorModVsFire */
     , (800951,  18,     2) /* ArmorModVsAcid */
     , (800951,  19,     2) /* ArmorModVsElectric */
     , (800951, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800951,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800951,   1,   33554856) /* Setup */
     , (800951,   3,  536870932) /* SoundTable */
     , (800951,   6,   67108990) /* PaletteBase */
     , (800951,   7,  268437013) /* ClothingBase */
     , (800951,   8,  100687759) /* Icon */
     , (800951,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800951,  6103,      2)  /* Legendary Coordination */
     , (800951,  6105,      2)  /* Legendary Focus */
     , (800951,  6101,      2)  /* Legendary Willpower */
     , (800951,  6076,      2)  /* Legendary Stamina Gain */
	 , (800951,  6078,      2)  /* Legendary Mana Gain */
	 , (800951,  6102,      2)  /* Legendary Armor */;
