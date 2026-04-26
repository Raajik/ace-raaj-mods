DELETE FROM `weenie` WHERE `class_Id` = 800987;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800987, 'Ethereal Vhorma Gautnlets Wise', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800987,   1,          2) /* ItemType - Armor */
     , (800987,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800987,   4,      32768) /* ClothingPriority - Hands */
     , (800987,   5,        560) /* EncumbranceVal */
     , (800987,   9,         32) /* ValidLocations - HandWear */
     , (800987,  16,          1) /* ItemUseable - No */
     , (800987,  18,          1) /* UiEffects - Magical */
     , (800987,  19,         30) /* Value */
     , (800987,  27,         32) /* ArmorType - Metal */
     , (800987,  28,       2000) /* ArmorLevel */
     , (800987,  33,          1) /* Bonded - Bonded */
     , (800987,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800987, 106,        200) /* ItemSpellcraft */
     , (800987, 107,       1000) /* ItemCurMana */
     , (800987, 108,       1000) /* ItemMaxMana */
     , (800987, 109,        425) /* ItemDifficulty */
     , (800987, 114,          1) /* Attuned - Attuned */
     , (800987, 124,          3) /* Version */
     , (800987, 151,          2) /* HookType - Wall */
     , (800987, 158,          7) /* WieldRequirements - Level */
     , (800987, 159,          1) /* WieldSkillType - Axe */
     , (800987, 160,        325) /* WieldDifficulty */
     , (800987, 169,  151651588) /* TsysMutationData */
     , (800987, 265,         21) /* Defenders */
     , (800987, 370,         10) /* Damage */
     , (800987, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800987,  22, True ) /* Inscribable */
     , (800987, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800987,   5,  -0.033) /* ManaRate */
     , (800987,  12,     0.5) /* Shade */
     , (800987,  13,       2) /* ArmorModVsSlash */
     , (800987,  14,       2) /* ArmorModVsPierce */
     , (800987,  15,       2) /* ArmorModVsBludgeon */
     , (800987,  16,       2) /* ArmorModVsCold */
     , (800987,  17,       2) /* ArmorModVsFire */
     , (800987,  18,       2) /* ArmorModVsAcid */
     , (800987,  19,       2) /* ArmorModVsElectric */
     , (800987, 110,     1.1) /* BulkMod */
     , (800987, 111,     1.5) /* SizeMod */
     , (800987, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800987,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800987,   1,   33554648) /* Setup */
     , (800987,   3,  536870932) /* SoundTable */
     , (800987,   6,   67108990) /* PaletteBase */
     , (800987,   7,  268437241) /* ClothingBase */
     , (800987,   8,  100674658) /* Icon */
     , (800987,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800987,  6075,      2)  /* Legendary War Magic */
     , (800987,  6046,      2)  /* Legendary Creature Magic */
     , (800987,  6056,      2)  /* Legendary Item Magic */
     , (800987,  6060,      2)  /* Legendary Life Magic */
	 , (800987,  6074,      2)  /* Legendary Void Magic */
	 , (800987,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800987,  6102,      2)  /* Legendary Armor */;