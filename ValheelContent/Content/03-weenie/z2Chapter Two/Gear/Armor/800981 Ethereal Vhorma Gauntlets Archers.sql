DELETE FROM `weenie` WHERE `class_Id` = 800981;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800981, 'Ethereal Vhorma Gautnlets Archers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800981,   1,          2) /* ItemType - Armor */
     , (800981,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800981,   4,      32768) /* ClothingPriority - Hands */
     , (800981,   5,        560) /* EncumbranceVal */
     , (800981,   9,         32) /* ValidLocations - HandWear */
     , (800981,  16,          1) /* ItemUseable - No */
     , (800981,  18,          1) /* UiEffects - Magical */
     , (800981,  19,         30) /* Value */
     , (800981,  27,         32) /* ArmorType - Metal */
     , (800981,  28,       2000) /* ArmorLevel */
     , (800981,  33,          1) /* Bonded - Bonded */
     , (800981,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800981, 106,        200) /* ItemSpellcraft */
     , (800981, 107,       1000) /* ItemCurMana */
     , (800981, 108,       1000) /* ItemMaxMana */
     , (800981, 109,        425) /* ItemDifficulty */
     , (800981, 114,          1) /* Attuned - Attuned */
     , (800981, 124,          3) /* Version */
     , (800981, 151,          2) /* HookType - Wall */
     , (800981, 158,          7) /* WieldRequirements - Level */
     , (800981, 159,          1) /* WieldSkillType - Axe */
     , (800981, 160,        325) /* WieldDifficulty */
     , (800981, 169,  151651588) /* TsysMutationData */
     , (800981, 265,         15) /* Defenders */
     , (800981, 370,         10) /* Damage */
     , (800981, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800981,  22, True ) /* Inscribable */
     , (800981, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800981,   5,  -0.033) /* ManaRate */
     , (800981,  12,     0.5) /* Shade */
     , (800981,  13,       2) /* ArmorModVsSlash */
     , (800981,  14,       2) /* ArmorModVsPierce */
     , (800981,  15,       2) /* ArmorModVsBludgeon */
     , (800981,  16,       2) /* ArmorModVsCold */
     , (800981,  17,       2) /* ArmorModVsFire */
     , (800981,  18,       2) /* ArmorModVsAcid */
     , (800981,  19,       2) /* ArmorModVsElectric */
     , (800981, 110,     1.1) /* BulkMod */
     , (800981, 111,     1.5) /* SizeMod */
     , (800981, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800981,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800981,   1,   33554648) /* Setup */
     , (800981,   3,  536870932) /* SoundTable */
     , (800981,   6,   67108990) /* PaletteBase */
     , (800981,   7,  268437241) /* ClothingBase */
     , (800981,   8,  100674658) /* Icon */
     , (800981,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800981,  6075,      2)  /* Legendary War Magic */
     , (800981,  6046,      2)  /* Legendary Creature Magic */
     , (800981,  6056,      2)  /* Legendary Item Magic */
     , (800981,  6060,      2)  /* Legendary Life Magic */
	 , (800981,  6074,      2)  /* Legendary Void Magic */
	 , (800981,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800981,  6102,      2)  /* Legendary Armor */;