DELETE FROM `weenie` WHERE `class_Id` = 801239;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801239, 'Ethereal Vhorma Breastplate Swift', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801239,   1,          2) /* ItemType - Armor */
     , (801239,   3,         92) /* PaletteTemplate - Gold */
     , (801239,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801239,   5,       1600) /* EncumbranceVal */
     , (801239,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801239,  16,          1) /* ItemUseable - No */
     , (801239,  18,          1) /* UiEffects - Magical */
     , (801239,  19,         30) /* Value */
     , (801239,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801239,  27,         32) /* ArmorType - Scalemail */
     , (801239,  28,       1900) /* ArmorLevel */
     , (801239,  33,          1) /* Bonded - Normal */
     , (801239,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801239, 106,        300) /* ItemSpellcraft */
     , (801239, 107,       2204) /* ItemCurMana */
     , (801239, 108,       2500) /* ItemMaxMana */
     , (801239, 109,        425) /* ItemDifficulty */
     , (801239, 114,          1) /* Attuned - Normal */
     , (801239, 151,          2) /* HookType - Wall */
     , (801239, 158,          7) /* WieldRequirements - Level */
     , (801239, 159,          1) /* WieldSkillType - Axe */
     , (801239, 160,        325) /* WieldDifficulty */
     , (801239, 265,         22) /* Defenders */
     , (801239, 374,         15) /* Crit Damage */
     , (801239, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801239,  11, True ) /* IgnoreCollisions */
     , (801239,  13, True ) /* Ethereal */
     , (801239,  14, True ) /* GravityStatus */
     , (801239,  19, True ) /* Attackable */
     , (801239,  22, True ) /* Inscribable */
     , (801239,  69, True ) /* IsSellable */
     , (801239, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801239,   5,   -0.05) /* ManaRate */
     , (801239,  13,       2) /* ArmorModVsSlash */
     , (801239,  14,       2) /* ArmorModVsPierce */
     , (801239,  15,       2) /* ArmorModVsBludgeon */
     , (801239,  16,       2) /* ArmorModVsCold */
     , (801239,  17,       2) /* ArmorModVsFire */
     , (801239,  18,       2) /* ArmorModVsAcid */
     , (801239,  19,       2) /* ArmorModVsElectric */
     , (801239, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801239,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801239,   1,   33554642) /* Setup */
     , (801239,   3,  536870932) /* SoundTable */
     , (801239,   6,   67108990) /* PaletteBase */
     , (801239,   7,  268435493) /* ClothingBase */
     , (801239,   8,  100668147) /* Icon */
     , (801239,  22,  872415275) /* PhysicsEffectTable */
     , (801239,  36,  234881042) /* MutateFilter */
     , (801239,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801239,  6079,      2)  /* Legendary Storm */
     , (801239,  6080,      2)  /* Legendary Acid */
     , (801239,  6081,      2)  /* Legendary Bludgeoning */
     , (801239,  6083,      2)  /* Legendary Cold */
     /* , (801239,  6082,      2)  /* Legendary Fire */
     /* , (801239,  6084,      2)  /* Legendary Pierce */
     /* , (801239,  6085,      2)  /* Legendary Slash */
	 /* , (801239,  6107,      2)  /* Legendary Strength */
     /* , (801239,  6104,      2)  /* Legendary Endurance */
     /* , (801239,  6106,      2)  /* Legendary Quickness */
     /* , (801239,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801239,  6077,      2)  /* Legendary Health Gain */
	 /* , (801239,  6102,      2)  /* Legendary Armor */;
