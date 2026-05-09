DELETE FROM `weenie` WHERE `class_Id` = 800364;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800364, 'Tradewind''s Path Gauntlets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800364,   1,          2) /* ItemType - Armor */
     , (800364,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800364,   4,      32768) /* ClothingPriority - Hands */
     , (800364,   5,        560) /* EncumbranceVal */
     , (800364,   9,         32) /* ValidLocations - HandWear */
     , (800364,  16,          1) /* ItemUseable - No */
     , (800364,  19,          25) /* Value */
     , (800364,  27,         32) /* ArmorType - Metal */
     , (800364,  28,        1500) /* ArmorLevel */
     , (800364,  33,          1) /* Bonded - Bonded */
     , (800364,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800364, 106,        200) /* ItemSpellcraft */
     , (800364, 107,       1000) /* ItemCurMana */
     , (800364, 108,       1000) /* ItemMaxMana */
     , (800364, 109,        300) /* ItemDifficulty */
     , (800364, 114,          1) /* Attuned - Attuned */
     , (800364, 124,          3) /* Version */
     , (800364, 151,          2) /* HookType - Wall */
     , (800364, 158,          7) /* WieldRequirements - Level */
     , (800364, 159,          1) /* WieldSkillType - Axe */
     , (800364, 160,        300) /* WieldDifficulty */
     , (800364, 169,  151651588) /* TsysMutationData */
     , (800364, 265,         24) /* Defenders */
     , (800364, 370,          3) /* Damage */
     , (800364, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800364,  22, True ) /* Inscribable */
     , (800364, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800364,   5,  -0.033) /* ManaRate */
     , (800364,  12,     0.5) /* Shade */
     , (800364,  13,       2) /* ArmorModVsSlash */
     , (800364,  14,       2) /* ArmorModVsPierce */
     , (800364,  15,       2) /* ArmorModVsBludgeon */
     , (800364,  16,       2) /* ArmorModVsCold */
     , (800364,  17,       2) /* ArmorModVsFire */
     , (800364,  18,       2) /* ArmorModVsAcid */
     , (800364,  19,       2) /* ArmorModVsElectric */
     , (800364, 110,     1.1) /* BulkMod */
     , (800364, 111,     1.5) /* SizeMod */
     , (800364, 165,       2) /* ArmorModVsNether */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800364,   1, 'Tradewind''s Path Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800364,   1,   33554648) /* Setup */
     , (800364,   3,  536870932) /* SoundTable */
     , (800364,   6,   67108990) /* PaletteBase */
     , (800364,   7,  268437241) /* ClothingBase */
     , (800364,   8,  100674658) /* Icon */
     , (800364,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800364,  6075,      2)  /* Legendary War Magic */
     , (800364,  6046,      2)  /* Legendary Creature Magic */
     , (800364,  6056,      2)  /* Legendary Item Magic */
     , (800364,  6060,      2)  /* Legendary Life Magic */
	 , (800364,  6074,      2)  /* Legendary Void Magic */
	 , (800364,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800364,  6102,      2)  /* Legendary Armor */;