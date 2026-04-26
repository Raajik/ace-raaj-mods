DELETE FROM `weenie` WHERE `class_Id` = 800985;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800985, 'Ethereal Vhorma Gautnlets Hearty', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800985,   1,          2) /* ItemType - Armor */
     , (800985,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800985,   4,      32768) /* ClothingPriority - Hands */
     , (800985,   5,        560) /* EncumbranceVal */
     , (800985,   9,         32) /* ValidLocations - HandWear */
     , (800985,  16,          1) /* ItemUseable - No */
     , (800985,  18,          1) /* UiEffects - Magical */
     , (800985,  19,         30) /* Value */
     , (800985,  27,         32) /* ArmorType - Metal */
     , (800985,  28,       2000) /* ArmorLevel */
     , (800985,  33,          1) /* Bonded - Bonded */
     , (800985,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800985, 106,        200) /* ItemSpellcraft */
     , (800985, 107,       1000) /* ItemCurMana */
     , (800985, 108,       1000) /* ItemMaxMana */
     , (800985, 109,        425) /* ItemDifficulty */
     , (800985, 114,          1) /* Attuned - Attuned */
     , (800985, 124,          3) /* Version */
     , (800985, 151,          2) /* HookType - Wall */
     , (800985, 158,          7) /* WieldRequirements - Level */
     , (800985, 159,          1) /* WieldSkillType - Axe */
     , (800985, 160,        325) /* WieldDifficulty */
     , (800985, 169,  151651588) /* TsysMutationData */
     , (800985, 265,         19) /* Defenders */
     , (800985, 370,         10) /* Damage */
     , (800985, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800985,  22, True ) /* Inscribable */
     , (800985, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800985,   5,  -0.033) /* ManaRate */
     , (800985,  12,     0.5) /* Shade */
     , (800985,  13,       2) /* ArmorModVsSlash */
     , (800985,  14,       2) /* ArmorModVsPierce */
     , (800985,  15,       2) /* ArmorModVsBludgeon */
     , (800985,  16,       2) /* ArmorModVsCold */
     , (800985,  17,       2) /* ArmorModVsFire */
     , (800985,  18,       2) /* ArmorModVsAcid */
     , (800985,  19,       2) /* ArmorModVsElectric */
     , (800985, 110,     1.1) /* BulkMod */
     , (800985, 111,     1.5) /* SizeMod */
     , (800985, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800985,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800985,   1,   33554648) /* Setup */
     , (800985,   3,  536870932) /* SoundTable */
     , (800985,   6,   67108990) /* PaletteBase */
     , (800985,   7,  268437241) /* ClothingBase */
     , (800985,   8,  100674658) /* Icon */
     , (800985,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800985,  6075,      2)  /* Legendary War Magic */
     , (800985,  6046,      2)  /* Legendary Creature Magic */
     , (800985,  6056,      2)  /* Legendary Item Magic */
     , (800985,  6060,      2)  /* Legendary Life Magic */
	 , (800985,  6074,      2)  /* Legendary Void Magic */
	 , (800985,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800985,  6102,      2)  /* Legendary Armor */;