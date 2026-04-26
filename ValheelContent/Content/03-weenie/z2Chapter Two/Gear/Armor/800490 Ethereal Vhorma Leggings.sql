DELETE FROM `weenie` WHERE `class_Id` = 800490;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800490, 'Ethereal Vhorma Leggings', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800490,   1,          2) /* ItemType - Armor */
     , (800490,   3,         92) /* PaletteTemplate - Gold */
     , (800490,   4,        768) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs */
     , (800490,   5,        500) /* EncumbranceVal */
     , (800490,   9,      24576) /* ValidLocations - UpperLegArmor, LowerLegArmor */
     , (800490,  16,          1) /* ItemUseable - No */
     , (800490,  18,          1) /* UiEffects - Magical */
     , (800490,  19,         30) /* Value */
     , (800490,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800490,  27,         32) /* ArmorType - Scalemail */
     , (800490,  28,       2000) /* ArmorLevel */
     , (800490,  33,          1) /* Bonded - Normal */
     , (800490,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800490, 106,        225) /* ItemSpellcraft */
     , (800490, 107,       2000) /* ItemCurMana */
     , (800490, 108,       2000) /* ItemMaxMana */
     , (800490, 109,        425) /* ItemDifficulty */
     , (800490, 114,          1) /* Attuned - Normal */
     , (800490, 158,          7) /* WieldRequirements - Level */
     , (800490, 159,          1) /* WieldSkillType - Axe */
     , (800490, 160,        325) /* WieldDifficulty */
     , (800490, 265,         16) /* Defenders */
     , (800490, 374,         10) /* Crit Damage */
     , (800490, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800490,  11, True ) /* IgnoreCollisions */
     , (800490,  13, True ) /* Ethereal */
     , (800490,  14, True ) /* GravityStatus */
     , (800490,  19, True ) /* Attackable */
     , (800490,  22, True ) /* Inscribable */
     , (800490,  69, True ) /* IsSellable */
     , (800490, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800490,   5,   -0.05) /* ManaRate */
     , (800490,  13,     2) /* ArmorModVsSlash */
     , (800490,  14,     2) /* ArmorModVsPierce */
     , (800490,  15,     2) /* ArmorModVsBludgeon */
     , (800490,  16,     2) /* ArmorModVsCold */
     , (800490,  17,     2) /* ArmorModVsFire */
     , (800490,  18,     2) /* ArmorModVsAcid */
     , (800490,  19,     2) /* ArmorModVsElectric */
     , (800490, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800490,   1, 'Ethereal Vhorma Leggings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800490,   1,   33554856) /* Setup */
     , (800490,   3,  536870932) /* SoundTable */
     , (800490,   6,   67108990) /* PaletteBase */
     , (800490,   7,  268437013) /* ClothingBase */
     , (800490,   8,  100687759) /* Icon */
     , (800490,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800490,  6103,      2)  /* Legendary Coordination */
     , (800490,  6105,      2)  /* Legendary Focus */
     , (800490,  6101,      2)  /* Legendary Willpower */
     , (800490,  6076,      2)  /* Legendary Stamina Gain */
	 , (800490,  6078,      2)  /* Legendary Mana Gain */
	 , (800490,  6102,      2)  /* Legendary Armor */;
