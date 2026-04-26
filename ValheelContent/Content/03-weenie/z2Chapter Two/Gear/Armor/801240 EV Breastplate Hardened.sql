DELETE FROM `weenie` WHERE `class_Id` = 801240;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801240, 'Ethereal Vhorma Breastplate Hardened', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801240,   1,          2) /* ItemType - Armor */
     , (801240,   3,         92) /* PaletteTemplate - Gold */
     , (801240,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (801240,   5,       1600) /* EncumbranceVal */
     , (801240,   9,       512) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (801240,  16,          1) /* ItemUseable - No */
     , (801240,  18,          1) /* UiEffects - Magical */
     , (801240,  19,         30) /* Value */
     , (801240,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (801240,  27,         32) /* ArmorType - Scalemail */
     , (801240,  28,       1900) /* ArmorLevel */
     , (801240,  33,          1) /* Bonded - Normal */
     , (801240,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801240, 106,        300) /* ItemSpellcraft */
     , (801240, 107,       2204) /* ItemCurMana */
     , (801240, 108,       2500) /* ItemMaxMana */
     , (801240, 109,        425) /* ItemDifficulty */
     , (801240, 114,          1) /* Attuned - Normal */
     , (801240, 151,          2) /* HookType - Wall */
     , (801240, 158,          7) /* WieldRequirements - Level */
     , (801240, 159,          1) /* WieldSkillType - Axe */
     , (801240, 160,        325) /* WieldDifficulty */
     , (801240, 265,         23) /* Defenders */
     , (801240, 374,         15) /* Crit Damage */
     , (801240, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801240,  11, True ) /* IgnoreCollisions */
     , (801240,  13, True ) /* Ethereal */
     , (801240,  14, True ) /* GravityStatus */
     , (801240,  19, True ) /* Attackable */
     , (801240,  22, True ) /* Inscribable */
     , (801240,  69, True ) /* IsSellable */
     , (801240, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801240,   5,   -0.05) /* ManaRate */
     , (801240,  13,       2) /* ArmorModVsSlash */
     , (801240,  14,       2) /* ArmorModVsPierce */
     , (801240,  15,       2) /* ArmorModVsBludgeon */
     , (801240,  16,       2) /* ArmorModVsCold */
     , (801240,  17,       2) /* ArmorModVsFire */
     , (801240,  18,       2) /* ArmorModVsAcid */
     , (801240,  19,       2) /* ArmorModVsElectric */
     , (801240, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801240,   1, 'Ethereal Vhorma Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801240,   1,   33554642) /* Setup */
     , (801240,   3,  536870932) /* SoundTable */
     , (801240,   6,   67108990) /* PaletteBase */
     , (801240,   7,  268435493) /* ClothingBase */
     , (801240,   8,  100668147) /* Icon */
     , (801240,  22,  872415275) /* PhysicsEffectTable */
     , (801240,  36,  234881042) /* MutateFilter */
     , (801240,  46,  939524146) /* TsysMutationFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801240,  6079,      2)  /* Legendary Storm */
     , (801240,  6080,      2)  /* Legendary Acid */
     , (801240,  6081,      2)  /* Legendary Bludgeoning */
     , (801240,  6083,      2)  /* Legendary Cold */
     /* , (801240,  6082,      2)  /* Legendary Fire */
     /* , (801240,  6084,      2)  /* Legendary Pierce */
     /* , (801240,  6085,      2)  /* Legendary Slash */
	 /* , (801240,  6107,      2)  /* Legendary Strength */
     /* , (801240,  6104,      2)  /* Legendary Endurance */
     /* , (801240,  6106,      2)  /* Legendary Quickness */
     /* , (801240,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801240,  6077,      2)  /* Legendary Health Gain */
	 /* , (801240,  6102,      2)  /* Legendary Armor */;
