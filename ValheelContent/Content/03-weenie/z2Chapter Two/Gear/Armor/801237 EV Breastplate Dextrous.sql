DELETE FROM `weenie` WHERE `class_Id` = 801237;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801237, 'Ethereal Vhorma Breastplate Dextrous', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801237,   1,          2) /* ItemType - Armor */
     , (801237,   3,         92) /* PaletteTemplate - Gold */
     , (801237,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801237,   5,       1600) /* EncumbranceVal */
     , (801237,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801237,  16,          1) /* ItemUseable - No */
     , (801237,  18,          1) /* UiEffects - Magical */
     , (801237,  19,         30) /* Value */
     , (801237,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801237,  27,         32) /* ArmorType - Scalemail */
     , (801237,  28,       1900) /* ArmorLevel */
     , (801237,  33,          1) /* Bonded - Normal */
     , (801237,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801237, 106,        300) /* ItemSpellcraft */
     , (801237, 107,       2204) /* ItemCurMana */
     , (801237, 108,       2500) /* ItemMaxMana */
     , (801237, 109,        425) /* ItemDifficulty */
     , (801237, 114,          1) /* Attuned - Normal */
     , (801237, 151,          2) /* HookType - Wall */
     , (801237, 158,          7) /* WieldRequirements - Level */
     , (801237, 159,          1) /* WieldSkillType - Axe */
     , (801237, 160,        325) /* WieldDifficulty */
     , (801237, 265,         20) /* Defenders */
     , (801237, 374,         15) /* Crit Damage */
     , (801237, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801237,  11, True ) /* IgnoreCollisions */
     , (801237,  13, True ) /* Ethereal */
     , (801237,  14, True ) /* GravityStatus */
     , (801237,  19, True ) /* Attackable */
     , (801237,  22, True ) /* Inscribable */
     , (801237,  69, True ) /* IsSellable */
     , (801237, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801237,   5,   -0.05) /* ManaRate */
     , (801237,  13,       2) /* ArmorModVsSlash */
     , (801237,  14,       2) /* ArmorModVsPierce */
     , (801237,  15,       2) /* ArmorModVsBludgeon */
     , (801237,  16,       2) /* ArmorModVsCold */
     , (801237,  17,       2) /* ArmorModVsFire */
     , (801237,  18,       2) /* ArmorModVsAcid */
     , (801237,  19,       2) /* ArmorModVsElectric */
     , (801237, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801237,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801237,   1,   33554642) /* Setup */
     , (801237,   3,  536870932) /* SoundTable */
     , (801237,   6,   67108990) /* PaletteBase */
     , (801237,   7,  268435493) /* ClothingBase */
     , (801237,   8,  100668147) /* Icon */
     , (801237,  22,  872415275) /* PhysicsEffectTable */
     , (801237,  36,  234881042) /* MutateFilter */
     , (801237,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801237,  6079,      2)  /* Legendary Storm */
     , (801237,  6080,      2)  /* Legendary Acid */
     , (801237,  6081,      2)  /* Legendary Bludgeoning */
     , (801237,  6083,      2)  /* Legendary Cold */
     /* , (801237,  6082,      2)  /* Legendary Fire */
     /* , (801237,  6084,      2)  /* Legendary Pierce */
     /* , (801237,  6085,      2)  /* Legendary Slash */
	 /* , (801237,  6107,      2)  /* Legendary Strength */
     /* , (801237,  6104,      2)  /* Legendary Endurance */
     /* , (801237,  6106,      2)  /* Legendary Quickness */
     /* , (801237,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801237,  6077,      2)  /* Legendary Health Gain */
	 /* , (801237,  6102,      2)  /* Legendary Armor */;
