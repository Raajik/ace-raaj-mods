DELETE FROM `weenie` WHERE `class_Id` = 800988;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800988, 'Ethereal Vhorma Gautnlets Swift', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800988,   1,          2) /* ItemType - Armor */
     , (800988,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800988,   4,      32768) /* ClothingPriority - Hands */
     , (800988,   5,        560) /* EncumbranceVal */
     , (800988,   9,         32) /* ValidLocations - HandWear */
     , (800988,  16,          1) /* ItemUseable - No */
     , (800988,  18,          1) /* UiEffects - Magical */
     , (800988,  19,         30) /* Value */
     , (800988,  27,         32) /* ArmorType - Metal */
     , (800988,  28,       2000) /* ArmorLevel */
     , (800988,  33,          1) /* Bonded - Bonded */
     , (800988,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800988, 106,        200) /* ItemSpellcraft */
     , (800988, 107,       1000) /* ItemCurMana */
     , (800988, 108,       1000) /* ItemMaxMana */
     , (800988, 109,        425) /* ItemDifficulty */
     , (800988, 114,          1) /* Attuned - Attuned */
     , (800988, 124,          3) /* Version */
     , (800988, 151,          2) /* HookType - Wall */
     , (800988, 158,          7) /* WieldRequirements - Level */
     , (800988, 159,          1) /* WieldSkillType - Axe */
     , (800988, 160,        325) /* WieldDifficulty */
     , (800988, 169,  151651588) /* TsysMutationData */
     , (800988, 265,         22) /* Defenders */
     , (800988, 370,         10) /* Damage */
     , (800988, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800988,  22, True ) /* Inscribable */
     , (800988, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800988,   5,  -0.033) /* ManaRate */
     , (800988,  12,     0.5) /* Shade */
     , (800988,  13,       2) /* ArmorModVsSlash */
     , (800988,  14,       2) /* ArmorModVsPierce */
     , (800988,  15,       2) /* ArmorModVsBludgeon */
     , (800988,  16,       2) /* ArmorModVsCold */
     , (800988,  17,       2) /* ArmorModVsFire */
     , (800988,  18,       2) /* ArmorModVsAcid */
     , (800988,  19,       2) /* ArmorModVsElectric */
     , (800988, 110,     1.1) /* BulkMod */
     , (800988, 111,     1.5) /* SizeMod */
     , (800988, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800988,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800988,   1,   33554648) /* Setup */
     , (800988,   3,  536870932) /* SoundTable */
     , (800988,   6,   67108990) /* PaletteBase */
     , (800988,   7,  268437241) /* ClothingBase */
     , (800988,   8,  100674658) /* Icon */
     , (800988,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800988,  6075,      2)  /* Legendary War Magic */
     , (800988,  6046,      2)  /* Legendary Creature Magic */
     , (800988,  6056,      2)  /* Legendary Item Magic */
     , (800988,  6060,      2)  /* Legendary Life Magic */
	 , (800988,  6074,      2)  /* Legendary Void Magic */
	 , (800988,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800988,  6102,      2)  /* Legendary Armor */;