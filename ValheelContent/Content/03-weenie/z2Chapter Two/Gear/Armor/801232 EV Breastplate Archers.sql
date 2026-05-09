DELETE FROM `weenie` WHERE `class_Id` = 801232;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801232, 'Ethereal Vhorma Breastplate Adepts', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801232,   1,          2) /* ItemType - Armor */
     , (801232,   3,         92) /* PaletteTemplate - Gold */
     , (801232,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801232,   5,       1600) /* EncumbranceVal */
     , (801232,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801232,  16,          1) /* ItemUseable - No */
     , (801232,  18,          1) /* UiEffects - Magical */
     , (801232,  19,         30) /* Value */
     , (801232,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801232,  27,         32) /* ArmorType - Scalemail */
     , (801232,  28,       1900) /* ArmorLevel */
     , (801232,  33,          1) /* Bonded - Normal */
     , (801232,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801232, 106,        300) /* ItemSpellcraft */
     , (801232, 107,       2204) /* ItemCurMana */
     , (801232, 108,       2500) /* ItemMaxMana */
     , (801232, 109,        425) /* ItemDifficulty */
     , (801232, 114,          1) /* Attuned - Normal */
     , (801232, 151,          2) /* HookType - Wall */
     , (801232, 158,          7) /* WieldRequirements - Level */
     , (801232, 159,          1) /* WieldSkillType - Axe */
     , (801232, 160,        325) /* WieldDifficulty */
     , (801232, 265,         15) /* Defenders */
     , (801232, 374,         15) /* Crit Damage */
     , (801232, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801232,  11, True ) /* IgnoreCollisions */
     , (801232,  13, True ) /* Ethereal */
     , (801232,  14, True ) /* GravityStatus */
     , (801232,  19, True ) /* Attackable */
     , (801232,  22, True ) /* Inscribable */
     , (801232,  69, True ) /* IsSellable */
     , (801232, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801232,   5,   -0.05) /* ManaRate */
     , (801232,  13,       2) /* ArmorModVsSlash */
     , (801232,  14,       2) /* ArmorModVsPierce */
     , (801232,  15,       2) /* ArmorModVsBludgeon */
     , (801232,  16,       2) /* ArmorModVsCold */
     , (801232,  17,       2) /* ArmorModVsFire */
     , (801232,  18,       2) /* ArmorModVsAcid */
     , (801232,  19,       2) /* ArmorModVsElectric */
     , (801232, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801232,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801232,   1,   33554642) /* Setup */
     , (801232,   3,  536870932) /* SoundTable */
     , (801232,   6,   67108990) /* PaletteBase */
     , (801232,   7,  268435493) /* ClothingBase */
     , (801232,   8,  100668147) /* Icon */
     , (801232,  22,  872415275) /* PhysicsEffectTable */
     , (801232,  36,  234881042) /* MutateFilter */
     , (801232,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801232,  6079,      2)  /* Legendary Storm */
     , (801232,  6080,      2)  /* Legendary Acid */
     , (801232,  6081,      2)  /* Legendary Bludgeoning */
     , (801232,  6083,      2)  /* Legendary Cold */
     /* , (801232,  6082,      2)  /* Legendary Fire */
     /* , (801232,  6084,      2)  /* Legendary Pierce */
     /* , (801232,  6085,      2)  /* Legendary Slash */
	 /* , (801232,  6107,      2)  /* Legendary Strength */
     /* , (801232,  6104,      2)  /* Legendary Endurance */
     /* , (801232,  6106,      2)  /* Legendary Quickness */
     /* , (801232,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801232,  6077,      2)  /* Legendary Health Gain */
	 /* , (801232,  6102,      2)  /* Legendary Armor */;
