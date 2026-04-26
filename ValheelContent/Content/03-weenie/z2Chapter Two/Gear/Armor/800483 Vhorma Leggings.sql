DELETE FROM `weenie` WHERE `class_Id` = 800483;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800483, 'Vhorma Leggings', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800483,   1,          2) /* ItemType - Armor */
     , (800483,   3,         86) /* PaletteTemplate - Gold */
     , (800483,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800483,   5,        500) /* EncumbranceVal */
     , (800483,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800483,  16,          1) /* ItemUseable - No */
     , (800483,  19,         500) /* Value */
     , (800483,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800483,  27,         32) /* ArmorType - Scalemail */
     , (800483,  28,       1725) /* ArmorLevel */
     , (800483,  33,          1) /* Bonded - Normal */
     , (800483,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800483, 106,        225) /* ItemSpellcraft */
     , (800483, 107,       2000) /* ItemCurMana */
     , (800483, 108,       2000) /* ItemMaxMana */
     , (800483, 109,        400) /* ItemDifficulty */
     , (800483, 114,          1) /* Attuned - Normal */
     , (800483, 158,          7) /* WieldRequirements - Level */
     , (800483, 159,          1) /* WieldSkillType - Axe */
     , (800483, 160,        300) /* WieldDifficulty */
     , (800483, 265,         24) /* Defenders */
     , (800483, 374,          6) /* Crit Damage */
     , (800483, 379,          8) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800483,  11, True ) /* IgnoreCollisions */
     , (800483,  13, True ) /* Ethereal */
     , (800483,  14, True ) /* GravityStatus */
     , (800483,  19, True ) /* Attackable */
     , (800483,  22, True ) /* Inscribable */
     , (800483,  69, True ) /* IsSellable */
     , (800483, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800483,   5,   -0.05) /* ManaRate */
     , (800483,  13,     2) /* ArmorModVsSlash */
     , (800483,  14,     2) /* ArmorModVsPierce */
     , (800483,  15,     2) /* ArmorModVsBludgeon */
     , (800483,  16,     2) /* ArmorModVsCold */
     , (800483,  17,     2) /* ArmorModVsFire */
     , (800483,  18,     2) /* ArmorModVsAcid */
     , (800483,  19,     2) /* ArmorModVsElectric */
     , (800483, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800483,   1, 'Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800483,   1,   33554856) /* Setup */
     , (800483,   3,  536870932) /* SoundTable */
     , (800483,   6,   67108990) /* PaletteBase */
     , (800483,   7,  268437013) /* ClothingBase */
     , (800483,   8,  100687759) /* Icon */
     , (800483,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800483,  6103,      2)  /* Legendary Coordination */
     , (800483,  6105,      2)  /* Legendary Focus */
     , (800483,  6101,      2)  /* Legendary Willpower */
     , (800483,  6076,      2)  /* Legendary Stamina Gain */
	 , (800483,  6078,      2)  /* Legendary Mana Gain */
	 , (800483,  6102,      2)  /* Legendary Armor */;
