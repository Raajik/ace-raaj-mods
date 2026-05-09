DELETE FROM `weenie` WHERE `class_Id` = 801236;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801236, 'Ethereal Vhorma Breastplate Hearty', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801236,   1,          2) /* ItemType - Armor */
     , (801236,   3,         92) /* PaletteTemplate - Gold */
     , (801236,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801236,   5,       1600) /* EncumbranceVal */
     , (801236,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801236,  16,          1) /* ItemUseable - No */
     , (801236,  18,          1) /* UiEffects - Magical */
     , (801236,  19,         30) /* Value */
     , (801236,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801236,  27,         32) /* ArmorType - Scalemail */
     , (801236,  28,       1900) /* ArmorLevel */
     , (801236,  33,          1) /* Bonded - Normal */
     , (801236,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801236, 106,        300) /* ItemSpellcraft */
     , (801236, 107,       2204) /* ItemCurMana */
     , (801236, 108,       2500) /* ItemMaxMana */
     , (801236, 109,        425) /* ItemDifficulty */
     , (801236, 114,          1) /* Attuned - Normal */
     , (801236, 151,          2) /* HookType - Wall */
     , (801236, 158,          7) /* WieldRequirements - Level */
     , (801236, 159,          1) /* WieldSkillType - Axe */
     , (801236, 160,        325) /* WieldDifficulty */
     , (801236, 265,         19) /* Defenders */
     , (801236, 374,         15) /* Crit Damage */
     , (801236, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801236,  11, True ) /* IgnoreCollisions */
     , (801236,  13, True ) /* Ethereal */
     , (801236,  14, True ) /* GravityStatus */
     , (801236,  19, True ) /* Attackable */
     , (801236,  22, True ) /* Inscribable */
     , (801236,  69, True ) /* IsSellable */
     , (801236, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801236,   5,   -0.05) /* ManaRate */
     , (801236,  13,       2) /* ArmorModVsSlash */
     , (801236,  14,       2) /* ArmorModVsPierce */
     , (801236,  15,       2) /* ArmorModVsBludgeon */
     , (801236,  16,       2) /* ArmorModVsCold */
     , (801236,  17,       2) /* ArmorModVsFire */
     , (801236,  18,       2) /* ArmorModVsAcid */
     , (801236,  19,       2) /* ArmorModVsElectric */
     , (801236, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801236,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801236,   1,   33554642) /* Setup */
     , (801236,   3,  536870932) /* SoundTable */
     , (801236,   6,   67108990) /* PaletteBase */
     , (801236,   7,  268435493) /* ClothingBase */
     , (801236,   8,  100668147) /* Icon */
     , (801236,  22,  872415275) /* PhysicsEffectTable */
     , (801236,  36,  234881042) /* MutateFilter */
     , (801236,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801236,  6079,      2)  /* Legendary Storm */
     , (801236,  6080,      2)  /* Legendary Acid */
     , (801236,  6081,      2)  /* Legendary Bludgeoning */
     , (801236,  6083,      2)  /* Legendary Cold */
     /* , (801236,  6082,      2)  /* Legendary Fire */
     /* , (801236,  6084,      2)  /* Legendary Pierce */
     /* , (801236,  6085,      2)  /* Legendary Slash */
	 /* , (801236,  6107,      2)  /* Legendary Strength */
     /* , (801236,  6104,      2)  /* Legendary Endurance */
     /* , (801236,  6106,      2)  /* Legendary Quickness */
     /* , (801236,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801236,  6077,      2)  /* Legendary Health Gain */
	 /* , (801236,  6102,      2)  /* Legendary Armor */;
