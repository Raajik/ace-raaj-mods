DELETE FROM `weenie` WHERE `class_Id` = 800961;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800961, 'Ethereal Vhorma Coat Hearty', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800961,   1,          2) /* ItemType - Armor */
     , (800961,   3,         92) /* PaletteTemplate - Gold */
     , (800961,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800961,   5,       1600) /* EncumbranceVal */
     , (800961,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800961,  16,          1) /* ItemUseable - No */
     , (800961,  18,          1) /* UiEffects - Magical */
     , (800961,  19,         30) /* Value */
     , (800961,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800961,  27,         32) /* ArmorType - Scalemail */
     , (800961,  28,       2000) /* ArmorLevel */
     , (800961,  33,          1) /* Bonded - Normal */
     , (800961,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800961, 106,        300) /* ItemSpellcraft */
     , (800961, 107,       2204) /* ItemCurMana */
     , (800961, 108,       2500) /* ItemMaxMana */
     , (800961, 109,        425) /* ItemDifficulty */
     , (800961, 114,          1) /* Attuned - Normal */
     , (800961, 151,          2) /* HookType - Wall */
     , (800961, 158,          7) /* WieldRequirements - Level */
     , (800961, 159,          1) /* WieldSkillType - Axe */
     , (800961, 160,        325) /* WieldDifficulty */
     , (800961, 265,         19) /* Defenders */
     , (800961, 374,         15) /* Crit Damage */
     , (800961, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800961,  11, True ) /* IgnoreCollisions */
     , (800961,  13, True ) /* Ethereal */
     , (800961,  14, True ) /* GravityStatus */
     , (800961,  19, True ) /* Attackable */
     , (800961,  22, True ) /* Inscribable */
     , (800961,  69, True ) /* IsSellable */
     , (800961, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800961,   5,   -0.05) /* ManaRate */
     , (800961,  13,       2) /* ArmorModVsSlash */
     , (800961,  14,       2) /* ArmorModVsPierce */
     , (800961,  15,       2) /* ArmorModVsBludgeon */
     , (800961,  16,       2) /* ArmorModVsCold */
     , (800961,  17,       2) /* ArmorModVsFire */
     , (800961,  18,       2) /* ArmorModVsAcid */
     , (800961,  19,       2) /* ArmorModVsElectric */
     , (800961, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800961,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800961,   1,   33554642) /* Setup */
     , (800961,   3,  536870932) /* SoundTable */
     , (800961,   6,   67108990) /* PaletteBase */
     , (800961,   7,  268437014) /* ClothingBase */
     , (800961,   8,  100687770) /* Icon */
     , (800961,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800961,  6079,      2)  /* Legendary Storm */
     , (800961,  6080,      2)  /* Legendary Acid */
     , (800961,  6081,      2)  /* Legendary Bludgeoning */
     , (800961,  6083,      2)  /* Legendary Cold */
     , (800961,  6082,      2)  /* Legendary Fire */
     , (800961,  6084,      2)  /* Legendary Pierce */
     , (800961,  6085,      2)  /* Legendary Slash */
	 , (800961,  6107,      2)  /* Legendary Strength */
     , (800961,  6104,      2)  /* Legendary Endurance */
     , (800961,  6106,      2)  /* Legendary Quickness */
     , (800961,  6095,      2)  /* Legendary Impenetrability */
	 , (800961,  6077,      2)  /* Legendary Health Gain */
	 , (800961,  6102,      2)  /* Legendary Armor */;
