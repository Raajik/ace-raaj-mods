DELETE FROM `weenie` WHERE `class_Id` = 800273;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800273, 'ValHeel Pauldrons', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800273,   1,          2) /* ItemType - Armor */
     , (800273,   3,          4) /* PaletteTemplate - Brown */
     , (800273,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (800273,   5,        450) /* EncumbranceVal */
     , (800273,   8,         90) /* Mass */
     , (800273,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (800273,  16,          1) /* ItemUseable - No */
     , (800273,  19,          1) /* Value */
     , (800273,  27,          2) /* ArmorType - Leather */
     , (800273,  28,        280) /* ArmorLevel */
     , (800273,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800273, 106,        325) /* ItemSpellcraft */
     , (800273, 107,       6000) /* ItemCurMana */
     , (800273, 108,       6000) /* ItemMaxMana */
     , (800273, 151,          2) /* HookType - Wall */
     , (800273, 158,          7) /* WieldRequirements - Level */
     , (800273, 159,          1) /* WieldSkillType - Axe */
     , (800273, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800273,  11, True ) /* IgnoreCollisions */
     , (800273,  13, True ) /* Ethereal */
     , (800273,  14, True ) /* GravityStatus */
     , (800273,  19, True ) /* Attackable */
     , (800273,  22, True ) /* Inscribable */
     , (800273,  91, False) /* Retained */
     , (800273, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800273,   5,  -0.033) /* ManaRate */
     , (800273,  12,    0.66) /* Shade */
     , (800273,  13,     1.1) /* ArmorModVsSlash */
     , (800273,  14,     1.3) /* ArmorModVsPierce */
     , (800273,  15,     1.1) /* ArmorModVsBludgeon */
     , (800273,  16,     1.1) /* ArmorModVsCold */
     , (800273,  17,     0.9) /* ArmorModVsFire */
     , (800273,  18,     0.9) /* ArmorModVsAcid */
     , (800273,  19,     0.9) /* ArmorModVsElectric */
     , (800273, 110,    1.67) /* BulkMod */
     , (800273, 111,       1) /* SizeMod */
     , (800273, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800273,   1, 'ValHeel Pauldrons') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800273,   1,   33559438) /* Setup */
     , (800273,   3,  536870932) /* SoundTable */
     , (800273,   6,   67108990) /* PaletteBase */
     , (800273,   7,  268436978) /* ClothingBase */
     , (800273,   8,  100686886) /* Icon */
     , (800273,  22,  872415275) /* PhysicsEffectTable */
     , (800273,  36,  234881042) /* MutateFilter */
     , (800273,  46,  939524146) /* TsysMutationFilter */
     , (800273,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800273,  4407,      2)  /* Incantation of Impenetrability */
     , (800273,  4680,      2)  /* Epic Health Gain */
     , (800273,  4684,      2)  /* Epic Arcane Prowess */;
