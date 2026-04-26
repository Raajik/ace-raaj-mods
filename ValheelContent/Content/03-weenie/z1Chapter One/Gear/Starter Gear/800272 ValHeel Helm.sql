DELETE FROM `weenie` WHERE `class_Id` = 800272;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800272, 'ValHeel Helm', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800272,   1,          2) /* ItemType - Armor */
     , (800272,   3,          4) /* PaletteTemplate - Brown */
     , (800272,   4,      16384) /* ClothingPriority - Head */
     , (800272,   5,        100) /* EncumbranceVal */
     , (800272,   8,         90) /* Mass */
     , (800272,   9,          1) /* ValidLocations - HeadWear */
     , (800272,  16,          1) /* ItemUseable - No */
     , (800272,  19,          1) /* Value */
     , (800272,  27,          2) /* ArmorType - Leather */
     , (800272,  28,        280) /* ArmorLevel */
     , (800272,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800272, 106,        325) /* ItemSpellcraft */
     , (800272, 107,       6000) /* ItemCurMana */
     , (800272, 108,       6000) /* ItemMaxMana */
     , (800272, 151,          2) /* HookType - Wall */
     , (800272, 158,          7) /* WieldRequirements - Level */
     , (800272, 159,          1) /* WieldSkillType - Axe */
     , (800272, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800272,  11, True ) /* IgnoreCollisions */
     , (800272,  13, True ) /* Ethereal */
     , (800272,  14, True ) /* GravityStatus */
     , (800272,  19, True ) /* Attackable */
     , (800272,  22, True ) /* Inscribable */
     , (800272,  91, False) /* Retained */
     , (800272, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800272,   5,  -0.033) /* ManaRate */
     , (800272,  12,    0.66) /* Shade */
     , (800272,  13,     1.1) /* ArmorModVsSlash */
     , (800272,  14,     1.3) /* ArmorModVsPierce */
     , (800272,  15,     1.1) /* ArmorModVsBludgeon */
     , (800272,  16,     1.1) /* ArmorModVsCold */
     , (800272,  17,     0.9) /* ArmorModVsFire */
     , (800272,  18,     0.9) /* ArmorModVsAcid */
     , (800272,  19,     0.9) /* ArmorModVsElectric */
     , (800272, 110,    1.67) /* BulkMod */
     , (800272, 111,       1) /* SizeMod */
     , (800272, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800272,   1, 'ValHeel Helm') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800272,   1,   33559428) /* Setup */
     , (800272,   3,  536870932) /* SoundTable */
     , (800272,   6,   67108990) /* PaletteBase */
     , (800272,   7,  268436967) /* ClothingBase */
     , (800272,   8,  100686863) /* Icon */
     , (800272,  22,  872415275) /* PhysicsEffectTable */
     , (800272,  36,  234881042) /* MutateFilter */
     , (800272,  46,  939524146) /* TsysMutationFilter */
     , (800272,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800272,  3964,      2)  /* Epic Focus */
     , (800272,  4407,      2)  /* Incantation of Impenetrability */
     , (800272,  4705,      2)  /* Epic Mana Conversion Prowess */;
