DELETE FROM `weenie` WHERE `class_Id` = 800275;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800275, 'ValHeel Girth', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800275,   1,          2) /* ItemType - Armor */
     , (800275,   3,          4) /* PaletteTemplate - Brown */
     , (800275,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (800275,   5,        900) /* EncumbranceVal */
     , (800275,   8,         90) /* Mass */
     , (800275,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (800275,  16,          1) /* ItemUseable - No */
     , (800275,  19,          1) /* Value */
     , (800275,  27,          2) /* ArmorType - Leather */
     , (800275,  28,        280) /* ArmorLevel */
     , (800275,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800275, 106,        325) /* ItemSpellcraft */
     , (800275, 107,       6000) /* ItemCurMana */
     , (800275, 108,       6000) /* ItemMaxMana */
     , (800275, 151,          2) /* HookType - Wall */
     , (800275, 158,          7) /* WieldRequirements - Level */
     , (800275, 159,          1) /* WieldSkillType - Axe */
     , (800275, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800275,  11, True ) /* IgnoreCollisions */
     , (800275,  13, True ) /* Ethereal */
     , (800275,  14, True ) /* GravityStatus */
     , (800275,  19, True ) /* Attackable */
     , (800275,  22, True ) /* Inscribable */
     , (800275, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800275,   5,  -0.033) /* ManaRate */
     , (800275,  12,    0.66) /* Shade */
     , (800275,  13,     1.1) /* ArmorModVsSlash */
     , (800275,  14,     1.3) /* ArmorModVsPierce */
     , (800275,  15,     1.1) /* ArmorModVsBludgeon */
     , (800275,  16,     1.1) /* ArmorModVsCold */
     , (800275,  17,     0.9) /* ArmorModVsFire */
     , (800275,  18,     0.9) /* ArmorModVsAcid */
     , (800275,  19,     0.9) /* ArmorModVsElectric */
     , (800275, 110,    1.67) /* BulkMod */
     , (800275, 111,       1) /* SizeMod */
     , (800275, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800275,   1, 'ValHeel Girth') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800275,   1,   33559433) /* Setup */
     , (800275,   3,  536870932) /* SoundTable */
     , (800275,   6,   67108990) /* PaletteBase */
     , (800275,   7,  268436973) /* ClothingBase */
     , (800275,   8,  100686876) /* Icon */
     , (800275,  22,  872415275) /* PhysicsEffectTable */
     , (800275,  36,  234881042) /* MutateFilter */
     , (800275,  46,  939524146) /* TsysMutationFilter */
     , (800275,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800275,  4407,      2)  /* Incantation of Impenetrability */
     , (800275,  4704,      2)  /* Epic Magic Resistance */
     , (800275,  4911,      2)  /* Epic Armor */;
