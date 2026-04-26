DELETE FROM `weenie` WHERE `class_Id` = 800989;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800989, 'Ethereal Vhorma Gautnlets Hardened', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800989,   1,          2) /* ItemType - Armor */
     , (800989,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800989,   4,      32768) /* ClothingPriority - Hands */
     , (800989,   5,        560) /* EncumbranceVal */
     , (800989,   9,         32) /* ValidLocations - HandWear */
     , (800989,  16,          1) /* ItemUseable - No */
     , (800989,  18,          1) /* UiEffects - Magical */
     , (800989,  19,         30) /* Value */
     , (800989,  27,         32) /* ArmorType - Metal */
     , (800989,  28,       2000) /* ArmorLevel */
     , (800989,  33,          1) /* Bonded - Bonded */
     , (800989,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800989, 106,        200) /* ItemSpellcraft */
     , (800989, 107,       1000) /* ItemCurMana */
     , (800989, 108,       1000) /* ItemMaxMana */
     , (800989, 109,        425) /* ItemDifficulty */
     , (800989, 114,          1) /* Attuned - Attuned */
     , (800989, 124,          3) /* Version */
     , (800989, 151,          2) /* HookType - Wall */
     , (800989, 158,          7) /* WieldRequirements - Level */
     , (800989, 159,          1) /* WieldSkillType - Axe */
     , (800989, 160,        325) /* WieldDifficulty */
     , (800989, 169,  151651588) /* TsysMutationData */
     , (800989, 265,         23) /* Defenders */
     , (800989, 370,         10) /* Damage */
     , (800989, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800989,  22, True ) /* Inscribable */
     , (800989, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800989,   5,  -0.033) /* ManaRate */
     , (800989,  12,     0.5) /* Shade */
     , (800989,  13,       2) /* ArmorModVsSlash */
     , (800989,  14,       2) /* ArmorModVsPierce */
     , (800989,  15,       2) /* ArmorModVsBludgeon */
     , (800989,  16,       2) /* ArmorModVsCold */
     , (800989,  17,       2) /* ArmorModVsFire */
     , (800989,  18,       2) /* ArmorModVsAcid */
     , (800989,  19,       2) /* ArmorModVsElectric */
     , (800989, 110,     1.1) /* BulkMod */
     , (800989, 111,     1.5) /* SizeMod */
     , (800989, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800989,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800989,   1,   33554648) /* Setup */
     , (800989,   3,  536870932) /* SoundTable */
     , (800989,   6,   67108990) /* PaletteBase */
     , (800989,   7,  268437241) /* ClothingBase */
     , (800989,   8,  100674658) /* Icon */
     , (800989,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800989,  6075,      2)  /* Legendary War Magic */
     , (800989,  6046,      2)  /* Legendary Creature Magic */
     , (800989,  6056,      2)  /* Legendary Item Magic */
     , (800989,  6060,      2)  /* Legendary Life Magic */
	 , (800989,  6074,      2)  /* Legendary Void Magic */
	 , (800989,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800989,  6102,      2)  /* Legendary Armor */;