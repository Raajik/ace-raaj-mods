DELETE FROM `weenie` WHERE `class_Id` = 800274;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800274, 'ValHeel Breastplate', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800274,   1,          2) /* ItemType - Armor */
     , (800274,   3,          4) /* PaletteTemplate - Brown */
     , (800274,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (800274,   5,       1825) /* EncumbranceVal */
     , (800274,   8,         90) /* Mass */
     , (800274,   9,        512) /* ValidLocations - ChestArmor */
     , (800274,  16,          1) /* ItemUseable - No */
     , (800274,  19,      50000) /* Value */
     , (800274,  27,          2) /* ArmorType - Leather */
     , (800274,  28,        280) /* ArmorLevel */
     , (800274,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800274, 106,        325) /* ItemSpellcraft */
     , (800274, 107,       6000) /* ItemCurMana */
     , (800274, 108,       6000) /* ItemMaxMana */
     , (800274, 151,          2) /* HookType - Wall */
     , (800274, 158,          7) /* WieldRequirements - Level */
     , (800274, 159,          1) /* WieldSkillType - Axe */
     , (800274, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800274,  11, True ) /* IgnoreCollisions */
     , (800274,  13, True ) /* Ethereal */
     , (800274,  14, True ) /* GravityStatus */
     , (800274,  19, True ) /* Attackable */
     , (800274,  22, True ) /* Inscribable */
     , (800274,  91, False) /* Retained */
     , (800274, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800274,   5,  -0.033) /* ManaRate */
     , (800274,  12,    0.66) /* Shade */
     , (800274,  13,     1.1) /* ArmorModVsSlash */
     , (800274,  14,     1.3) /* ArmorModVsPierce */
     , (800274,  15,     1.1) /* ArmorModVsBludgeon */
     , (800274,  16,     1.1) /* ArmorModVsCold */
     , (800274,  17,     0.9) /* ArmorModVsFire */
     , (800274,  18,     0.9) /* ArmorModVsAcid */
     , (800274,  19,     0.9) /* ArmorModVsElectric */
     , (800274, 110,    1.67) /* BulkMod */
     , (800274, 111,       1) /* SizeMod */
     , (800274, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800274,   1, 'ValHeel Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800274,   1,   33559435) /* Setup */
     , (800274,   3,  536870932) /* SoundTable */
     , (800274,   6,   67108990) /* PaletteBase */
     , (800274,   7,  268436975) /* ClothingBase */
     , (800274,   8,  100686880) /* Icon */
     , (800274,  22,  872415275) /* PhysicsEffectTable */
     , (800274,  36,  234881042) /* MutateFilter */
     , (800274,  46,  939524146) /* TsysMutationFilter */
     , (800274,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800274,  4226,      2)  /* Epic Endurance */
     , (800274,  4407,      2)  /* Incantation of Impenetrability */
     , (800274,  4695,      2)  /* Epic Impregnability */;
