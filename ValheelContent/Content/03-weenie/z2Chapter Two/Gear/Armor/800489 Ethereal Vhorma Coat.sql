DELETE FROM `weenie` WHERE `class_Id` = 800489;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800489, 'Ethereal Vhorma Coat', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800489,   1,          2) /* ItemType - Armor */
     , (800489,   3,         92) /* PaletteTemplate - Gold */
     , (800489,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800489,   5,       1600) /* EncumbranceVal */
     , (800489,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800489,  16,          1) /* ItemUseable - No */
     , (800489,  18,          1) /* UiEffects - Magical */
     , (800489,  19,         30) /* Value */
     , (800489,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800489,  27,         32) /* ArmorType - Scalemail */
     , (800489,  28,       2000) /* ArmorLevel */
     , (800489,  33,          1) /* Bonded - Normal */
     , (800489,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800489, 106,        300) /* ItemSpellcraft */
     , (800489, 107,       2204) /* ItemCurMana */
     , (800489, 108,       2500) /* ItemMaxMana */
     , (800489, 109,        425) /* ItemDifficulty */
     , (800489, 114,          1) /* Attuned - Normal */
     , (800489, 151,          2) /* HookType - Wall */
     , (800489, 158,          7) /* WieldRequirements - Level */
     , (800489, 159,          1) /* WieldSkillType - Axe */
     , (800489, 160,        325) /* WieldDifficulty */
     , (800489, 265,         16) /* Defenders */
     , (800489, 374,         15) /* Crit Damage */
     , (800489, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800489,  11, True ) /* IgnoreCollisions */
     , (800489,  13, True ) /* Ethereal */
     , (800489,  14, True ) /* GravityStatus */
     , (800489,  19, True ) /* Attackable */
     , (800489,  22, True ) /* Inscribable */
     , (800489,  69, True ) /* IsSellable */
     , (800489, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800489,   5,   -0.05) /* ManaRate */
     , (800489,  13,       2) /* ArmorModVsSlash */
     , (800489,  14,       2) /* ArmorModVsPierce */
     , (800489,  15,       2) /* ArmorModVsBludgeon */
     , (800489,  16,       2) /* ArmorModVsCold */
     , (800489,  17,       2) /* ArmorModVsFire */
     , (800489,  18,       2) /* ArmorModVsAcid */
     , (800489,  19,       2) /* ArmorModVsElectric */
     , (800489, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800489,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800489,   1,   33554642) /* Setup */
     , (800489,   3,  536870932) /* SoundTable */
     , (800489,   6,   67108990) /* PaletteBase */
     , (800489,   7,  268437014) /* ClothingBase */
     , (800489,   8,  100687770) /* Icon */
     , (800489,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800489,  6079,      2)  /* Legendary Storm */
     , (800489,  6080,      2)  /* Legendary Acid */
     , (800489,  6081,      2)  /* Legendary Bludgeoning */
     , (800489,  6083,      2)  /* Legendary Cold */
     , (800489,  6082,      2)  /* Legendary Fire */
     , (800489,  6084,      2)  /* Legendary Pierce */
     , (800489,  6085,      2)  /* Legendary Slash */
	 , (800489,  6107,      2)  /* Legendary Strength */
     , (800489,  6104,      2)  /* Legendary Endurance */
     , (800489,  6106,      2)  /* Legendary Quickness */
     , (800489,  6095,      2)  /* Legendary Impenetrability */
	 , (800489,  6077,      2)  /* Legendary Health Gain */
	 , (800489,  6102,      2)  /* Legendary Armor */;
