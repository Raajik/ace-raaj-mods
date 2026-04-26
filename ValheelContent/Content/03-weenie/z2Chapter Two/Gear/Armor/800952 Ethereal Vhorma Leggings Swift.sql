DELETE FROM `weenie` WHERE `class_Id` = 800952;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800952, 'Ethereal Vhorma Leggings Swift', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800952,   1,          2) /* ItemType - Armor */
     , (800952,   3,         92) /* PaletteTemplate - Gold */
     , (800952,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800952,   5,        500) /* EncumbranceVal */
     , (800952,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800952,  16,          1) /* ItemUseable - No */
     , (800952,  18,          1) /* UiEffects - Magical */
     , (800952,  19,         30) /* Value */
     , (800952,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800952,  27,         32) /* ArmorType - Scalemail */
     , (800952,  28,       2000) /* ArmorLevel */
     , (800952,  33,          1) /* Bonded - Normal */
     , (800952,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800952, 106,        225) /* ItemSpellcraft */
     , (800952, 107,       2000) /* ItemCurMana */
     , (800952, 108,       2000) /* ItemMaxMana */
     , (800952, 109,        425) /* ItemDifficulty */
     , (800952, 114,          1) /* Attuned - Normal */
     , (800952, 158,          7) /* WieldRequirements - Level */
     , (800952, 159,          1) /* WieldSkillType - Axe */
     , (800952, 160,        325) /* WieldDifficulty */
     , (800952, 265,         22) /* Defenders */
     , (800952, 374,         10) /* Crit Damage */
     , (800952, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800952,  11, True ) /* IgnoreCollisions */
     , (800952,  13, True ) /* Ethereal */
     , (800952,  14, True ) /* GravityStatus */
     , (800952,  19, True ) /* Attackable */
     , (800952,  22, True ) /* Inscribable */
     , (800952,  69, True ) /* IsSellable */
     , (800952, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800952,   5,   -0.05) /* ManaRate */
     , (800952,  13,     2) /* ArmorModVsSlash */
     , (800952,  14,     2) /* ArmorModVsPierce */
     , (800952,  15,     2) /* ArmorModVsBludgeon */
     , (800952,  16,     2) /* ArmorModVsCold */
     , (800952,  17,     2) /* ArmorModVsFire */
     , (800952,  18,     2) /* ArmorModVsAcid */
     , (800952,  19,     2) /* ArmorModVsElectric */
     , (800952, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800952,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800952,   1,   33554856) /* Setup */
     , (800952,   3,  536870932) /* SoundTable */
     , (800952,   6,   67108990) /* PaletteBase */
     , (800952,   7,  268437013) /* ClothingBase */
     , (800952,   8,  100687759) /* Icon */
     , (800952,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800952,  6103,      2)  /* Legendary Coordination */
     , (800952,  6105,      2)  /* Legendary Focus */
     , (800952,  6101,      2)  /* Legendary Willpower */
     , (800952,  6076,      2)  /* Legendary Stamina Gain */
	 , (800952,  6078,      2)  /* Legendary Mana Gain */
	 , (800952,  6102,      2)  /* Legendary Armor */;
