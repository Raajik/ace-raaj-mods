DELETE FROM `weenie` WHERE `class_Id` = 801230;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801230, 'Ethereal Vhorma Breastplate Soldiers', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801230,   1,          2) /* ItemType - Armor */
     , (801230,   3,         92) /* PaletteTemplate - Gold */
     , (801230,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801230,   5,       1600) /* EncumbranceVal */
     , (801230,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801230,  16,          1) /* ItemUseable - No */
     , (801230,  18,          1) /* UiEffects - Magical */
     , (801230,  19,         30) /* Value */
     , (801230,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801230,  27,         32) /* ArmorType - Scalemail */
     , (801230,  28,       1900) /* ArmorLevel */
     , (801230,  33,          1) /* Bonded - Normal */
     , (801230,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801230, 106,        300) /* ItemSpellcraft */
     , (801230, 107,       2204) /* ItemCurMana */
     , (801230, 108,       2500) /* ItemMaxMana */
     , (801230, 109,        425) /* ItemDifficulty */
     , (801230, 114,          1) /* Attuned - Normal */
     , (801230, 151,          2) /* HookType - Wall */
     , (801230, 158,          7) /* WieldRequirements - Level */
     , (801230, 159,          1) /* WieldSkillType - Axe */
     , (801230, 160,        325) /* WieldDifficulty */
     , (801230, 265,         13) /* Defenders */
     , (801230, 374,         15) /* Crit Damage */
     , (801230, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801230,  11, True ) /* IgnoreCollisions */
     , (801230,  13, True ) /* Ethereal */
     , (801230,  14, True ) /* GravityStatus */
     , (801230,  19, True ) /* Attackable */
     , (801230,  22, True ) /* Inscribable */
     , (801230,  69, True ) /* IsSellable */
     , (801230, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801230,   5,   -0.05) /* ManaRate */
     , (801230,  13,       2) /* ArmorModVsSlash */
     , (801230,  14,       2) /* ArmorModVsPierce */
     , (801230,  15,       2) /* ArmorModVsBludgeon */
     , (801230,  16,       2) /* ArmorModVsCold */
     , (801230,  17,       2) /* ArmorModVsFire */
     , (801230,  18,       2) /* ArmorModVsAcid */
     , (801230,  19,       2) /* ArmorModVsElectric */
     , (801230, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801230,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801230,   1,   33554642) /* Setup */
     , (801230,   3,  536870932) /* SoundTable */
     , (801230,   6,   67108990) /* PaletteBase */
     , (801230,   7,  268435493) /* ClothingBase */
     , (801230,   8,  100668147) /* Icon */
     , (801230,  22,  872415275) /* PhysicsEffectTable */
     , (801230,  36,  234881042) /* MutateFilter */
     , (801230,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801230,  6079,      2)  /* Legendary Storm */
     , (801230,  6080,      2)  /* Legendary Acid */
     , (801230,  6081,      2)  /* Legendary Bludgeoning */
     , (801230,  6083,      2)  /* Legendary Cold */
     /* , (801230,  6082,      2)  /* Legendary Fire */
     /* , (801230,  6084,      2)  /* Legendary Pierce */
     /* , (801230,  6085,      2)  /* Legendary Slash */
	 /* , (801230,  6107,      2)  /* Legendary Strength */
     /* , (801230,  6104,      2)  /* Legendary Endurance */
     /* , (801230,  6106,      2)  /* Legendary Quickness */
     /* , (801230,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801230,  6077,      2)  /* Legendary Health Gain */
	 /* , (801230,  6102,      2)  /* Legendary Armor */;
