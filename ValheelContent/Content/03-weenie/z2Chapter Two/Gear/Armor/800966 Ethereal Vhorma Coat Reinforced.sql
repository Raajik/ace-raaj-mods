DELETE FROM `weenie` WHERE `class_Id` = 800966;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800966, 'Ethereal Vhorma Coat Reinforced', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800966,   1,          2) /* ItemType - Armor */
     , (800966,   3,         92) /* PaletteTemplate - Gold */
     , (800966,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800966,   5,       1600) /* EncumbranceVal */
     , (800966,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800966,  16,          1) /* ItemUseable - No */
     , (800966,  18,          1) /* UiEffects - Magical */
     , (800966,  19,         30) /* Value */
     , (800966,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800966,  27,         32) /* ArmorType - Scalemail */
     , (800966,  28,       2000) /* ArmorLevel */
     , (800966,  33,          1) /* Bonded - Normal */
     , (800966,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800966, 106,        300) /* ItemSpellcraft */
     , (800966, 107,       2204) /* ItemCurMana */
     , (800966, 108,       2500) /* ItemMaxMana */
     , (800966, 109,        425) /* ItemDifficulty */
     , (800966, 114,          1) /* Attuned - Normal */
     , (800966, 151,          2) /* HookType - Wall */
     , (800966, 158,          7) /* WieldRequirements - Level */
     , (800966, 159,          1) /* WieldSkillType - Axe */
     , (800966, 160,        325) /* WieldDifficulty */
     , (800966, 265,         24) /* Defenders */
     , (800966, 374,         15) /* Crit Damage */
     , (800966, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800966,  11, True ) /* IgnoreCollisions */
     , (800966,  13, True ) /* Ethereal */
     , (800966,  14, True ) /* GravityStatus */
     , (800966,  19, True ) /* Attackable */
     , (800966,  22, True ) /* Inscribable */
     , (800966,  69, True ) /* IsSellable */
     , (800966, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800966,   5,   -0.05) /* ManaRate */
     , (800966,  13,       2) /* ArmorModVsSlash */
     , (800966,  14,       2) /* ArmorModVsPierce */
     , (800966,  15,       2) /* ArmorModVsBludgeon */
     , (800966,  16,       2) /* ArmorModVsCold */
     , (800966,  17,       2) /* ArmorModVsFire */
     , (800966,  18,       2) /* ArmorModVsAcid */
     , (800966,  19,       2) /* ArmorModVsElectric */
     , (800966, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800966,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800966,   1,   33554642) /* Setup */
     , (800966,   3,  536870932) /* SoundTable */
     , (800966,   6,   67108990) /* PaletteBase */
     , (800966,   7,  268437014) /* ClothingBase */
     , (800966,   8,  100687770) /* Icon */
     , (800966,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800966,  6079,      2)  /* Legendary Storm */
     , (800966,  6080,      2)  /* Legendary Acid */
     , (800966,  6081,      2)  /* Legendary Bludgeoning */
     , (800966,  6083,      2)  /* Legendary Cold */
     , (800966,  6082,      2)  /* Legendary Fire */
     , (800966,  6084,      2)  /* Legendary Pierce */
     , (800966,  6085,      2)  /* Legendary Slash */
	 , (800966,  6107,      2)  /* Legendary Strength */
     , (800966,  6104,      2)  /* Legendary Endurance */
     , (800966,  6106,      2)  /* Legendary Quickness */
     , (800966,  6095,      2)  /* Legendary Impenetrability */
	 , (800966,  6077,      2)  /* Legendary Health Gain */
	 , (800966,  6102,      2)  /* Legendary Armor */;
