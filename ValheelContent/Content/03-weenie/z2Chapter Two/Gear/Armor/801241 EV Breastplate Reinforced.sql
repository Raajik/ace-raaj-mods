DELETE FROM `weenie` WHERE `class_Id` = 801241;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801241, 'Ethereal Vhorma Breastplate Reinforced', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801241,   1,          2) /* ItemType - Armor */
     , (801241,   3,         92) /* PaletteTemplate - Gold */
     , (801241,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801241,   5,       1600) /* EncumbranceVal */
     , (801241,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801241,  16,          1) /* ItemUseable - No */
     , (801241,  18,          1) /* UiEffects - Magical */
     , (801241,  19,         30) /* Value */
     , (801241,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801241,  27,         32) /* ArmorType - Scalemail */
     , (801241,  28,       1900) /* ArmorLevel */
     , (801241,  33,          1) /* Bonded - Normal */
     , (801241,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801241, 106,        300) /* ItemSpellcraft */
     , (801241, 107,       2204) /* ItemCurMana */
     , (801241, 108,       2500) /* ItemMaxMana */
     , (801241, 109,        425) /* ItemDifficulty */
     , (801241, 114,          1) /* Attuned - Normal */
     , (801241, 151,          2) /* HookType - Wall */
     , (801241, 158,          7) /* WieldRequirements - Level */
     , (801241, 159,          1) /* WieldSkillType - Axe */
     , (801241, 160,        325) /* WieldDifficulty */
     , (801241, 265,         24) /* Defenders */
     , (801241, 374,         15) /* Crit Damage */
     , (801241, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801241,  11, True ) /* IgnoreCollisions */
     , (801241,  13, True ) /* Ethereal */
     , (801241,  14, True ) /* GravityStatus */
     , (801241,  19, True ) /* Attackable */
     , (801241,  22, True ) /* Inscribable */
     , (801241,  69, True ) /* IsSellable */
     , (801241, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801241,   5,   -0.05) /* ManaRate */
     , (801241,  13,       2) /* ArmorModVsSlash */
     , (801241,  14,       2) /* ArmorModVsPierce */
     , (801241,  15,       2) /* ArmorModVsBludgeon */
     , (801241,  16,       2) /* ArmorModVsCold */
     , (801241,  17,       2) /* ArmorModVsFire */
     , (801241,  18,       2) /* ArmorModVsAcid */
     , (801241,  19,       2) /* ArmorModVsElectric */
     , (801241, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801241,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801241,   1,   33554642) /* Setup */
     , (801241,   3,  536870932) /* SoundTable */
     , (801241,   6,   67108990) /* PaletteBase */
     , (801241,   7,  268435493) /* ClothingBase */
     , (801241,   8,  100668147) /* Icon */
     , (801241,  22,  872415275) /* PhysicsEffectTable */
     , (801241,  36,  234881042) /* MutateFilter */
     , (801241,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801241,  6079,      2)  /* Legendary Storm */
     , (801241,  6080,      2)  /* Legendary Acid */
     , (801241,  6081,      2)  /* Legendary Bludgeoning */
     , (801241,  6083,      2)  /* Legendary Cold */
     /* , (801241,  6082,      2)  /* Legendary Fire */
     /* , (801241,  6084,      2)  /* Legendary Pierce */
     /* , (801241,  6085,      2)  /* Legendary Slash */
	 /* , (801241,  6107,      2)  /* Legendary Strength */
     /* , (801241,  6104,      2)  /* Legendary Endurance */
     /* , (801241,  6106,      2)  /* Legendary Quickness */
     /* , (801241,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801241,  6077,      2)  /* Legendary Health Gain */
	 /* , (801241,  6102,      2)  /* Legendary Armor */;
