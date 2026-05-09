DELETE FROM `weenie` WHERE `class_Id` = 800955;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800955, 'Ethereal Vhorma Coat Soldiers', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800955,   1,          2) /* ItemType - Armor */
     , (800955,   3,         92) /* PaletteTemplate - Gold */
     , (800955,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800955,   5,       1600) /* EncumbranceVal */
     , (800955,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800955,  16,          1) /* ItemUseable - No */
     , (800955,  18,          1) /* UiEffects - Magical */
     , (800955,  19,         30) /* Value */
     , (800955,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800955,  27,         32) /* ArmorType - Scalemail */
     , (800955,  28,       2000) /* ArmorLevel */
     , (800955,  33,          1) /* Bonded - Normal */
     , (800955,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800955, 106,        300) /* ItemSpellcraft */
     , (800955, 107,       2204) /* ItemCurMana */
     , (800955, 108,       2500) /* ItemMaxMana */
     , (800955, 109,        425) /* ItemDifficulty */
     , (800955, 114,          1) /* Attuned - Normal */
     , (800955, 151,          2) /* HookType - Wall */
     , (800955, 158,          7) /* WieldRequirements - Level */
     , (800955, 159,          1) /* WieldSkillType - Axe */
     , (800955, 160,        325) /* WieldDifficulty */
     , (800955, 265,         13) /* Defenders */
     , (800955, 374,         15) /* Crit Damage */
     , (800955, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800955,  11, True ) /* IgnoreCollisions */
     , (800955,  13, True ) /* Ethereal */
     , (800955,  14, True ) /* GravityStatus */
     , (800955,  19, True ) /* Attackable */
     , (800955,  22, True ) /* Inscribable */
     , (800955,  69, True ) /* IsSellable */
     , (800955, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800955,   5,   -0.05) /* ManaRate */
     , (800955,  13,       2) /* ArmorModVsSlash */
     , (800955,  14,       2) /* ArmorModVsPierce */
     , (800955,  15,       2) /* ArmorModVsBludgeon */
     , (800955,  16,       2) /* ArmorModVsCold */
     , (800955,  17,       2) /* ArmorModVsFire */
     , (800955,  18,       2) /* ArmorModVsAcid */
     , (800955,  19,       2) /* ArmorModVsElectric */
     , (800955, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800955,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800955,   1,   33554642) /* Setup */
     , (800955,   3,  536870932) /* SoundTable */
     , (800955,   6,   67108990) /* PaletteBase */
     , (800955,   7,  268437014) /* ClothingBase */
     , (800955,   8,  100687770) /* Icon */
     , (800955,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800955,  6079,      2)  /* Legendary Storm */
     , (800955,  6080,      2)  /* Legendary Acid */
     , (800955,  6081,      2)  /* Legendary Bludgeoning */
     , (800955,  6083,      2)  /* Legendary Cold */
     , (800955,  6082,      2)  /* Legendary Fire */
     , (800955,  6084,      2)  /* Legendary Pierce */
     , (800955,  6085,      2)  /* Legendary Slash */
	 , (800955,  6107,      2)  /* Legendary Strength */
     , (800955,  6104,      2)  /* Legendary Endurance */
     , (800955,  6106,      2)  /* Legendary Quickness */
     , (800955,  6095,      2)  /* Legendary Impenetrability */
	 , (800955,  6077,      2)  /* Legendary Health Gain */
	 , (800955,  6102,      2)  /* Legendary Armor */;
