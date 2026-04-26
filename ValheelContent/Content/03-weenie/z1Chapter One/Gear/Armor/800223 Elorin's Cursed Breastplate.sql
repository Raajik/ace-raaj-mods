DELETE FROM `weenie` WHERE `class_Id` = 800223;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800223, 'Elorin''s Cursed Breastplate', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800223,   1,          2) /* ItemType - Armor */
     , (800223,   3,         93) /* PaletteTemplate - Silver */
     , (800223,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (800223,   5,       1000) /* EncumbranceVal */
     , (800223,   8,       1200) /* Mass */
     , (800223,   9,        512) /* ValidLocations - ChestArmor */
     , (800223,  16,          1) /* ItemUseable - No */
     , (800223,  19,          10) /* Value */
     , (800223,  27,         32) /* ArmorType - Metal */
     , (800223,  28,        800) /* ArmorLevel */
     , (800223,  33,          1) /* Bonded - Bonded */
     , (800223,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800223, 106,        200) /* ItemSpellcraft */
     , (800223, 107,       1000) /* ItemCurMana */
     , (800223, 108,       1000) /* ItemMaxMana */
     , (800223, 114,          1) /* Attuned - Attuned */
     , (800223, 124,          3) /* Version */
     , (800223, 158,          7) /* WieldRequirements - Level */
     , (800223, 159,          1) /* WieldSkillType - Axe */
     , (800223, 160,        200) /* WieldDifficulty */
     , (800223, 169,  118097668) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800223,  22, True ) /* Inscribable */
     , (800223, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800223,  12,    0.33) /* Shade */
     , (800223,  13,     2) /* ArmorModVsSlash */
     , (800223,  14,       2) /* ArmorModVsPierce */
     , (800223,  15,       2) /* ArmorModVsBludgeon */
     , (800223,  16,     2) /* ArmorModVsCold */
     , (800223,  17,     2) /* ArmorModVsFire */
     , (800223,  18,     2) /* ArmorModVsAcid */
     , (800223,  19,     2) /* ArmorModVsElectric */
     , (800223, 110,     0.9) /* BulkMod */
     , (800223, 111,     1.3) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800223,   1, 'Elorin''s Cursed Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800223,   1,   33554642) /* Setup */
     , (800223,   3,  536870932) /* SoundTable */
     , (800223,   6,   67108990) /* PaletteBase */
     , (800223,   7,  268435848) /* ClothingBase */
     , (800223,   8,  100670403) /* Icon */
     , (800223,  22,  872415275) /* PhysicsEffectTable */
     , (800223,  36,  234881042) /* MutateFilter */
     , (800223,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800223,  6107,      2)  /* Legendary Strength */
     , (800223,  6104,      2)  /* Legendary Endurance */
     , (800223,  6106,      2)  /* Legendary Quickness */
     , (800223,  6095,      2)  /* Legendary Impenetrability */
	 , (800223,  6077,      2)  /* Legendary Health Gain */
	 , (800223,  6102,      2)  /* Legendary Armor */;