DELETE FROM `weenie` WHERE `class_Id` = 800680;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800680, 'Cloak of Heroes', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800680,   1,          4) /* ItemType - Clothing */
     , (800680,   3,          2) /* PaletteTemplate - Blue */
     , (800680,   4,     131072) /* ClothingPriority - 131072 */
     , (800680,   5,         75) /* EncumbranceVal */
     , (800680,   9,  134217728) /* ValidLocations - Cloak */
     , (800680,  16,          1) /* ItemUseable - No */
     , (800680,  18,          1) /* UiEffects - Magical */
     , (800680,  19,          1) /* Value */
     , (800680,  28,       1500) /* ArmorLevel */
     , (800680,  36,       9999) /* ResistMagic */
     , (800680,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800680, 158,          7) /* WieldRequirements - Level */
     , (800680, 159,          1) /* WieldSkillType - Axe */
     , (800680, 160,        325) /* WieldDifficulty */
     , (800680, 169,         16) /* TsysMutationData */
     , (800680, 319,         10) /* ItemMaxLevel */
     , (800680, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (800680, 379,         25) /* Health Boost */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800680,   4,           0) /* ItemTotalXp */
     , (800680,   5, 15000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800680,  22, True ) /* Inscribable */
     , (800680,  84, True ) /* IgnoreCloIcons */
     , (800680, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800680,  13,     0.8) /* ArmorModVsSlash */
     , (800680,  14,     0.8) /* ArmorModVsPierce */
     , (800680,  15,       1) /* ArmorModVsBludgeon */
     , (800680,  16,     0.2) /* ArmorModVsCold */
     , (800680,  17,     0.2) /* ArmorModVsFire */
     , (800680,  18,     0.1) /* ArmorModVsAcid */
     , (800680,  19,     0.2) /* ArmorModVsElectric */
     , (800680,  76,     0.7) /* Translucency */
     , (800680, 165,       1) /* ArmorModVsNether */
	 , (800680, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800680,   1, 'Cloak of Heroes') /* Name */
     , (800680,  16, 'A destructive cloak designed to battle large groups of mobs.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800680,   1,   33561386) /* Setup */
     , (800680,   3,  536870932) /* SoundTable */
     , (800680,   6,  268437490) /* PaletteBase */
     , (800680,   7,  268437485) /* ClothingBase */
     , (800680,   8,  100692126) /* Icon */
     , (800680,  22,  872415275) /* PhysicsEffectTable */
     , (800680,  36,  234881054) /* MutateFilter */
     , (800680,  55,       3936) /* ProcSpell - Fire Bomb */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800680,  5223,      2)  /* Sigil of Fury XV */
     , (800680,  5238,      2)  /* Sigil of Destruction XV */
     , (800680,  5253,      2)  /* Sigil of Defense XV */
     , (800680,  5268,      2)  /* Sigil of Growth XV */
     , (800680,  5283,      2)  /* Sigil of Vigor XV */
     , (800680,  5298,      2)  /* Sigil of Vigor Mana XV */
     , (800680,  5313,      2)  /* Sigil of Vigor Stamina XV */
     , (800680,  5449,      2)  /* Surging Strength */
     , (800680,  5978,      2)  /* Rare Armor Damage Boost */
     , (800680,  6295,      2)  /* Paragon's Critical Damage Boost V */
     , (800680,  6300,      2)  /* Paragon's Critical Damage Reduction V */;
