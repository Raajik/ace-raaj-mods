DELETE FROM `weenie` WHERE `class_Id` = 801231;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801231, 'Ethereal Vhorma Breastplate Adepts', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801231,   1,          2) /* ItemType - Armor */
     , (801231,   3,         92) /* PaletteTemplate - Gold */
     , (801231,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801231,   5,       1600) /* EncumbranceVal */
     , (801231,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801231,  16,          1) /* ItemUseable - No */
     , (801231,  18,          1) /* UiEffects - Magical */
     , (801231,  19,         30) /* Value */
     , (801231,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801231,  27,         32) /* ArmorType - Scalemail */
     , (801231,  28,       1900) /* ArmorLevel */
     , (801231,  33,          1) /* Bonded - Normal */
     , (801231,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801231, 106,        300) /* ItemSpellcraft */
     , (801231, 107,       2204) /* ItemCurMana */
     , (801231, 108,       2500) /* ItemMaxMana */
     , (801231, 109,        425) /* ItemDifficulty */
     , (801231, 114,          1) /* Attuned - Normal */
     , (801231, 151,          2) /* HookType - Wall */
     , (801231, 158,          7) /* WieldRequirements - Level */
     , (801231, 159,          1) /* WieldSkillType - Axe */
     , (801231, 160,        325) /* WieldDifficulty */
     , (801231, 265,         14) /* Defenders */
     , (801231, 374,         15) /* Crit Damage */
     , (801231, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801231,  11, True ) /* IgnoreCollisions */
     , (801231,  13, True ) /* Ethereal */
     , (801231,  14, True ) /* GravityStatus */
     , (801231,  19, True ) /* Attackable */
     , (801231,  22, True ) /* Inscribable */
     , (801231,  69, True ) /* IsSellable */
     , (801231, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801231,   5,   -0.05) /* ManaRate */
     , (801231,  13,       2) /* ArmorModVsSlash */
     , (801231,  14,       2) /* ArmorModVsPierce */
     , (801231,  15,       2) /* ArmorModVsBludgeon */
     , (801231,  16,       2) /* ArmorModVsCold */
     , (801231,  17,       2) /* ArmorModVsFire */
     , (801231,  18,       2) /* ArmorModVsAcid */
     , (801231,  19,       2) /* ArmorModVsElectric */
     , (801231, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801231,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801231,   1,   33554642) /* Setup */
     , (801231,   3,  536870932) /* SoundTable */
     , (801231,   6,   67108990) /* PaletteBase */
     , (801231,   7,  268435493) /* ClothingBase */
     , (801231,   8,  100668147) /* Icon */
     , (801231,  22,  872415275) /* PhysicsEffectTable */
     , (801231,  36,  234881042) /* MutateFilter */
     , (801231,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801231,  6079,      2)  /* Legendary Storm */
     , (801231,  6080,      2)  /* Legendary Acid */
     , (801231,  6081,      2)  /* Legendary Bludgeoning */
     , (801231,  6083,      2)  /* Legendary Cold */
     /* , (801231,  6082,      2)  /* Legendary Fire */
     /* , (801231,  6084,      2)  /* Legendary Pierce */
     /* , (801231,  6085,      2)  /* Legendary Slash */
	 /* , (801231,  6107,      2)  /* Legendary Strength */
     /* , (801231,  6104,      2)  /* Legendary Endurance */
     /* , (801231,  6106,      2)  /* Legendary Quickness */
     /* , (801231,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801231,  6077,      2)  /* Legendary Health Gain */
	 /* , (801231,  6102,      2)  /* Legendary Armor */;
