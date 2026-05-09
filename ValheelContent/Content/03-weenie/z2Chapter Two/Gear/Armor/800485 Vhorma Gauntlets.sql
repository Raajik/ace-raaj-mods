DELETE FROM `weenie` WHERE `class_Id` = 800485;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800485, 'Vhorma Gautnlets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800485,   1,          2) /* ItemType - Armor */
     , (800485,   3,         86) /* PaletteTemplate - DyeSpringBlack */
     , (800485,   4,      32768) /* ClothingPriority - Hands */
     , (800485,   5,        560) /* EncumbranceVal */
     , (800485,   9,         32) /* ValidLocations - HandWear */
     , (800485,  16,          1) /* ItemUseable - No */
     , (800485,  19,         500) /* Value */
     , (800485,  27,         32) /* ArmorType - Metal */
     , (800485,  28,       1725) /* ArmorLevel */
     , (800485,  33,          1) /* Bonded - Bonded */
     , (800485,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800485, 106,        200) /* ItemSpellcraft */
     , (800485, 107,       1000) /* ItemCurMana */
     , (800485, 108,       1000) /* ItemMaxMana */
     , (800485, 109,        400) /* ItemDifficulty */
     , (800485, 114,          1) /* Attuned - Attuned */
     , (800485, 124,          3) /* Version */
     , (800485, 151,          2) /* HookType - Wall */
     , (800485, 158,          7) /* WieldRequirements - Level */
     , (800485, 159,          1) /* WieldSkillType - Axe */
     , (800485, 160,        300) /* WieldDifficulty */
     , (800485, 169,  151651588) /* TsysMutationData */
     , (800485, 265,         24) /* Defenders */
     , (800485, 370,          6) /* Damage */
     , (800485, 379,         12) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800485,  22, True ) /* Inscribable */
     , (800485, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800485,   5,  -0.033) /* ManaRate */
     , (800485,  12,     0.5) /* Shade */
     , (800485,  13,       2) /* ArmorModVsSlash */
     , (800485,  14,       2) /* ArmorModVsPierce */
     , (800485,  15,       2) /* ArmorModVsBludgeon */
     , (800485,  16,       2) /* ArmorModVsCold */
     , (800485,  17,       2) /* ArmorModVsFire */
     , (800485,  18,       2) /* ArmorModVsAcid */
     , (800485,  19,       2) /* ArmorModVsElectric */
     , (800485, 110,     1.1) /* BulkMod */
     , (800485, 111,     1.5) /* SizeMod */
     , (800485, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800485,   1, 'Vhorma Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800485,   1,   33554648) /* Setup */
     , (800485,   3,  536870932) /* SoundTable */
     , (800485,   6,   67108990) /* PaletteBase */
     , (800485,   7,  268437241) /* ClothingBase */
     , (800485,   8,  100674658) /* Icon */
     , (800485,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800485,  6075,      2)  /* Legendary War Magic */
     , (800485,  6046,      2)  /* Legendary Creature Magic */
     , (800485,  6056,      2)  /* Legendary Item Magic */
     , (800485,  6060,      2)  /* Legendary Life Magic */
	 , (800485,  6074,      2)  /* Legendary Void Magic */
	 , (800485,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800485,  6102,      2)  /* Legendary Armor */;