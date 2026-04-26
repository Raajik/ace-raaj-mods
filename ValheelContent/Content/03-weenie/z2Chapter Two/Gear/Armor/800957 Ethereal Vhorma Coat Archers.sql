DELETE FROM `weenie` WHERE `class_Id` = 800957;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800957, 'Ethereal Vhorma Coat Archers', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800957,   1,          2) /* ItemType - Armor */
     , (800957,   3,         92) /* PaletteTemplate - Gold */
     , (800957,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800957,   5,       1600) /* EncumbranceVal */
     , (800957,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800957,  16,          1) /* ItemUseable - No */
     , (800957,  18,          1) /* UiEffects - Magical */
     , (800957,  19,         30) /* Value */
     , (800957,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800957,  27,         32) /* ArmorType - Scalemail */
     , (800957,  28,       2000) /* ArmorLevel */
     , (800957,  33,          1) /* Bonded - Normal */
     , (800957,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800957, 106,        300) /* ItemSpellcraft */
     , (800957, 107,       2204) /* ItemCurMana */
     , (800957, 108,       2500) /* ItemMaxMana */
     , (800957, 109,        425) /* ItemDifficulty */
     , (800957, 114,          1) /* Attuned - Normal */
     , (800957, 151,          2) /* HookType - Wall */
     , (800957, 158,          7) /* WieldRequirements - Level */
     , (800957, 159,          1) /* WieldSkillType - Axe */
     , (800957, 160,        325) /* WieldDifficulty */
     , (800957, 265,         15) /* Defenders */
     , (800957, 374,         15) /* Crit Damage */
     , (800957, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800957,  11, True ) /* IgnoreCollisions */
     , (800957,  13, True ) /* Ethereal */
     , (800957,  14, True ) /* GravityStatus */
     , (800957,  19, True ) /* Attackable */
     , (800957,  22, True ) /* Inscribable */
     , (800957,  69, True ) /* IsSellable */
     , (800957, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800957,   5,   -0.05) /* ManaRate */
     , (800957,  13,       2) /* ArmorModVsSlash */
     , (800957,  14,       2) /* ArmorModVsPierce */
     , (800957,  15,       2) /* ArmorModVsBludgeon */
     , (800957,  16,       2) /* ArmorModVsCold */
     , (800957,  17,       2) /* ArmorModVsFire */
     , (800957,  18,       2) /* ArmorModVsAcid */
     , (800957,  19,       2) /* ArmorModVsElectric */
     , (800957, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800957,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800957,   1,   33554642) /* Setup */
     , (800957,   3,  536870932) /* SoundTable */
     , (800957,   6,   67108990) /* PaletteBase */
     , (800957,   7,  268437014) /* ClothingBase */
     , (800957,   8,  100687770) /* Icon */
     , (800957,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800957,  6079,      2)  /* Legendary Storm */
     , (800957,  6080,      2)  /* Legendary Acid */
     , (800957,  6081,      2)  /* Legendary Bludgeoning */
     , (800957,  6083,      2)  /* Legendary Cold */
     , (800957,  6082,      2)  /* Legendary Fire */
     , (800957,  6084,      2)  /* Legendary Pierce */
     , (800957,  6085,      2)  /* Legendary Slash */
	 , (800957,  6107,      2)  /* Legendary Strength */
     , (800957,  6104,      2)  /* Legendary Endurance */
     , (800957,  6106,      2)  /* Legendary Quickness */
     , (800957,  6095,      2)  /* Legendary Impenetrability */
	 , (800957,  6077,      2)  /* Legendary Health Gain */
	 , (800957,  6102,      2)  /* Legendary Armor */;
