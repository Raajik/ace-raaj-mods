DELETE FROM `weenie` WHERE `class_Id` = 800949;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800949, 'Ethereal Vhorma Leggings Hearty', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800949,   1,          2) /* ItemType - Armor */
     , (800949,   3,         92) /* PaletteTemplate - Gold */
     , (800949,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800949,   5,        500) /* EncumbranceVal */
     , (800949,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800949,  16,          1) /* ItemUseable - No */
     , (800949,  18,          1) /* UiEffects - Magical */
     , (800949,  19,         30) /* Value */
     , (800949,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800949,  27,         32) /* ArmorType - Scalemail */
     , (800949,  28,       2000) /* ArmorLevel */
     , (800949,  33,          1) /* Bonded - Normal */
     , (800949,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800949, 106,        225) /* ItemSpellcraft */
     , (800949, 107,       2000) /* ItemCurMana */
     , (800949, 108,       2000) /* ItemMaxMana */
     , (800949, 109,        425) /* ItemDifficulty */
     , (800949, 114,          1) /* Attuned - Normal */
     , (800949, 158,          7) /* WieldRequirements - Level */
     , (800949, 159,          1) /* WieldSkillType - Axe */
     , (800949, 160,        325) /* WieldDifficulty */
     , (800949, 265,         19) /* Defenders */
     , (800949, 374,         10) /* Crit Damage */
     , (800949, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800949,  11, True ) /* IgnoreCollisions */
     , (800949,  13, True ) /* Ethereal */
     , (800949,  14, True ) /* GravityStatus */
     , (800949,  19, True ) /* Attackable */
     , (800949,  22, True ) /* Inscribable */
     , (800949,  69, True ) /* IsSellable */
     , (800949, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800949,   5,   -0.05) /* ManaRate */
     , (800949,  13,     2) /* ArmorModVsSlash */
     , (800949,  14,     2) /* ArmorModVsPierce */
     , (800949,  15,     2) /* ArmorModVsBludgeon */
     , (800949,  16,     2) /* ArmorModVsCold */
     , (800949,  17,     2) /* ArmorModVsFire */
     , (800949,  18,     2) /* ArmorModVsAcid */
     , (800949,  19,     2) /* ArmorModVsElectric */
     , (800949, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800949,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800949,   1,   33554856) /* Setup */
     , (800949,   3,  536870932) /* SoundTable */
     , (800949,   6,   67108990) /* PaletteBase */
     , (800949,   7,  268437013) /* ClothingBase */
     , (800949,   8,  100687759) /* Icon */
     , (800949,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800949,  6103,      2)  /* Legendary Coordination */
     , (800949,  6105,      2)  /* Legendary Focus */
     , (800949,  6101,      2)  /* Legendary Willpower */
     , (800949,  6076,      2)  /* Legendary Stamina Gain */
	 , (800949,  6078,      2)  /* Legendary Mana Gain */
	 , (800949,  6102,      2)  /* Legendary Armor */;
