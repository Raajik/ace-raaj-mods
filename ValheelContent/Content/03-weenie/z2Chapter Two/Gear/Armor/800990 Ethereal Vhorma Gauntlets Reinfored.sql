DELETE FROM `weenie` WHERE `class_Id` = 800990;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800990, 'Ethereal Vhorma Gautnlets Reinforced', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800990,   1,          2) /* ItemType - Armor */
     , (800990,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800990,   4,      32768) /* ClothingPriority - Hands */
     , (800990,   5,        560) /* EncumbranceVal */
     , (800990,   9,         32) /* ValidLocations - HandWear */
     , (800990,  16,          1) /* ItemUseable - No */
     , (800990,  18,          1) /* UiEffects - Magical */
     , (800990,  19,         30) /* Value */
     , (800990,  27,         32) /* ArmorType - Metal */
     , (800990,  28,       2000) /* ArmorLevel */
     , (800990,  33,          1) /* Bonded - Bonded */
     , (800990,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800990, 106,        200) /* ItemSpellcraft */
     , (800990, 107,       1000) /* ItemCurMana */
     , (800990, 108,       1000) /* ItemMaxMana */
     , (800990, 109,        425) /* ItemDifficulty */
     , (800990, 114,          1) /* Attuned - Attuned */
     , (800990, 124,          3) /* Version */
     , (800990, 151,          2) /* HookType - Wall */
     , (800990, 158,          7) /* WieldRequirements - Level */
     , (800990, 159,          1) /* WieldSkillType - Axe */
     , (800990, 160,        325) /* WieldDifficulty */
     , (800990, 169,  151651588) /* TsysMutationData */
     , (800990, 265,         24) /* Defenders */
     , (800990, 370,         10) /* Damage */
     , (800990, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800990,  22, True ) /* Inscribable */
     , (800990, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800990,   5,  -0.033) /* ManaRate */
     , (800990,  12,     0.5) /* Shade */
     , (800990,  13,       2) /* ArmorModVsSlash */
     , (800990,  14,       2) /* ArmorModVsPierce */
     , (800990,  15,       2) /* ArmorModVsBludgeon */
     , (800990,  16,       2) /* ArmorModVsCold */
     , (800990,  17,       2) /* ArmorModVsFire */
     , (800990,  18,       2) /* ArmorModVsAcid */
     , (800990,  19,       2) /* ArmorModVsElectric */
     , (800990, 110,     1.1) /* BulkMod */
     , (800990, 111,     1.5) /* SizeMod */
     , (800990, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800990,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800990,   1,   33554648) /* Setup */
     , (800990,   3,  536870932) /* SoundTable */
     , (800990,   6,   67108990) /* PaletteBase */
     , (800990,   7,  268437241) /* ClothingBase */
     , (800990,   8,  100674658) /* Icon */
     , (800990,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800990,  6075,      2)  /* Legendary War Magic */
     , (800990,  6046,      2)  /* Legendary Creature Magic */
     , (800990,  6056,      2)  /* Legendary Item Magic */
     , (800990,  6060,      2)  /* Legendary Life Magic */
	 , (800990,  6074,      2)  /* Legendary Void Magic */
	 , (800990,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800990,  6102,      2)  /* Legendary Armor */;