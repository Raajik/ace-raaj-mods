DELETE FROM `weenie` WHERE `class_Id` = 800271;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800271, 'ValHeel Bracers', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800271,   1,          2) /* ItemType - Armor */
     , (800271,   3,          4) /* PaletteTemplate - Brown */
     , (800271,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (800271,   5,        300) /* EncumbranceVal */
     , (800271,   8,         90) /* Mass */
     , (800271,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (800271,  16,          1) /* ItemUseable - No */
     , (800271,  19,          1) /* Value */
     , (800271,  27,          2) /* ArmorType - Leather */
     , (800271,  28,        280) /* ArmorLevel */
     , (800271,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800271, 106,        325) /* ItemSpellcraft */
     , (800271, 107,       6000) /* ItemCurMana */
     , (800271, 108,       6000) /* ItemMaxMana */
     , (800271, 151,          2) /* HookType - Wall */
     , (800271, 158,          7) /* WieldRequirements - Level */
     , (800271, 159,          1) /* WieldSkillType - Axe */
     , (800271, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800271,  11, True ) /* IgnoreCollisions */
     , (800271,  13, True ) /* Ethereal */
     , (800271,  14, True ) /* GravityStatus */
     , (800271,  19, True ) /* Attackable */
     , (800271,  22, True ) /* Inscribable */
     , (800271,  91, False) /* Retained */
     , (800271, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800271,   5,  -0.033) /* ManaRate */
     , (800271,  12,    0.66) /* Shade */
     , (800271,  13,     1.1) /* ArmorModVsSlash */
     , (800271,  14,     1.3) /* ArmorModVsPierce */
     , (800271,  15,     1.1) /* ArmorModVsBludgeon */
     , (800271,  16,     1.1) /* ArmorModVsCold */
     , (800271,  17,     0.9) /* ArmorModVsFire */
     , (800271,  18,     0.9) /* ArmorModVsAcid */
     , (800271,  19,     0.9) /* ArmorModVsElectric */
     , (800271, 110,    1.67) /* BulkMod */
     , (800271, 111,       1) /* SizeMod */
     , (800271, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800271,   1, 'ValHeel Bracers') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800271,   1,   33559440) /* Setup */
     , (800271,   3,  536870932) /* SoundTable */
     , (800271,   6,   67108990) /* PaletteBase */
     , (800271,   7,  268436980) /* ClothingBase */
     , (800271,   8,  100686890) /* Icon */
     , (800271,  22,  872415275) /* PhysicsEffectTable */
     , (800271,  36,  234881042) /* MutateFilter */
     , (800271,  46,  939524146) /* TsysMutationFilter */
     , (800271,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800271,  3965,      2)  /* Epic Strength */
     , (800271,  4407,      2)  /* Incantation of Impenetrability */
     , (800271,  4692,      2)  /* Epic Fealty */;
