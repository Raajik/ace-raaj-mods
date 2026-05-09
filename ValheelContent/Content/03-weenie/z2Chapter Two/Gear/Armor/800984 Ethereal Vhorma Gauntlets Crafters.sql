DELETE FROM `weenie` WHERE `class_Id` = 800984;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800984, 'Ethereal Vhorma Gautnlets Crafters', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800984,   1,          2) /* ItemType - Armor */
     , (800984,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800984,   4,      32768) /* ClothingPriority - Hands */
     , (800984,   5,        560) /* EncumbranceVal */
     , (800984,   9,         32) /* ValidLocations - HandWear */
     , (800984,  16,          1) /* ItemUseable - No */
     , (800984,  18,          1) /* UiEffects - Magical */
     , (800984,  19,         30) /* Value */
     , (800984,  27,         32) /* ArmorType - Metal */
     , (800984,  28,       2000) /* ArmorLevel */
     , (800984,  33,          1) /* Bonded - Bonded */
     , (800984,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800984, 106,        200) /* ItemSpellcraft */
     , (800984, 107,       1000) /* ItemCurMana */
     , (800984, 108,       1000) /* ItemMaxMana */
     , (800984, 109,        425) /* ItemDifficulty */
     , (800984, 114,          1) /* Attuned - Attuned */
     , (800984, 124,          3) /* Version */
     , (800984, 151,          2) /* HookType - Wall */
     , (800984, 158,          7) /* WieldRequirements - Level */
     , (800984, 159,          1) /* WieldSkillType - Axe */
     , (800984, 160,        325) /* WieldDifficulty */
     , (800984, 169,  151651588) /* TsysMutationData */
     , (800984, 265,         18) /* Defenders */
     , (800984, 370,         10) /* Damage */
     , (800984, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800984,  22, True ) /* Inscribable */
     , (800984, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800984,   5,  -0.033) /* ManaRate */
     , (800984,  12,     0.5) /* Shade */
     , (800984,  13,       2) /* ArmorModVsSlash */
     , (800984,  14,       2) /* ArmorModVsPierce */
     , (800984,  15,       2) /* ArmorModVsBludgeon */
     , (800984,  16,       2) /* ArmorModVsCold */
     , (800984,  17,       2) /* ArmorModVsFire */
     , (800984,  18,       2) /* ArmorModVsAcid */
     , (800984,  19,       2) /* ArmorModVsElectric */
     , (800984, 110,     1.1) /* BulkMod */
     , (800984, 111,     1.5) /* SizeMod */
     , (800984, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800984,   1, 'Ethereal Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800984,   1,   33554648) /* Setup */
     , (800984,   3,  536870932) /* SoundTable */
     , (800984,   6,   67108990) /* PaletteBase */
     , (800984,   7,  268437241) /* ClothingBase */
     , (800984,   8,  100674658) /* Icon */
     , (800984,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800984,  6075,      2)  /* Legendary War Magic */
     , (800984,  6046,      2)  /* Legendary Creature Magic */
     , (800984,  6056,      2)  /* Legendary Item Magic */
     , (800984,  6060,      2)  /* Legendary Life Magic */
	 , (800984,  6074,      2)  /* Legendary Void Magic */
	 , (800984,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800984,  6102,      2)  /* Legendary Armor */;