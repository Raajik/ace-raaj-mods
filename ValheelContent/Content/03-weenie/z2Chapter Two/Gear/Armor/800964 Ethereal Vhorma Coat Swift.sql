DELETE FROM `weenie` WHERE `class_Id` = 800964;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800964, 'Ethereal Vhorma Coat Swift', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800964,   1,          2) /* ItemType - Armor */
     , (800964,   3,         92) /* PaletteTemplate - Gold */
     , (800964,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800964,   5,       1600) /* EncumbranceVal */
     , (800964,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800964,  16,          1) /* ItemUseable - No */
     , (800964,  18,          1) /* UiEffects - Magical */
     , (800964,  19,         30) /* Value */
     , (800964,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800964,  27,         32) /* ArmorType - Scalemail */
     , (800964,  28,       2000) /* ArmorLevel */
     , (800964,  33,          1) /* Bonded - Normal */
     , (800964,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800964, 106,        300) /* ItemSpellcraft */
     , (800964, 107,       2204) /* ItemCurMana */
     , (800964, 108,       2500) /* ItemMaxMana */
     , (800964, 109,        425) /* ItemDifficulty */
     , (800964, 114,          1) /* Attuned - Normal */
     , (800964, 151,          2) /* HookType - Wall */
     , (800964, 158,          7) /* WieldRequirements - Level */
     , (800964, 159,          1) /* WieldSkillType - Axe */
     , (800964, 160,        325) /* WieldDifficulty */
     , (800964, 265,         22) /* Defenders */
     , (800964, 374,         15) /* Crit Damage */
     , (800964, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800964,  11, True ) /* IgnoreCollisions */
     , (800964,  13, True ) /* Ethereal */
     , (800964,  14, True ) /* GravityStatus */
     , (800964,  19, True ) /* Attackable */
     , (800964,  22, True ) /* Inscribable */
     , (800964,  69, True ) /* IsSellable */
     , (800964, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800964,   5,   -0.05) /* ManaRate */
     , (800964,  13,       2) /* ArmorModVsSlash */
     , (800964,  14,       2) /* ArmorModVsPierce */
     , (800964,  15,       2) /* ArmorModVsBludgeon */
     , (800964,  16,       2) /* ArmorModVsCold */
     , (800964,  17,       2) /* ArmorModVsFire */
     , (800964,  18,       2) /* ArmorModVsAcid */
     , (800964,  19,       2) /* ArmorModVsElectric */
     , (800964, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800964,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800964,   1,   33554642) /* Setup */
     , (800964,   3,  536870932) /* SoundTable */
     , (800964,   6,   67108990) /* PaletteBase */
     , (800964,   7,  268437014) /* ClothingBase */
     , (800964,   8,  100687770) /* Icon */
     , (800964,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800964,  6079,      2)  /* Legendary Storm */
     , (800964,  6080,      2)  /* Legendary Acid */
     , (800964,  6081,      2)  /* Legendary Bludgeoning */
     , (800964,  6083,      2)  /* Legendary Cold */
     , (800964,  6082,      2)  /* Legendary Fire */
     , (800964,  6084,      2)  /* Legendary Pierce */
     , (800964,  6085,      2)  /* Legendary Slash */
	 , (800964,  6107,      2)  /* Legendary Strength */
     , (800964,  6104,      2)  /* Legendary Endurance */
     , (800964,  6106,      2)  /* Legendary Quickness */
     , (800964,  6095,      2)  /* Legendary Impenetrability */
	 , (800964,  6077,      2)  /* Legendary Health Gain */
	 , (800964,  6102,      2)  /* Legendary Armor */;
