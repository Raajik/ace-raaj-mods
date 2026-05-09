DELETE FROM `weenie` WHERE `class_Id` = 800960;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800960, 'Ethereal Vhorma Coat Crafters', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800960,   1,          2) /* ItemType - Armor */
     , (800960,   3,         92) /* PaletteTemplate - Gold */
     , (800960,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800960,   5,       1600) /* EncumbranceVal */
     , (800960,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800960,  16,          1) /* ItemUseable - No */
     , (800960,  18,          1) /* UiEffects - Magical */
     , (800960,  19,         30) /* Value */
     , (800960,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800960,  27,         32) /* ArmorType - Scalemail */
     , (800960,  28,       2000) /* ArmorLevel */
     , (800960,  33,          1) /* Bonded - Normal */
     , (800960,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800960, 106,        300) /* ItemSpellcraft */
     , (800960, 107,       2204) /* ItemCurMana */
     , (800960, 108,       2500) /* ItemMaxMana */
     , (800960, 109,        425) /* ItemDifficulty */
     , (800960, 114,          1) /* Attuned - Normal */
     , (800960, 151,          2) /* HookType - Wall */
     , (800960, 158,          7) /* WieldRequirements - Level */
     , (800960, 159,          1) /* WieldSkillType - Axe */
     , (800960, 160,        325) /* WieldDifficulty */
     , (800960, 265,         18) /* Defenders */
     , (800960, 374,         15) /* Crit Damage */
     , (800960, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800960,  11, True ) /* IgnoreCollisions */
     , (800960,  13, True ) /* Ethereal */
     , (800960,  14, True ) /* GravityStatus */
     , (800960,  19, True ) /* Attackable */
     , (800960,  22, True ) /* Inscribable */
     , (800960,  69, True ) /* IsSellable */
     , (800960, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800960,   5,   -0.05) /* ManaRate */
     , (800960,  13,       2) /* ArmorModVsSlash */
     , (800960,  14,       2) /* ArmorModVsPierce */
     , (800960,  15,       2) /* ArmorModVsBludgeon */
     , (800960,  16,       2) /* ArmorModVsCold */
     , (800960,  17,       2) /* ArmorModVsFire */
     , (800960,  18,       2) /* ArmorModVsAcid */
     , (800960,  19,       2) /* ArmorModVsElectric */
     , (800960, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800960,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800960,   1,   33554642) /* Setup */
     , (800960,   3,  536870932) /* SoundTable */
     , (800960,   6,   67108990) /* PaletteBase */
     , (800960,   7,  268437014) /* ClothingBase */
     , (800960,   8,  100687770) /* Icon */
     , (800960,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800960,  6079,      2)  /* Legendary Storm */
     , (800960,  6080,      2)  /* Legendary Acid */
     , (800960,  6081,      2)  /* Legendary Bludgeoning */
     , (800960,  6083,      2)  /* Legendary Cold */
     , (800960,  6082,      2)  /* Legendary Fire */
     , (800960,  6084,      2)  /* Legendary Pierce */
     , (800960,  6085,      2)  /* Legendary Slash */
	 , (800960,  6107,      2)  /* Legendary Strength */
     , (800960,  6104,      2)  /* Legendary Endurance */
     , (800960,  6106,      2)  /* Legendary Quickness */
     , (800960,  6095,      2)  /* Legendary Impenetrability */
	 , (800960,  6077,      2)  /* Legendary Health Gain */
	 , (800960,  6102,      2)  /* Legendary Armor */;
