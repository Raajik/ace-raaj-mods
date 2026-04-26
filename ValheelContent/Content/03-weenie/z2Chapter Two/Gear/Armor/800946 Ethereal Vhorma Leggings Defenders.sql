DELETE FROM `weenie` WHERE `class_Id` = 800946;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800946, 'Ethereal Vhorma Leggings Defenders', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800946,   1,          2) /* ItemType - Armor */
     , (800946,   3,         92) /* PaletteTemplate - Gold */
     , (800946,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800946,   5,        500) /* EncumbranceVal */
     , (800946,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800946,  16,          1) /* ItemUseable - No */
     , (800946,  18,          1) /* UiEffects - Magical */
     , (800946,  19,         30) /* Value */
     , (800946,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800946,  27,         32) /* ArmorType - Scalemail */
     , (800946,  28,       2000) /* ArmorLevel */
     , (800946,  33,          1) /* Bonded - Normal */
     , (800946,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800946, 106,        225) /* ItemSpellcraft */
     , (800946, 107,       2000) /* ItemCurMana */
     , (800946, 108,       2000) /* ItemMaxMana */
     , (800946, 109,        425) /* ItemDifficulty */
     , (800946, 114,          1) /* Attuned - Normal */
     , (800946, 158,          7) /* WieldRequirements - Level */
     , (800946, 159,          1) /* WieldSkillType - Axe */
     , (800946, 160,        325) /* WieldDifficulty */
     , (800946, 265,         16) /* Defenders */
     , (800946, 374,         10) /* Crit Damage */
     , (800946, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800946,  11, True ) /* IgnoreCollisions */
     , (800946,  13, True ) /* Ethereal */
     , (800946,  14, True ) /* GravityStatus */
     , (800946,  19, True ) /* Attackable */
     , (800946,  22, True ) /* Inscribable */
     , (800946,  69, True ) /* IsSellable */
     , (800946, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800946,   5,   -0.05) /* ManaRate */
     , (800946,  13,     2) /* ArmorModVsSlash */
     , (800946,  14,     2) /* ArmorModVsPierce */
     , (800946,  15,     2) /* ArmorModVsBludgeon */
     , (800946,  16,     2) /* ArmorModVsCold */
     , (800946,  17,     2) /* ArmorModVsFire */
     , (800946,  18,     2) /* ArmorModVsAcid */
     , (800946,  19,     2) /* ArmorModVsElectric */
     , (800946, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800946,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800946,   1,   33554856) /* Setup */
     , (800946,   3,  536870932) /* SoundTable */
     , (800946,   6,   67108990) /* PaletteBase */
     , (800946,   7,  268437013) /* ClothingBase */
     , (800946,   8,  100687759) /* Icon */
     , (800946,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800946,  6103,      2)  /* Legendary Coordination */
     , (800946,  6105,      2)  /* Legendary Focus */
     , (800946,  6101,      2)  /* Legendary Willpower */
     , (800946,  6076,      2)  /* Legendary Stamina Gain */
	 , (800946,  6078,      2)  /* Legendary Mana Gain */
	 , (800946,  6102,      2)  /* Legendary Armor */;
