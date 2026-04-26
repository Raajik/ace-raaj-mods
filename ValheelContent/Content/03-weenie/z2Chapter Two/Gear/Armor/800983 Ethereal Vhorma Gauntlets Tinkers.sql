DELETE FROM `weenie` WHERE `class_Id` = 800983;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800983, 'Ethereal Vhorma Gautnlets Tinkers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800983,   1,          2) /* ItemType - Armor */
     , (800983,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800983,   4,      32768) /* ClothingPriority - Hands */
     , (800983,   5,        560) /* EncumbranceVal */
     , (800983,   9,         32) /* ValidLocations - HandWear */
     , (800983,  16,          1) /* ItemUseable - No */
     , (800983,  18,          1) /* UiEffects - Magical */
     , (800983,  19,         30) /* Value */
     , (800983,  27,         32) /* ArmorType - Metal */
     , (800983,  28,       2000) /* ArmorLevel */
     , (800983,  33,          1) /* Bonded - Bonded */
     , (800983,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800983, 106,        200) /* ItemSpellcraft */
     , (800983, 107,       1000) /* ItemCurMana */
     , (800983, 108,       1000) /* ItemMaxMana */
     , (800983, 109,        425) /* ItemDifficulty */
     , (800983, 114,          1) /* Attuned - Attuned */
     , (800983, 124,          3) /* Version */
     , (800983, 151,          2) /* HookType - Wall */
     , (800983, 158,          7) /* WieldRequirements - Level */
     , (800983, 159,          1) /* WieldSkillType - Axe */
     , (800983, 160,        325) /* WieldDifficulty */
     , (800983, 169,  151651588) /* TsysMutationData */
     , (800983, 265,         17) /* Defenders */
     , (800983, 370,         10) /* Damage */
     , (800983, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800983,  22, True ) /* Inscribable */
     , (800983, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800983,   5,  -0.033) /* ManaRate */
     , (800983,  12,     0.5) /* Shade */
     , (800983,  13,       2) /* ArmorModVsSlash */
     , (800983,  14,       2) /* ArmorModVsPierce */
     , (800983,  15,       2) /* ArmorModVsBludgeon */
     , (800983,  16,       2) /* ArmorModVsCold */
     , (800983,  17,       2) /* ArmorModVsFire */
     , (800983,  18,       2) /* ArmorModVsAcid */
     , (800983,  19,       2) /* ArmorModVsElectric */
     , (800983, 110,     1.1) /* BulkMod */
     , (800983, 111,     1.5) /* SizeMod */
     , (800983, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800983,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800983,   1,   33554648) /* Setup */
     , (800983,   3,  536870932) /* SoundTable */
     , (800983,   6,   67108990) /* PaletteBase */
     , (800983,   7,  268437241) /* ClothingBase */
     , (800983,   8,  100674658) /* Icon */
     , (800983,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800983,  6075,      2)  /* Legendary War Magic */
     , (800983,  6046,      2)  /* Legendary Creature Magic */
     , (800983,  6056,      2)  /* Legendary Item Magic */
     , (800983,  6060,      2)  /* Legendary Life Magic */
	 , (800983,  6074,      2)  /* Legendary Void Magic */
	 , (800983,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800983,  6102,      2)  /* Legendary Armor */;