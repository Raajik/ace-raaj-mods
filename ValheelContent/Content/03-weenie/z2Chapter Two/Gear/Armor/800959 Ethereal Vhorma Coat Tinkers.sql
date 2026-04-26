DELETE FROM `weenie` WHERE `class_Id` = 800959;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800959, 'Ethereal Vhorma Coat Tinkers', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800959,   1,          2) /* ItemType - Armor */
     , (800959,   3,         92) /* PaletteTemplate - Gold */
     , (800959,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800959,   5,       1600) /* EncumbranceVal */
     , (800959,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800959,  16,          1) /* ItemUseable - No */
     , (800959,  18,          1) /* UiEffects - Magical */
     , (800959,  19,         30) /* Value */
     , (800959,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800959,  27,         32) /* ArmorType - Scalemail */
     , (800959,  28,       2000) /* ArmorLevel */
     , (800959,  33,          1) /* Bonded - Normal */
     , (800959,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800959, 106,        300) /* ItemSpellcraft */
     , (800959, 107,       2204) /* ItemCurMana */
     , (800959, 108,       2500) /* ItemMaxMana */
     , (800959, 109,        425) /* ItemDifficulty */
     , (800959, 114,          1) /* Attuned - Normal */
     , (800959, 151,          2) /* HookType - Wall */
     , (800959, 158,          7) /* WieldRequirements - Level */
     , (800959, 159,          1) /* WieldSkillType - Axe */
     , (800959, 160,        325) /* WieldDifficulty */
     , (800959, 265,         17) /* Defenders */
     , (800959, 374,         15) /* Crit Damage */
     , (800959, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800959,  11, True ) /* IgnoreCollisions */
     , (800959,  13, True ) /* Ethereal */
     , (800959,  14, True ) /* GravityStatus */
     , (800959,  19, True ) /* Attackable */
     , (800959,  22, True ) /* Inscribable */
     , (800959,  69, True ) /* IsSellable */
     , (800959, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800959,   5,   -0.05) /* ManaRate */
     , (800959,  13,       2) /* ArmorModVsSlash */
     , (800959,  14,       2) /* ArmorModVsPierce */
     , (800959,  15,       2) /* ArmorModVsBludgeon */
     , (800959,  16,       2) /* ArmorModVsCold */
     , (800959,  17,       2) /* ArmorModVsFire */
     , (800959,  18,       2) /* ArmorModVsAcid */
     , (800959,  19,       2) /* ArmorModVsElectric */
     , (800959, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800959,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800959,   1,   33554642) /* Setup */
     , (800959,   3,  536870932) /* SoundTable */
     , (800959,   6,   67108990) /* PaletteBase */
     , (800959,   7,  268437014) /* ClothingBase */
     , (800959,   8,  100687770) /* Icon */
     , (800959,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800959,  6079,      2)  /* Legendary Storm */
     , (800959,  6080,      2)  /* Legendary Acid */
     , (800959,  6081,      2)  /* Legendary Bludgeoning */
     , (800959,  6083,      2)  /* Legendary Cold */
     , (800959,  6082,      2)  /* Legendary Fire */
     , (800959,  6084,      2)  /* Legendary Pierce */
     , (800959,  6085,      2)  /* Legendary Slash */
	 , (800959,  6107,      2)  /* Legendary Strength */
     , (800959,  6104,      2)  /* Legendary Endurance */
     , (800959,  6106,      2)  /* Legendary Quickness */
     , (800959,  6095,      2)  /* Legendary Impenetrability */
	 , (800959,  6077,      2)  /* Legendary Health Gain */
	 , (800959,  6102,      2)  /* Legendary Armor */;
