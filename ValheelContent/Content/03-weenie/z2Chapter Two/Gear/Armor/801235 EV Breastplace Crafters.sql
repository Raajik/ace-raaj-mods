DELETE FROM `weenie` WHERE `class_Id` = 801235;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801235, 'Ethereal Vhorma Breastplate Crafters', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801235,   1,          2) /* ItemType - Armor */
     , (801235,   3,         92) /* PaletteTemplate - Gold */
     , (801235,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801235,   5,       1600) /* EncumbranceVal */
     , (801235,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801235,  16,          1) /* ItemUseable - No */
     , (801235,  18,          1) /* UiEffects - Magical */
     , (801235,  19,         30) /* Value */
     , (801235,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801235,  27,         32) /* ArmorType - Scalemail */
     , (801235,  28,       1900) /* ArmorLevel */
     , (801235,  33,          1) /* Bonded - Normal */
     , (801235,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801235, 106,        300) /* ItemSpellcraft */
     , (801235, 107,       2204) /* ItemCurMana */
     , (801235, 108,       2500) /* ItemMaxMana */
     , (801235, 109,        425) /* ItemDifficulty */
     , (801235, 114,          1) /* Attuned - Normal */
     , (801235, 151,          2) /* HookType - Wall */
     , (801235, 158,          7) /* WieldRequirements - Level */
     , (801235, 159,          1) /* WieldSkillType - Axe */
     , (801235, 160,        325) /* WieldDifficulty */
     , (801235, 265,         18) /* Defenders */
     , (801235, 374,         15) /* Crit Damage */
     , (801235, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801235,  11, True ) /* IgnoreCollisions */
     , (801235,  13, True ) /* Ethereal */
     , (801235,  14, True ) /* GravityStatus */
     , (801235,  19, True ) /* Attackable */
     , (801235,  22, True ) /* Inscribable */
     , (801235,  69, True ) /* IsSellable */
     , (801235, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801235,   5,   -0.05) /* ManaRate */
     , (801235,  13,       2) /* ArmorModVsSlash */
     , (801235,  14,       2) /* ArmorModVsPierce */
     , (801235,  15,       2) /* ArmorModVsBludgeon */
     , (801235,  16,       2) /* ArmorModVsCold */
     , (801235,  17,       2) /* ArmorModVsFire */
     , (801235,  18,       2) /* ArmorModVsAcid */
     , (801235,  19,       2) /* ArmorModVsElectric */
     , (801235, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801235,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801235,   1,   33554642) /* Setup */
     , (801235,   3,  536870932) /* SoundTable */
     , (801235,   6,   67108990) /* PaletteBase */
     , (801235,   7,  268435493) /* ClothingBase */
     , (801235,   8,  100668147) /* Icon */
     , (801235,  22,  872415275) /* PhysicsEffectTable */
     , (801235,  36,  234881042) /* MutateFilter */
     , (801235,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801235,  6079,      2)  /* Legendary Storm */
     , (801235,  6080,      2)  /* Legendary Acid */
     , (801235,  6081,      2)  /* Legendary Bludgeoning */
     , (801235,  6083,      2)  /* Legendary Cold */
     /* , (801235,  6082,      2)  /* Legendary Fire */
     /* , (801235,  6084,      2)  /* Legendary Pierce */
     /* , (801235,  6085,      2)  /* Legendary Slash */
	 /* , (801235,  6107,      2)  /* Legendary Strength */
     /* , (801235,  6104,      2)  /* Legendary Endurance */
     /* , (801235,  6106,      2)  /* Legendary Quickness */
     /* , (801235,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801235,  6077,      2)  /* Legendary Health Gain */
	 /* , (801235,  6102,      2)  /* Legendary Armor */;
