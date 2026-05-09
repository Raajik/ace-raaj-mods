DELETE FROM `weenie` WHERE `class_Id` = 800457;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800457, 'uberhelmreddot', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800457,   1,          2) /* ItemType - Armor */
     , (800457,   3,          14) /* PaletteTemplate - Blue */
     , (800457,   4,      16384) /* ClothingPriority - Head */
     , (800457,   5,        426) /* EncumbranceVal */
     , (800457,   9,          1) /* ValidLocations - HeadWear */
     , (800457,  16,          1) /* ItemUseable - No */
     , (800457,  18,          1) /* UiEffects - Magical */
     , (800457,  27,         32) /* ArmorType - Metal */
     , (800457,  28,        1500) /* ArmorLevel */
     , (800457,  33,          1) /* Bonded - Bonded */
     , (800457,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800457, 106,        200) /* ItemSpellcraft */
     , (800457, 107,       1000) /* ItemCurMana */
     , (800457, 108,       1000) /* ItemMaxMana */
     , (800457, 109,        300) /* ItemDifficulty */
     , (800457, 114,          1) /* Attuned - Attuned */
     , (800457, 124,          3) /* Version */
     , (800457, 151,          2) /* HookType - Wall */
     , (800457, 158,          7) /* WieldRequirements - Level */
     , (800457, 159,          1) /* WieldSkillType - Axe */
     , (800457, 160,        300) /* WieldDifficulty */
     , (800457, 169,  168429060) /* TsysMutationData */
     , (800457, 265,         24) /* Defenders */
     , (800457, 384,          3) /* PK Resist */
     , (800457, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800457,  22, True ) /* Inscribable */
     , (800457,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800457,   5,  -0.033) /* ManaRate */
     , (800457,  12,     0.5) /* Shade */
     , (800457,  13,       2) /* ArmorModVsSlash */
     , (800457,  14,       2) /* ArmorModVsPierce */
     , (800457,  15,       2) /* ArmorModVsBludgeon */
     , (800457,  16,       2) /* ArmorModVsCold */
     , (800457,  17,       2) /* ArmorModVsFire */
     , (800457,  18,       2) /* ArmorModVsAcid */
     , (800457,  19,       2) /* ArmorModVsElectric */
     , (800457, 110,     1.1) /* BulkMod */
     , (800457, 111,     1.5) /* SizeMod */
     , (800457, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800457,   1, 'Uber Helm of the Red Dot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800457,   1,   33558266) /* Setup */
     , (800457,   3,  536870932) /* SoundTable */
     , (800457,   6,   67108990) /* PaletteBase */
     , (800457,   7,  268436561) /* ClothingBase */
     , (800457,   8,  100674138) /* Icon */
     , (800457,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800457,  6125,      2)  /* Legendary Summoning */
     , (800457,  6055,      2)  /* Legendary Invulnerability */
     , (800457,  6063,      2)  /* Legendary Magic Resistence */
     , (800457,  6054,      2)  /* Legendary Impregnability */
     , (800457,  6102,      2)  /* Legendary Armor */
     , (800457,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
