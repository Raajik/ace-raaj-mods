DELETE FROM `weenie` WHERE `class_Id` = 801233;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801233, 'Ethereal Vhorma Breastplate Defenders', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801233,   1,          2) /* ItemType - Armor */
     , (801233,   3,         92) /* PaletteTemplate - Gold */
     , (801233,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801233,   5,       1600) /* EncumbranceVal */
     , (801233,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801233,  16,          1) /* ItemUseable - No */
     , (801233,  18,          1) /* UiEffects - Magical */
     , (801233,  19,         30) /* Value */
     , (801233,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801233,  27,         32) /* ArmorType - Scalemail */
     , (801233,  28,       1900) /* ArmorLevel */
     , (801233,  33,          1) /* Bonded - Normal */
     , (801233,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801233, 106,        300) /* ItemSpellcraft */
     , (801233, 107,       2204) /* ItemCurMana */
     , (801233, 108,       2500) /* ItemMaxMana */
     , (801233, 109,        425) /* ItemDifficulty */
     , (801233, 114,          1) /* Attuned - Normal */
     , (801233, 151,          2) /* HookType - Wall */
     , (801233, 158,          7) /* WieldRequirements - Level */
     , (801233, 159,          1) /* WieldSkillType - Axe */
     , (801233, 160,        325) /* WieldDifficulty */
     , (801233, 265,         16) /* Defenders */
     , (801233, 374,         15) /* Crit Damage */
     , (801233, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801233,  11, True ) /* IgnoreCollisions */
     , (801233,  13, True ) /* Ethereal */
     , (801233,  14, True ) /* GravityStatus */
     , (801233,  19, True ) /* Attackable */
     , (801233,  22, True ) /* Inscribable */
     , (801233,  69, True ) /* IsSellable */
     , (801233, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801233,   5,   -0.05) /* ManaRate */
     , (801233,  13,       2) /* ArmorModVsSlash */
     , (801233,  14,       2) /* ArmorModVsPierce */
     , (801233,  15,       2) /* ArmorModVsBludgeon */
     , (801233,  16,       2) /* ArmorModVsCold */
     , (801233,  17,       2) /* ArmorModVsFire */
     , (801233,  18,       2) /* ArmorModVsAcid */
     , (801233,  19,       2) /* ArmorModVsElectric */
     , (801233, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801233,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801233,   1,   33554642) /* Setup */
     , (801233,   3,  536870932) /* SoundTable */
     , (801233,   6,   67108990) /* PaletteBase */
     , (801233,   7,  268435493) /* ClothingBase */
     , (801233,   8,  100668147) /* Icon */
     , (801233,  22,  872415275) /* PhysicsEffectTable */
     , (801233,  36,  234881042) /* MutateFilter */
     , (801233,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801233,  6079,      2)  /* Legendary Storm */
     , (801233,  6080,      2)  /* Legendary Acid */
     , (801233,  6081,      2)  /* Legendary Bludgeoning */
     , (801233,  6083,      2)  /* Legendary Cold */
     /* , (801233,  6082,      2)  /* Legendary Fire */
     /* , (801233,  6084,      2)  /* Legendary Pierce */
     /* , (801233,  6085,      2)  /* Legendary Slash */
	 /* , (801233,  6107,      2)  /* Legendary Strength */
     /* , (801233,  6104,      2)  /* Legendary Endurance */
     /* , (801233,  6106,      2)  /* Legendary Quickness */
     /* , (801233,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801233,  6077,      2)  /* Legendary Health Gain */
	 /* , (801233,  6102,      2)  /* Legendary Armor */;
