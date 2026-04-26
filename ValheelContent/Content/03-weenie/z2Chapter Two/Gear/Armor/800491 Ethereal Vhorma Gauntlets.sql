DELETE FROM `weenie` WHERE `class_Id` = 800491;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800491, 'Ethereal Vhorma Gautnlets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800491,   1,          2) /* ItemType - Armor */
     , (800491,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800491,   4,      32768) /* ClothingPriority - Hands */
     , (800491,   5,        560) /* EncumbranceVal */
     , (800491,   9,         32) /* ValidLocations - HandWear */
     , (800491,  16,          1) /* ItemUseable - No */
     , (800491,  18,          1) /* UiEffects - Magical */
     , (800491,  19,         30) /* Value */
     , (800491,  27,         32) /* ArmorType - Metal */
     , (800491,  28,       2000) /* ArmorLevel */
     , (800491,  33,          1) /* Bonded - Bonded */
     , (800491,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800491, 106,        200) /* ItemSpellcraft */
     , (800491, 107,       1000) /* ItemCurMana */
     , (800491, 108,       1000) /* ItemMaxMana */
     , (800491, 109,        425) /* ItemDifficulty */
     , (800491, 114,          1) /* Attuned - Attuned */
     , (800491, 124,          3) /* Version */
     , (800491, 151,          2) /* HookType - Wall */
     , (800491, 158,          7) /* WieldRequirements - Level */
     , (800491, 159,          1) /* WieldSkillType - Axe */
     , (800491, 160,        325) /* WieldDifficulty */
     , (800491, 169,  151651588) /* TsysMutationData */
     , (800491, 265,         16) /* Defenders */
     , (800491, 370,         10) /* Damage */
     , (800491, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800491,  22, True ) /* Inscribable */
     , (800491, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800491,   5,  -0.033) /* ManaRate */
     , (800491,  12,     0.5) /* Shade */
     , (800491,  13,       2) /* ArmorModVsSlash */
     , (800491,  14,       2) /* ArmorModVsPierce */
     , (800491,  15,       2) /* ArmorModVsBludgeon */
     , (800491,  16,       2) /* ArmorModVsCold */
     , (800491,  17,       2) /* ArmorModVsFire */
     , (800491,  18,       2) /* ArmorModVsAcid */
     , (800491,  19,       2) /* ArmorModVsElectric */
     , (800491, 110,     1.1) /* BulkMod */
     , (800491, 111,     1.5) /* SizeMod */
     , (800491, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800491,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800491,   1,   33554648) /* Setup */
     , (800491,   3,  536870932) /* SoundTable */
     , (800491,   6,   67108990) /* PaletteBase */
     , (800491,   7,  268437241) /* ClothingBase */
     , (800491,   8,  100674658) /* Icon */
     , (800491,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800491,  6075,      2)  /* Legendary War Magic */
     , (800491,  6046,      2)  /* Legendary Creature Magic */
     , (800491,  6056,      2)  /* Legendary Item Magic */
     , (800491,  6060,      2)  /* Legendary Life Magic */
	 , (800491,  6074,      2)  /* Legendary Void Magic */
	 , (800491,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800491,  6102,      2)  /* Legendary Armor */;