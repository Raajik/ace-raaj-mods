DELETE FROM `weenie` WHERE `class_Id` = 800269;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800269, 'valheel gauntlets', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800269,   1,          2) /* ItemType - Armor */
     , (800269,   3,          4) /* PaletteTemplate - Brown */
     , (800269,   4,      32768) /* ClothingPriority - Hands */
     , (800269,   5,        300) /* EncumbranceVal */
     , (800269,   8,         90) /* Mass */
     , (800269,   9,         32) /* ValidLocations - HandWear */
     , (800269,  16,          1) /* ItemUseable - No */
     , (800269,  19,          1) /* Value */
     , (800269,  27,          2) /* ArmorType - Leather */
     , (800269,  28,        280) /* ArmorLevel */
     , (800269,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800269, 106,        325) /* ItemSpellcraft */
     , (800269, 107,       3200) /* ItemCurMana */
     , (800269, 108,       3200) /* ItemMaxMana */
     , (800269, 151,          2) /* HookType - Wall */
     , (800269, 158,          7) /* WieldRequirements - Level */
     , (800269, 159,          1) /* WieldSkillType - Axe */
     , (800269, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800269,  11, True ) /* IgnoreCollisions */
     , (800269,  13, True ) /* Ethereal */
     , (800269,  14, True ) /* GravityStatus */
     , (800269,  19, True ) /* Attackable */
     , (800269,  22, True ) /* Inscribable */
     , (800269,  91, False) /* Retained */
     , (800269, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800269,   5,  -0.033) /* ManaRate */
     , (800269,  12,    0.66) /* Shade */
     , (800269,  13,       1) /* ArmorModVsSlash */
     , (800269,  14,     1.1) /* ArmorModVsPierce */
     , (800269,  15,     1.1) /* ArmorModVsBludgeon */
     , (800269,  16,     1.1) /* ArmorModVsCold */
     , (800269,  17,     0.9) /* ArmorModVsFire */
     , (800269,  18,     0.9) /* ArmorModVsAcid */
     , (800269,  19,     0.9) /* ArmorModVsElectric */
     , (800269, 110,    1.67) /* BulkMod */
     , (800269, 111,       1) /* SizeMod */
     , (800269, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800269,   1, 'ValHeel Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800269,   1,   33559442) /* Setup */
     , (800269,   3,  536870932) /* SoundTable */
     , (800269,   6,   67108990) /* PaletteBase */
     , (800269,   7,  268436982) /* ClothingBase */
     , (800269,   8,  100686894) /* Icon */
     , (800269,  22,  872415275) /* PhysicsEffectTable */
     , (800269,  36,  234881042) /* MutateFilter */
     , (800269,  46,  939524146) /* TsysMutationFilter */
     , (800269,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800269,  3963,      2)  /* Epic Coordination */
     , (800269,  4407,      2)  /* Incantation of Impenetrability */
     , (800269,  4694,      2)  /* Epic Healing Prowess */;
