DELETE FROM `weenie` WHERE `class_Id` = 800945;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800945, 'Ethereal Vhorma Leggings Archers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800945,   1,          2) /* ItemType - Armor */
     , (800945,   3,         92) /* PaletteTemplate - Gold */
     , (800945,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800945,   5,        500) /* EncumbranceVal */
     , (800945,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800945,  16,          1) /* ItemUseable - No */
     , (800945,  18,          1) /* UiEffects - Magical */
     , (800945,  19,         30) /* Value */
     , (800945,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800945,  27,         32) /* ArmorType - Scalemail */
     , (800945,  28,       2000) /* ArmorLevel */
     , (800945,  33,          1) /* Bonded - Normal */
     , (800945,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800945, 106,        225) /* ItemSpellcraft */
     , (800945, 107,       2000) /* ItemCurMana */
     , (800945, 108,       2000) /* ItemMaxMana */
     , (800945, 109,        425) /* ItemDifficulty */
     , (800945, 114,          1) /* Attuned - Normal */
     , (800945, 158,          7) /* WieldRequirements - Level */
     , (800945, 159,          1) /* WieldSkillType - Axe */
     , (800945, 160,        325) /* WieldDifficulty */
     , (800945, 265,         15) /* Defenders */
     , (800945, 374,         10) /* Crit Damage */
     , (800945, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800945,  11, True ) /* IgnoreCollisions */
     , (800945,  13, True ) /* Ethereal */
     , (800945,  14, True ) /* GravityStatus */
     , (800945,  19, True ) /* Attackable */
     , (800945,  22, True ) /* Inscribable */
     , (800945,  69, True ) /* IsSellable */
     , (800945, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800945,   5,   -0.05) /* ManaRate */
     , (800945,  13,     2) /* ArmorModVsSlash */
     , (800945,  14,     2) /* ArmorModVsPierce */
     , (800945,  15,     2) /* ArmorModVsBludgeon */
     , (800945,  16,     2) /* ArmorModVsCold */
     , (800945,  17,     2) /* ArmorModVsFire */
     , (800945,  18,     2) /* ArmorModVsAcid */
     , (800945,  19,     2) /* ArmorModVsElectric */
     , (800945, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800945,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800945,   1,   33554856) /* Setup */
     , (800945,   3,  536870932) /* SoundTable */
     , (800945,   6,   67108990) /* PaletteBase */
     , (800945,   7,  268437013) /* ClothingBase */
     , (800945,   8,  100687759) /* Icon */
     , (800945,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800945,  6103,      2)  /* Legendary Coordination */
     , (800945,  6105,      2)  /* Legendary Focus */
     , (800945,  6101,      2)  /* Legendary Willpower */
     , (800945,  6076,      2)  /* Legendary Stamina Gain */
	 , (800945,  6078,      2)  /* Legendary Mana Gain */
	 , (800945,  6102,      2)  /* Legendary Armor */;
