DELETE FROM `weenie` WHERE `class_Id` = 800954;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800954, 'Ethereal Vhorma Leggings Reinforced', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800954,   1,          2) /* ItemType - Armor */
     , (800954,   3,         92) /* PaletteTemplate - Gold */
     , (800954,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800954,   5,        500) /* EncumbranceVal */
     , (800954,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800954,  16,          1) /* ItemUseable - No */
     , (800954,  18,          1) /* UiEffects - Magical */
     , (800954,  19,         30) /* Value */
     , (800954,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800954,  27,         32) /* ArmorType - Scalemail */
     , (800954,  28,       2000) /* ArmorLevel */
     , (800954,  33,          1) /* Bonded - Normal */
     , (800954,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800954, 106,        225) /* ItemSpellcraft */
     , (800954, 107,       2000) /* ItemCurMana */
     , (800954, 108,       2000) /* ItemMaxMana */
     , (800954, 109,        425) /* ItemDifficulty */
     , (800954, 114,          1) /* Attuned - Normal */
     , (800954, 158,          7) /* WieldRequirements - Level */
     , (800954, 159,          1) /* WieldSkillType - Axe */
     , (800954, 160,        325) /* WieldDifficulty */
     , (800954, 265,         24) /* Defenders */
     , (800954, 374,         10) /* Crit Damage */
     , (800954, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800954,  11, True ) /* IgnoreCollisions */
     , (800954,  13, True ) /* Ethereal */
     , (800954,  14, True ) /* GravityStatus */
     , (800954,  19, True ) /* Attackable */
     , (800954,  22, True ) /* Inscribable */
     , (800954,  69, True ) /* IsSellable */
     , (800954, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800954,   5,   -0.05) /* ManaRate */
     , (800954,  13,     2) /* ArmorModVsSlash */
     , (800954,  14,     2) /* ArmorModVsPierce */
     , (800954,  15,     2) /* ArmorModVsBludgeon */
     , (800954,  16,     2) /* ArmorModVsCold */
     , (800954,  17,     2) /* ArmorModVsFire */
     , (800954,  18,     2) /* ArmorModVsAcid */
     , (800954,  19,     2) /* ArmorModVsElectric */
     , (800954, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800954,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800954,   1,   33554856) /* Setup */
     , (800954,   3,  536870932) /* SoundTable */
     , (800954,   6,   67108990) /* PaletteBase */
     , (800954,   7,  268437013) /* ClothingBase */
     , (800954,   8,  100687759) /* Icon */
     , (800954,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800954,  6103,      2)  /* Legendary Coordination */
     , (800954,  6105,      2)  /* Legendary Focus */
     , (800954,  6101,      2)  /* Legendary Willpower */
     , (800954,  6076,      2)  /* Legendary Stamina Gain */
	 , (800954,  6078,      2)  /* Legendary Mana Gain */
	 , (800954,  6102,      2)  /* Legendary Armor */;
