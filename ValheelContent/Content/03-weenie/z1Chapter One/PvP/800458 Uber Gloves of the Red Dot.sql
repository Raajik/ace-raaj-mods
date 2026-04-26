DELETE FROM `weenie` WHERE `class_Id` = 800458;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800458, 'Uber Gloves of the Red Dot', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800458,   1,          2) /* ItemType - Armor */
     , (800458,   3,         14) /* PaletteTemplate - DyeSpringBlack */
     , (800458,   4,      32768) /* ClothingPriority - Hands */
     , (800458,   5,        560) /* EncumbranceVal */
     , (800458,   9,         32) /* ValidLocations - HandWear */
     , (800458,  16,          1) /* ItemUseable - No */
     , (800458,  18,          1) /* UiEffects - Magical */
     , (800458,  27,         32) /* ArmorType - Metal */
     , (800458,  28,        1500) /* ArmorLevel */
     , (800458,  33,          1) /* Bonded - Bonded */
     , (800458,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800458, 106,        200) /* ItemSpellcraft */
     , (800458, 107,       1000) /* ItemCurMana */
     , (800458, 108,       1000) /* ItemMaxMana */
     , (800458, 109,        300) /* ItemDifficulty */
     , (800458, 114,          1) /* Attuned - Attuned */
     , (800458, 124,          3) /* Version */
     , (800458, 151,          2) /* HookType - Wall */
     , (800458, 158,          7) /* WieldRequirements - Level */
     , (800458, 159,          1) /* WieldSkillType - Axe */
     , (800458, 160,        300) /* WieldDifficulty */
     , (800458, 169,  151651588) /* TsysMutationData */
     , (800458, 265,         24) /* Defenders */
     , (800458, 370,          3) /* Damage */
     , (800458, 379,          7) /* Health Boost */
     , (800458, 383,          3) /* GearPKDamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800458,  22, True ) /* Inscribable */
     , (800458, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800458,   5,  -0.033) /* ManaRate */
     , (800458,  12,     0.5) /* Shade */
     , (800458,  13,       2) /* ArmorModVsSlash */
     , (800458,  14,       2) /* ArmorModVsPierce */
     , (800458,  15,       2) /* ArmorModVsBludgeon */
     , (800458,  16,       2) /* ArmorModVsCold */
     , (800458,  17,       2) /* ArmorModVsFire */
     , (800458,  18,       2) /* ArmorModVsAcid */
     , (800458,  19,       2) /* ArmorModVsElectric */
     , (800458, 110,     1.1) /* BulkMod */
     , (800458, 111,     1.5) /* SizeMod */
     , (800458, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800458,   1, 'Uber Gloves of the Red Dot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800458,   1,   33554648) /* Setup */
     , (800458,   3,  536870932) /* SoundTable */
     , (800458,   6,   67108990) /* PaletteBase */
     , (800458,   7,  268437241) /* ClothingBase */
     , (800458,   8,  100674658) /* Icon */
     , (800458,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800458,  6075,      2)  /* Legendary War Magic */
     , (800458,  6046,      2)  /* Legendary Creature Magic */
     , (800458,  6056,      2)  /* Legendary Item Magic */
     , (800458,  6060,      2)  /* Legendary Life Magic */
	 , (800458,  6074,      2)  /* Legendary Void Magic */
	 , (800458,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800458,  6102,      2)  /* Legendary Armor */;