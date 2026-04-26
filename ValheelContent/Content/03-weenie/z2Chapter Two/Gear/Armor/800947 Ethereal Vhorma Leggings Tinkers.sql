DELETE FROM `weenie` WHERE `class_Id` = 800947;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800947, 'Ethereal Vhorma Leggings Tinkers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800947,   1,          2) /* ItemType - Armor */
     , (800947,   3,         92) /* PaletteTemplate - Gold */
     , (800947,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800947,   5,        500) /* EncumbranceVal */
     , (800947,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800947,  16,          1) /* ItemUseable - No */
     , (800947,  18,          1) /* UiEffects - Magical */
     , (800947,  19,         30) /* Value */
     , (800947,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800947,  27,         32) /* ArmorType - Scalemail */
     , (800947,  28,       2000) /* ArmorLevel */
     , (800947,  33,          1) /* Bonded - Normal */
     , (800947,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800947, 106,        225) /* ItemSpellcraft */
     , (800947, 107,       2000) /* ItemCurMana */
     , (800947, 108,       2000) /* ItemMaxMana */
     , (800947, 109,        425) /* ItemDifficulty */
     , (800947, 114,          1) /* Attuned - Normal */
     , (800947, 158,          7) /* WieldRequirements - Level */
     , (800947, 159,          1) /* WieldSkillType - Axe */
     , (800947, 160,        325) /* WieldDifficulty */
     , (800947, 265,         17) /* Defenders */
     , (800947, 374,         10) /* Crit Damage */
     , (800947, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800947,  11, True ) /* IgnoreCollisions */
     , (800947,  13, True ) /* Ethereal */
     , (800947,  14, True ) /* GravityStatus */
     , (800947,  19, True ) /* Attackable */
     , (800947,  22, True ) /* Inscribable */
     , (800947,  69, True ) /* IsSellable */
     , (800947, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800947,   5,   -0.05) /* ManaRate */
     , (800947,  13,     2) /* ArmorModVsSlash */
     , (800947,  14,     2) /* ArmorModVsPierce */
     , (800947,  15,     2) /* ArmorModVsBludgeon */
     , (800947,  16,     2) /* ArmorModVsCold */
     , (800947,  17,     2) /* ArmorModVsFire */
     , (800947,  18,     2) /* ArmorModVsAcid */
     , (800947,  19,     2) /* ArmorModVsElectric */
     , (800947, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800947,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800947,   1,   33554856) /* Setup */
     , (800947,   3,  536870932) /* SoundTable */
     , (800947,   6,   67108990) /* PaletteBase */
     , (800947,   7,  268437013) /* ClothingBase */
     , (800947,   8,  100687759) /* Icon */
     , (800947,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800947,  6103,      2)  /* Legendary Coordination */
     , (800947,  6105,      2)  /* Legendary Focus */
     , (800947,  6101,      2)  /* Legendary Willpower */
     , (800947,  6076,      2)  /* Legendary Stamina Gain */
	 , (800947,  6078,      2)  /* Legendary Mana Gain */
	 , (800947,  6102,      2)  /* Legendary Armor */;
