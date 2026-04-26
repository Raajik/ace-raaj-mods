DELETE FROM `weenie` WHERE `class_Id` = 801238;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801238, 'Ethereal Vhorma Breastplate Wise', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801238,   1,          2) /* ItemType - Armor */
     , (801238,   3,         92) /* PaletteTemplate - Gold */
     , (801238,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801238,   5,       1600) /* EncumbranceVal */
     , (801238,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801238,  16,          1) /* ItemUseable - No */
     , (801238,  18,          1) /* UiEffects - Magical */
     , (801238,  19,         30) /* Value */
     , (801238,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801238,  27,         32) /* ArmorType - Scalemail */
     , (801238,  28,       1900) /* ArmorLevel */
     , (801238,  33,          1) /* Bonded - Normal */
     , (801238,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801238, 106,        300) /* ItemSpellcraft */
     , (801238, 107,       2204) /* ItemCurMana */
     , (801238, 108,       2500) /* ItemMaxMana */
     , (801238, 109,        425) /* ItemDifficulty */
     , (801238, 114,          1) /* Attuned - Normal */
     , (801238, 151,          2) /* HookType - Wall */
     , (801238, 158,          7) /* WieldRequirements - Level */
     , (801238, 159,          1) /* WieldSkillType - Axe */
     , (801238, 160,        325) /* WieldDifficulty */
     , (801238, 265,         21) /* Defenders */
     , (801238, 374,         15) /* Crit Damage */
     , (801238, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801238,  11, True ) /* IgnoreCollisions */
     , (801238,  13, True ) /* Ethereal */
     , (801238,  14, True ) /* GravityStatus */
     , (801238,  19, True ) /* Attackable */
     , (801238,  22, True ) /* Inscribable */
     , (801238,  69, True ) /* IsSellable */
     , (801238, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801238,   5,   -0.05) /* ManaRate */
     , (801238,  13,       2) /* ArmorModVsSlash */
     , (801238,  14,       2) /* ArmorModVsPierce */
     , (801238,  15,       2) /* ArmorModVsBludgeon */
     , (801238,  16,       2) /* ArmorModVsCold */
     , (801238,  17,       2) /* ArmorModVsFire */
     , (801238,  18,       2) /* ArmorModVsAcid */
     , (801238,  19,       2) /* ArmorModVsElectric */
     , (801238, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801238,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801238,   1,   33554642) /* Setup */
     , (801238,   3,  536870932) /* SoundTable */
     , (801238,   6,   67108990) /* PaletteBase */
     , (801238,   7,  268435493) /* ClothingBase */
     , (801238,   8,  100668147) /* Icon */
     , (801238,  22,  872415275) /* PhysicsEffectTable */
     , (801238,  36,  234881042) /* MutateFilter */
     , (801238,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801238,  6079,      2)  /* Legendary Storm */
     , (801238,  6080,      2)  /* Legendary Acid */
     , (801238,  6081,      2)  /* Legendary Bludgeoning */
     , (801238,  6083,      2)  /* Legendary Cold */
     /* , (801238,  6082,      2)  /* Legendary Fire */
     /* , (801238,  6084,      2)  /* Legendary Pierce */
     /* , (801238,  6085,      2)  /* Legendary Slash */
	 /* , (801238,  6107,      2)  /* Legendary Strength */
     /* , (801238,  6104,      2)  /* Legendary Endurance */
     /* , (801238,  6106,      2)  /* Legendary Quickness */
     /* , (801238,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801238,  6077,      2)  /* Legendary Health Gain */
	 /* , (801238,  6102,      2)  /* Legendary Armor */;
