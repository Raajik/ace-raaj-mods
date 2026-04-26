DELETE FROM `weenie` WHERE `class_Id` = 800980;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800980, 'Ethereal Vhorma Gautnlets Adepts', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800980,   1,          2) /* ItemType - Armor */
     , (800980,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800980,   4,      32768) /* ClothingPriority - Hands */
     , (800980,   5,        560) /* EncumbranceVal */
     , (800980,   9,         32) /* ValidLocations - HandWear */
     , (800980,  16,          1) /* ItemUseable - No */
     , (800980,  18,          1) /* UiEffects - Magical */
     , (800980,  19,         30) /* Value */
     , (800980,  27,         32) /* ArmorType - Metal */
     , (800980,  28,       2000) /* ArmorLevel */
     , (800980,  33,          1) /* Bonded - Bonded */
     , (800980,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800980, 106,        200) /* ItemSpellcraft */
     , (800980, 107,       1000) /* ItemCurMana */
     , (800980, 108,       1000) /* ItemMaxMana */
     , (800980, 109,        425) /* ItemDifficulty */
     , (800980, 114,          1) /* Attuned - Attuned */
     , (800980, 124,          3) /* Version */
     , (800980, 151,          2) /* HookType - Wall */
     , (800980, 158,          7) /* WieldRequirements - Level */
     , (800980, 159,          1) /* WieldSkillType - Axe */
     , (800980, 160,        325) /* WieldDifficulty */
     , (800980, 169,  151651588) /* TsysMutationData */
     , (800980, 265,         14) /* Defenders */
     , (800980, 370,         10) /* Damage */
     , (800980, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800980,  22, True ) /* Inscribable */
     , (800980, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800980,   5,  -0.033) /* ManaRate */
     , (800980,  12,     0.5) /* Shade */
     , (800980,  13,       2) /* ArmorModVsSlash */
     , (800980,  14,       2) /* ArmorModVsPierce */
     , (800980,  15,       2) /* ArmorModVsBludgeon */
     , (800980,  16,       2) /* ArmorModVsCold */
     , (800980,  17,       2) /* ArmorModVsFire */
     , (800980,  18,       2) /* ArmorModVsAcid */
     , (800980,  19,       2) /* ArmorModVsElectric */
     , (800980, 110,     1.1) /* BulkMod */
     , (800980, 111,     1.5) /* SizeMod */
     , (800980, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800980,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800980,   1,   33554648) /* Setup */
     , (800980,   3,  536870932) /* SoundTable */
     , (800980,   6,   67108990) /* PaletteBase */
     , (800980,   7,  268437241) /* ClothingBase */
     , (800980,   8,  100674658) /* Icon */
     , (800980,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800980,  6075,      2)  /* Legendary War Magic */
     , (800980,  6046,      2)  /* Legendary Creature Magic */
     , (800980,  6056,      2)  /* Legendary Item Magic */
     , (800980,  6060,      2)  /* Legendary Life Magic */
	 , (800980,  6074,      2)  /* Legendary Void Magic */
	 , (800980,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800980,  6102,      2)  /* Legendary Armor */;