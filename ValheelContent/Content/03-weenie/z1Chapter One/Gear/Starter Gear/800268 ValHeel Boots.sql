DELETE FROM `weenie` WHERE `class_Id` = 800268;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800268, 'valheel boots', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800268,   1,          2) /* ItemType - Armor */
     , (800268,   3,          1) /* PaletteTemplate - AquaBlue */
     , (800268,   4,      65536) /* ClothingPriority - Feet */
     , (800268,   5,        300) /* EncumbranceVal */
     , (800268,   8,         90) /* Mass */
     , (800268,   9,        256) /* ValidLocations - FootWear */
     , (800268,  16,          1) /* ItemUseable - No */
     , (800268,  19,          1) /* Value */
     , (800268,  27,          2) /* ArmorType - Leather */
     , (800268,  28,        280) /* ArmorLevel */
     , (800268,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800268, 106,        325) /* ItemSpellcraft */
     , (800268, 107,       6000) /* ItemCurMana */
     , (800268, 108,       6000) /* ItemMaxMana */
     , (800268, 150,        103) /* HookPlacement - Hook */
     , (800268, 151,          1) /* HookType - Floor */
     , (800268, 158,          7) /* WieldRequirements - Level */
     , (800268, 159,          1) /* WieldSkillType - Axe */
     , (800268, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800268,  11, True ) /* IgnoreCollisions */
     , (800268,  13, True ) /* Ethereal */
     , (800268,  14, True ) /* GravityStatus */
     , (800268,  22, True ) /* Inscribable */
     , (800268, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800268,   5,  -0.033) /* ManaRate */
     , (800268,  13,     1.3) /* ArmorModVsSlash */
     , (800268,  14,     0.9) /* ArmorModVsPierce */
     , (800268,  15,     1.3) /* ArmorModVsBludgeon */
     , (800268,  16,       1) /* ArmorModVsCold */
     , (800268,  17,     0.9) /* ArmorModVsFire */
     , (800268,  18,     0.9) /* ArmorModVsAcid */
     , (800268,  19,     0.9) /* ArmorModVsElectric */
     , (800268, 110,    1.67) /* BulkMod */
     , (800268, 111,       1) /* SizeMod */
     , (800268, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800268,   1, 'ValHeel Boots') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800268,   1,   33559415) /* Setup */
     , (800268,   3,  536870932) /* SoundTable */
     , (800268,   6,   67108990) /* PaletteBase */
     , (800268,   7,  268436985) /* ClothingBase */
     , (800268,   8,  100686829) /* Icon */
     , (800268,  22,  872415275) /* PhysicsEffectTable */
     , (800268,  36,  234881042) /* MutateFilter */
     , (800268,  46,  939524146) /* TsysMutationFilter */
     , (800268,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800268,  4019,      2)  /* Epic Quickness */
     , (800268,  4407,      2)  /* Incantation of Impenetrability */
     , (800268,  4710,      2)  /* Epic Sprint */;
