DELETE FROM `weenie` WHERE `class_Id` = 800962;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800962, 'Ethereal Vhorma Coat Dextrous', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800962,   1,          2) /* ItemType - Armor */
     , (800962,   3,         92) /* PaletteTemplate - Gold */
     , (800962,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800962,   5,       1600) /* EncumbranceVal */
     , (800962,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800962,  16,          1) /* ItemUseable - No */
     , (800962,  18,          1) /* UiEffects - Magical */
     , (800962,  19,         30) /* Value */
     , (800962,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800962,  27,         32) /* ArmorType - Scalemail */
     , (800962,  28,       2000) /* ArmorLevel */
     , (800962,  33,          1) /* Bonded - Normal */
     , (800962,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800962, 106,        300) /* ItemSpellcraft */
     , (800962, 107,       2204) /* ItemCurMana */
     , (800962, 108,       2500) /* ItemMaxMana */
     , (800962, 109,        425) /* ItemDifficulty */
     , (800962, 114,          1) /* Attuned - Normal */
     , (800962, 151,          2) /* HookType - Wall */
     , (800962, 158,          7) /* WieldRequirements - Level */
     , (800962, 159,          1) /* WieldSkillType - Axe */
     , (800962, 160,        325) /* WieldDifficulty */
     , (800962, 265,         20) /* Defenders */
     , (800962, 374,         15) /* Crit Damage */
     , (800962, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800962,  11, True ) /* IgnoreCollisions */
     , (800962,  13, True ) /* Ethereal */
     , (800962,  14, True ) /* GravityStatus */
     , (800962,  19, True ) /* Attackable */
     , (800962,  22, True ) /* Inscribable */
     , (800962,  69, True ) /* IsSellable */
     , (800962, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800962,   5,   -0.05) /* ManaRate */
     , (800962,  13,       2) /* ArmorModVsSlash */
     , (800962,  14,       2) /* ArmorModVsPierce */
     , (800962,  15,       2) /* ArmorModVsBludgeon */
     , (800962,  16,       2) /* ArmorModVsCold */
     , (800962,  17,       2) /* ArmorModVsFire */
     , (800962,  18,       2) /* ArmorModVsAcid */
     , (800962,  19,       2) /* ArmorModVsElectric */
     , (800962, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800962,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800962,   1,   33554642) /* Setup */
     , (800962,   3,  536870932) /* SoundTable */
     , (800962,   6,   67108990) /* PaletteBase */
     , (800962,   7,  268437014) /* ClothingBase */
     , (800962,   8,  100687770) /* Icon */
     , (800962,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800962,  6079,      2)  /* Legendary Storm */
     , (800962,  6080,      2)  /* Legendary Acid */
     , (800962,  6081,      2)  /* Legendary Bludgeoning */
     , (800962,  6083,      2)  /* Legendary Cold */
     , (800962,  6082,      2)  /* Legendary Fire */
     , (800962,  6084,      2)  /* Legendary Pierce */
     , (800962,  6085,      2)  /* Legendary Slash */
	 , (800962,  6107,      2)  /* Legendary Strength */
     , (800962,  6104,      2)  /* Legendary Endurance */
     , (800962,  6106,      2)  /* Legendary Quickness */
     , (800962,  6095,      2)  /* Legendary Impenetrability */
	 , (800962,  6077,      2)  /* Legendary Health Gain */
	 , (800962,  6102,      2)  /* Legendary Armor */;
