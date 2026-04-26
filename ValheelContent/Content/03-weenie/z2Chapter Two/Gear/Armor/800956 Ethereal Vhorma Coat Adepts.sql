DELETE FROM `weenie` WHERE `class_Id` = 800956;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800956, 'Ethereal Vhorma Coat Adepts', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800956,   1,          2) /* ItemType - Armor */
     , (800956,   3,         92) /* PaletteTemplate - Gold */
     , (800956,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800956,   5,       1600) /* EncumbranceVal */
     , (800956,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800956,  16,          1) /* ItemUseable - No */
     , (800956,  18,          1) /* UiEffects - Magical */
     , (800956,  19,         30) /* Value */
     , (800956,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800956,  27,         32) /* ArmorType - Scalemail */
     , (800956,  28,       2000) /* ArmorLevel */
     , (800956,  33,          1) /* Bonded - Normal */
     , (800956,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800956, 106,        300) /* ItemSpellcraft */
     , (800956, 107,       2204) /* ItemCurMana */
     , (800956, 108,       2500) /* ItemMaxMana */
     , (800956, 109,        425) /* ItemDifficulty */
     , (800956, 114,          1) /* Attuned - Normal */
     , (800956, 151,          2) /* HookType - Wall */
     , (800956, 158,          7) /* WieldRequirements - Level */
     , (800956, 159,          1) /* WieldSkillType - Axe */
     , (800956, 160,        325) /* WieldDifficulty */
     , (800956, 265,         14) /* Defenders */
     , (800956, 374,         15) /* Crit Damage */
     , (800956, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800956,  11, True ) /* IgnoreCollisions */
     , (800956,  13, True ) /* Ethereal */
     , (800956,  14, True ) /* GravityStatus */
     , (800956,  19, True ) /* Attackable */
     , (800956,  22, True ) /* Inscribable */
     , (800956,  69, True ) /* IsSellable */
     , (800956, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800956,   5,   -0.05) /* ManaRate */
     , (800956,  13,       2) /* ArmorModVsSlash */
     , (800956,  14,       2) /* ArmorModVsPierce */
     , (800956,  15,       2) /* ArmorModVsBludgeon */
     , (800956,  16,       2) /* ArmorModVsCold */
     , (800956,  17,       2) /* ArmorModVsFire */
     , (800956,  18,       2) /* ArmorModVsAcid */
     , (800956,  19,       2) /* ArmorModVsElectric */
     , (800956, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800956,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800956,   1,   33554642) /* Setup */
     , (800956,   3,  536870932) /* SoundTable */
     , (800956,   6,   67108990) /* PaletteBase */
     , (800956,   7,  268437014) /* ClothingBase */
     , (800956,   8,  100687770) /* Icon */
     , (800956,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800956,  6079,      2)  /* Legendary Storm */
     , (800956,  6080,      2)  /* Legendary Acid */
     , (800956,  6081,      2)  /* Legendary Bludgeoning */
     , (800956,  6083,      2)  /* Legendary Cold */
     , (800956,  6082,      2)  /* Legendary Fire */
     , (800956,  6084,      2)  /* Legendary Pierce */
     , (800956,  6085,      2)  /* Legendary Slash */
	 , (800956,  6107,      2)  /* Legendary Strength */
     , (800956,  6104,      2)  /* Legendary Endurance */
     , (800956,  6106,      2)  /* Legendary Quickness */
     , (800956,  6095,      2)  /* Legendary Impenetrability */
	 , (800956,  6077,      2)  /* Legendary Health Gain */
	 , (800956,  6102,      2)  /* Legendary Armor */;
