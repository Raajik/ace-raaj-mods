DELETE FROM `weenie` WHERE `class_Id` = 800270;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800270, 'ValHeel Greaves', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800270,   1,          2) /* ItemType - Armor */
     , (800270,   3,          4) /* PaletteTemplate - Brown */
     , (800270,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (800270,   5,        300) /* EncumbranceVal */
     , (800270,   8,         90) /* Mass */
     , (800270,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (800270,  16,          1) /* ItemUseable - No */
     , (800270,  19,          1) /* Value */
     , (800270,  27,          2) /* ArmorType - Leather */
     , (800270,  28,        280) /* ArmorLevel */
     , (800270,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800270, 106,        325) /* ItemSpellcraft */
     , (800270, 107,       6000) /* ItemCurMana */
     , (800270, 108,       6000) /* ItemMaxMana */
     , (800270, 151,          2) /* HookType - Wall */
     , (800270, 158,          7) /* WieldRequirements - Level */
     , (800270, 159,          1) /* WieldSkillType - Axe */
     , (800270, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800270,  11, True ) /* IgnoreCollisions */
     , (800270,  13, True ) /* Ethereal */
     , (800270,  14, True ) /* GravityStatus */
     , (800270,  19, True ) /* Attackable */
     , (800270,  22, True ) /* Inscribable */
     , (800270, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800270,   5,  -0.033) /* ManaRate */
     , (800270,  12,    0.66) /* Shade */
     , (800270,  13,       1) /* ArmorModVsSlash */
     , (800270,  14,     1.1) /* ArmorModVsPierce */
     , (800270,  15,     1.1) /* ArmorModVsBludgeon */
     , (800270,  16,       1) /* ArmorModVsCold */
     , (800270,  17,     0.9) /* ArmorModVsFire */
     , (800270,  18,     0.9) /* ArmorModVsAcid */
     , (800270,  19,     0.9) /* ArmorModVsElectric */
     , (800270, 110,    1.67) /* BulkMod */
     , (800270, 111,       1) /* SizeMod */
     , (800270, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800270,   1, 'Valheel Greaves') /* Name */; 

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800270,   1,   33559430) /* Setup */
     , (800270,   3,  536870932) /* SoundTable */
     , (800270,   6,   67108990) /* PaletteBase */
     , (800270,   7,  268436970) /* ClothingBase */
     , (800270,   8,  100686870) /* Icon */
     , (800270,  22,  872415275) /* PhysicsEffectTable */
     , (800270,  36,  234881042) /* MutateFilter */
     , (800270,  46,  939524146) /* TsysMutationFilter */
     , (800270,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800270,  4407,      2)  /* Incantation of Impenetrability */
     , (800270,  4682,      2)  /* Epic Stamina Gain */
     , (800270,  4696,      2)  /* Epic Invulnerability */;
