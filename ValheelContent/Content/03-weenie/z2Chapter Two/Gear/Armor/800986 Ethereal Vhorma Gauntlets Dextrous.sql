DELETE FROM `weenie` WHERE `class_Id` = 800986;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800986, 'Ethereal Vhorma Gautnlets Dextrous', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800986,   1,          2) /* ItemType - Armor */
     , (800986,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800986,   4,      32768) /* ClothingPriority - Hands */
     , (800986,   5,        560) /* EncumbranceVal */
     , (800986,   9,         32) /* ValidLocations - HandWear */
     , (800986,  16,          1) /* ItemUseable - No */
     , (800986,  18,          1) /* UiEffects - Magical */
     , (800986,  19,         30) /* Value */
     , (800986,  27,         32) /* ArmorType - Metal */
     , (800986,  28,       2000) /* ArmorLevel */
     , (800986,  33,          1) /* Bonded - Bonded */
     , (800986,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800986, 106,        200) /* ItemSpellcraft */
     , (800986, 107,       1000) /* ItemCurMana */
     , (800986, 108,       1000) /* ItemMaxMana */
     , (800986, 109,        425) /* ItemDifficulty */
     , (800986, 114,          1) /* Attuned - Attuned */
     , (800986, 124,          3) /* Version */
     , (800986, 151,          2) /* HookType - Wall */
     , (800986, 158,          7) /* WieldRequirements - Level */
     , (800986, 159,          1) /* WieldSkillType - Axe */
     , (800986, 160,        325) /* WieldDifficulty */
     , (800986, 169,  151651588) /* TsysMutationData */
     , (800986, 265,         20) /* Defenders */
     , (800986, 370,         10) /* Damage */
     , (800986, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800986,  22, True ) /* Inscribable */
     , (800986, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800986,   5,  -0.033) /* ManaRate */
     , (800986,  12,     0.5) /* Shade */
     , (800986,  13,       2) /* ArmorModVsSlash */
     , (800986,  14,       2) /* ArmorModVsPierce */
     , (800986,  15,       2) /* ArmorModVsBludgeon */
     , (800986,  16,       2) /* ArmorModVsCold */
     , (800986,  17,       2) /* ArmorModVsFire */
     , (800986,  18,       2) /* ArmorModVsAcid */
     , (800986,  19,       2) /* ArmorModVsElectric */
     , (800986, 110,     1.1) /* BulkMod */
     , (800986, 111,     1.5) /* SizeMod */
     , (800986, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800986,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800986,   1,   33554648) /* Setup */
     , (800986,   3,  536870932) /* SoundTable */
     , (800986,   6,   67108990) /* PaletteBase */
     , (800986,   7,  268437241) /* ClothingBase */
     , (800986,   8,  100674658) /* Icon */
     , (800986,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800986,  6075,      2)  /* Legendary War Magic */
     , (800986,  6046,      2)  /* Legendary Creature Magic */
     , (800986,  6056,      2)  /* Legendary Item Magic */
     , (800986,  6060,      2)  /* Legendary Life Magic */
	 , (800986,  6074,      2)  /* Legendary Void Magic */
	 , (800986,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800986,  6102,      2)  /* Legendary Armor */;