DELETE FROM `weenie` WHERE `class_Id` = 801234;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801234, 'Ethereal Vhorma Breastplate Tinkers', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801234,   1,          2) /* ItemType - Armor */
     , (801234,   3,         92) /* PaletteTemplate - Gold */
     , (801234,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801234,   5,       1600) /* EncumbranceVal */
     , (801234,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801234,  16,          1) /* ItemUseable - No */
     , (801234,  18,          1) /* UiEffects - Magical */
     , (801234,  19,         30) /* Value */
     , (801234,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801234,  27,         32) /* ArmorType - Scalemail */
     , (801234,  28,       1900) /* ArmorLevel */
     , (801234,  33,          1) /* Bonded - Normal */
     , (801234,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801234, 106,        300) /* ItemSpellcraft */
     , (801234, 107,       2204) /* ItemCurMana */
     , (801234, 108,       2500) /* ItemMaxMana */
     , (801234, 109,        425) /* ItemDifficulty */
     , (801234, 114,          1) /* Attuned - Normal */
     , (801234, 151,          2) /* HookType - Wall */
     , (801234, 158,          7) /* WieldRequirements - Level */
     , (801234, 159,          1) /* WieldSkillType - Axe */
     , (801234, 160,        325) /* WieldDifficulty */
     , (801234, 265,         17) /* Defenders */
     , (801234, 374,         15) /* Crit Damage */
     , (801234, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801234,  11, True ) /* IgnoreCollisions */
     , (801234,  13, True ) /* Ethereal */
     , (801234,  14, True ) /* GravityStatus */
     , (801234,  19, True ) /* Attackable */
     , (801234,  22, True ) /* Inscribable */
     , (801234,  69, True ) /* IsSellable */
     , (801234, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801234,   5,   -0.05) /* ManaRate */
     , (801234,  13,       2) /* ArmorModVsSlash */
     , (801234,  14,       2) /* ArmorModVsPierce */
     , (801234,  15,       2) /* ArmorModVsBludgeon */
     , (801234,  16,       2) /* ArmorModVsCold */
     , (801234,  17,       2) /* ArmorModVsFire */
     , (801234,  18,       2) /* ArmorModVsAcid */
     , (801234,  19,       2) /* ArmorModVsElectric */
     , (801234, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801234,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801234,   1,   33554642) /* Setup */
     , (801234,   3,  536870932) /* SoundTable */
     , (801234,   6,   67108990) /* PaletteBase */
     , (801234,   7,  268435493) /* ClothingBase */
     , (801234,   8,  100668147) /* Icon */
     , (801234,  22,  872415275) /* PhysicsEffectTable */
     , (801234,  36,  234881042) /* MutateFilter */
     , (801234,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801234,  6079,      2)  /* Legendary Storm */
     , (801234,  6080,      2)  /* Legendary Acid */
     , (801234,  6081,      2)  /* Legendary Bludgeoning */
     , (801234,  6083,      2)  /* Legendary Cold */
     /* , (801234,  6082,      2)  /* Legendary Fire */
     /* , (801234,  6084,      2)  /* Legendary Pierce */
     /* , (801234,  6085,      2)  /* Legendary Slash */
	 /* , (801234,  6107,      2)  /* Legendary Strength */
     /* , (801234,  6104,      2)  /* Legendary Endurance */
     /* , (801234,  6106,      2)  /* Legendary Quickness */
     /* , (801234,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801234,  6077,      2)  /* Legendary Health Gain */
	 /* , (801234,  6102,      2)  /* Legendary Armor */;
