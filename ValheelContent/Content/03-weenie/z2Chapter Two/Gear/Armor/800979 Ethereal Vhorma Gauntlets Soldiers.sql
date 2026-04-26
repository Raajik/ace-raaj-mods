DELETE FROM `weenie` WHERE `class_Id` = 800979;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800979, 'Ethereal Vhorma Gautnlets Soldiers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800979,   1,          2) /* ItemType - Armor */
     , (800979,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800979,   4,      32768) /* ClothingPriority - Hands */
     , (800979,   5,        560) /* EncumbranceVal */
     , (800979,   9,         32) /* ValidLocations - HandWear */
     , (800979,  16,          1) /* ItemUseable - No */
     , (800979,  18,          1) /* UiEffects - Magical */
     , (800979,  19,         30) /* Value */
     , (800979,  27,         32) /* ArmorType - Metal */
     , (800979,  28,       2000) /* ArmorLevel */
     , (800979,  33,          1) /* Bonded - Bonded */
     , (800979,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800979, 106,        200) /* ItemSpellcraft */
     , (800979, 107,       1000) /* ItemCurMana */
     , (800979, 108,       1000) /* ItemMaxMana */
     , (800979, 109,        425) /* ItemDifficulty */
     , (800979, 114,          1) /* Attuned - Attuned */
     , (800979, 124,          3) /* Version */
     , (800979, 151,          2) /* HookType - Wall */
     , (800979, 158,          7) /* WieldRequirements - Level */
     , (800979, 159,          1) /* WieldSkillType - Axe */
     , (800979, 160,        325) /* WieldDifficulty */
     , (800979, 169,  151651588) /* TsysMutationData */
     , (800979, 265,         13) /* Defenders */
     , (800979, 370,         10) /* Damage */
     , (800979, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800979,  22, True ) /* Inscribable */
     , (800979, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800979,   5,  -0.033) /* ManaRate */
     , (800979,  12,     0.5) /* Shade */
     , (800979,  13,       2) /* ArmorModVsSlash */
     , (800979,  14,       2) /* ArmorModVsPierce */
     , (800979,  15,       2) /* ArmorModVsBludgeon */
     , (800979,  16,       2) /* ArmorModVsCold */
     , (800979,  17,       2) /* ArmorModVsFire */
     , (800979,  18,       2) /* ArmorModVsAcid */
     , (800979,  19,       2) /* ArmorModVsElectric */
     , (800979, 110,     1.1) /* BulkMod */
     , (800979, 111,     1.5) /* SizeMod */
     , (800979, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800979,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800979,   1,   33554648) /* Setup */
     , (800979,   3,  536870932) /* SoundTable */
     , (800979,   6,   67108990) /* PaletteBase */
     , (800979,   7,  268437241) /* ClothingBase */
     , (800979,   8,  100674658) /* Icon */
     , (800979,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800979,  6075,      2)  /* Legendary War Magic */
     , (800979,  6046,      2)  /* Legendary Creature Magic */
     , (800979,  6056,      2)  /* Legendary Item Magic */
     , (800979,  6060,      2)  /* Legendary Life Magic */
	 , (800979,  6074,      2)  /* Legendary Void Magic */
	 , (800979,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800979,  6102,      2)  /* Legendary Armor */;