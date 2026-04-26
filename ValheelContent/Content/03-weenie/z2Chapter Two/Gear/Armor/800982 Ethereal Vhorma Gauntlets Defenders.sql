DELETE FROM `weenie` WHERE `class_Id` = 800982;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800982, 'Ethereal Vhorma Gautnlets Defenders', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800982,   1,          2) /* ItemType - Armor */
     , (800982,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800982,   4,      32768) /* ClothingPriority - Hands */
     , (800982,   5,        560) /* EncumbranceVal */
     , (800982,   9,         32) /* ValidLocations - HandWear */
     , (800982,  16,          1) /* ItemUseable - No */
     , (800982,  18,          1) /* UiEffects - Magical */
     , (800982,  19,         30) /* Value */
     , (800982,  27,         32) /* ArmorType - Metal */
     , (800982,  28,       2000) /* ArmorLevel */
     , (800982,  33,          1) /* Bonded - Bonded */
     , (800982,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800982, 106,        200) /* ItemSpellcraft */
     , (800982, 107,       1000) /* ItemCurMana */
     , (800982, 108,       1000) /* ItemMaxMana */
     , (800982, 109,        425) /* ItemDifficulty */
     , (800982, 114,          1) /* Attuned - Attuned */
     , (800982, 124,          3) /* Version */
     , (800982, 151,          2) /* HookType - Wall */
     , (800982, 158,          7) /* WieldRequirements - Level */
     , (800982, 159,          1) /* WieldSkillType - Axe */
     , (800982, 160,        325) /* WieldDifficulty */
     , (800982, 169,  151651588) /* TsysMutationData */
     , (800982, 265,         16) /* Defenders */
     , (800982, 370,         10) /* Damage */
     , (800982, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800982,  22, True ) /* Inscribable */
     , (800982, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800982,   5,  -0.033) /* ManaRate */
     , (800982,  12,     0.5) /* Shade */
     , (800982,  13,       2) /* ArmorModVsSlash */
     , (800982,  14,       2) /* ArmorModVsPierce */
     , (800982,  15,       2) /* ArmorModVsBludgeon */
     , (800982,  16,       2) /* ArmorModVsCold */
     , (800982,  17,       2) /* ArmorModVsFire */
     , (800982,  18,       2) /* ArmorModVsAcid */
     , (800982,  19,       2) /* ArmorModVsElectric */
     , (800982, 110,     1.1) /* BulkMod */
     , (800982, 111,     1.5) /* SizeMod */
     , (800982, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800982,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800982,   1,   33554648) /* Setup */
     , (800982,   3,  536870932) /* SoundTable */
     , (800982,   6,   67108990) /* PaletteBase */
     , (800982,   7,  268437241) /* ClothingBase */
     , (800982,   8,  100674658) /* Icon */
     , (800982,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800982,  6075,      2)  /* Legendary War Magic */
     , (800982,  6046,      2)  /* Legendary Creature Magic */
     , (800982,  6056,      2)  /* Legendary Item Magic */
     , (800982,  6060,      2)  /* Legendary Life Magic */
	 , (800982,  6074,      2)  /* Legendary Void Magic */
	 , (800982,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800982,  6102,      2)  /* Legendary Armor */;