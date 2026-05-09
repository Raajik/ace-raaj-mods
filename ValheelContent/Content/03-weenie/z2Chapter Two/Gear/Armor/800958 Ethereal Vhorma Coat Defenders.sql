DELETE FROM `weenie` WHERE `class_Id` = 800958;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800958, 'Ethereal Vhorma Coat Defenders', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800958,   1,          2) /* ItemType - Armor */
     , (800958,   3,         92) /* PaletteTemplate - Gold */
     , (800958,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800958,   5,       1600) /* EncumbranceVal */
     , (800958,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800958,  16,          1) /* ItemUseable - No */
     , (800958,  18,          1) /* UiEffects - Magical */
     , (800958,  19,         30) /* Value */
     , (800958,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800958,  27,         32) /* ArmorType - Scalemail */
     , (800958,  28,       2000) /* ArmorLevel */
     , (800958,  33,          1) /* Bonded - Normal */
     , (800958,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800958, 106,        300) /* ItemSpellcraft */
     , (800958, 107,       2204) /* ItemCurMana */
     , (800958, 108,       2500) /* ItemMaxMana */
     , (800958, 109,        425) /* ItemDifficulty */
     , (800958, 114,          1) /* Attuned - Normal */
     , (800958, 151,          2) /* HookType - Wall */
     , (800958, 158,          7) /* WieldRequirements - Level */
     , (800958, 159,          1) /* WieldSkillType - Axe */
     , (800958, 160,        325) /* WieldDifficulty */
     , (800958, 265,         16) /* Defenders */
     , (800958, 374,         15) /* Crit Damage */
     , (800958, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800958,  11, True ) /* IgnoreCollisions */
     , (800958,  13, True ) /* Ethereal */
     , (800958,  14, True ) /* GravityStatus */
     , (800958,  19, True ) /* Attackable */
     , (800958,  22, True ) /* Inscribable */
     , (800958,  69, True ) /* IsSellable */
     , (800958, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800958,   5,   -0.05) /* ManaRate */
     , (800958,  13,       2) /* ArmorModVsSlash */
     , (800958,  14,       2) /* ArmorModVsPierce */
     , (800958,  15,       2) /* ArmorModVsBludgeon */
     , (800958,  16,       2) /* ArmorModVsCold */
     , (800958,  17,       2) /* ArmorModVsFire */
     , (800958,  18,       2) /* ArmorModVsAcid */
     , (800958,  19,       2) /* ArmorModVsElectric */
     , (800958, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800958,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800958,   1,   33554642) /* Setup */
     , (800958,   3,  536870932) /* SoundTable */
     , (800958,   6,   67108990) /* PaletteBase */
     , (800958,   7,  268437014) /* ClothingBase */
     , (800958,   8,  100687770) /* Icon */
     , (800958,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800958,  6079,      2)  /* Legendary Storm */
     , (800958,  6080,      2)  /* Legendary Acid */
     , (800958,  6081,      2)  /* Legendary Bludgeoning */
     , (800958,  6083,      2)  /* Legendary Cold */
     , (800958,  6082,      2)  /* Legendary Fire */
     , (800958,  6084,      2)  /* Legendary Pierce */
     , (800958,  6085,      2)  /* Legendary Slash */
	 , (800958,  6107,      2)  /* Legendary Strength */
     , (800958,  6104,      2)  /* Legendary Endurance */
     , (800958,  6106,      2)  /* Legendary Quickness */
     , (800958,  6095,      2)  /* Legendary Impenetrability */
	 , (800958,  6077,      2)  /* Legendary Health Gain */
	 , (800958,  6102,      2)  /* Legendary Armor */;
