DELETE FROM `weenie` WHERE `class_Id` = 800482;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800482, 'Vhorma Coat', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800482,   1,          2) /* ItemType - Armor */
     , (800482,   3,         86) /* PaletteTemplate - Gold */
     , (800482,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800482,   5,       1600) /* EncumbranceVal */
     , (800482,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800482,  16,          1) /* ItemUseable - No */
     , (800482,  19,         500) /* Value */
     , (800482,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800482,  27,         32) /* ArmorType - Scalemail */
     , (800482,  28,       1725) /* ArmorLevel */
     , (800482,  33,          1) /* Bonded - Normal */
     , (800482,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800482, 106,        300) /* ItemSpellcraft */
     , (800482, 107,       2204) /* ItemCurMana */
     , (800482, 108,       2500) /* ItemMaxMana */
     , (800482, 109,        400) /* ItemDifficulty */
     , (800482, 114,          1) /* Attuned - Normal */
     , (800482, 151,          2) /* HookType - Wall */
     , (800482, 158,          7) /* WieldRequirements - Level */
     , (800482, 159,          1) /* WieldSkillType - Axe */
     , (800482, 160,        300) /* WieldDifficulty */
     , (800482, 265,         24) /* Defenders */
     , (800482, 374,          9) /* Crit Damage */
     , (800482, 379,         16) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800482,  11, True ) /* IgnoreCollisions */
     , (800482,  13, True ) /* Ethereal */
     , (800482,  14, True ) /* GravityStatus */
     , (800482,  19, True ) /* Attackable */
     , (800482,  22, True ) /* Inscribable */
     , (800482,  69, True ) /* IsSellable */
     , (800482, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800482,   5,   -0.05) /* ManaRate */
     , (800482,  13,       2) /* ArmorModVsSlash */
     , (800482,  14,       2) /* ArmorModVsPierce */
     , (800482,  15,       2) /* ArmorModVsBludgeon */
     , (800482,  16,       2) /* ArmorModVsCold */
     , (800482,  17,       2) /* ArmorModVsFire */
     , (800482,  18,       2) /* ArmorModVsAcid */
     , (800482,  19,       2) /* ArmorModVsElectric */
     , (800482, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800482,   1, 'Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800482,   1,   33554642) /* Setup */
     , (800482,   3,  536870932) /* SoundTable */
     , (800482,   6,   67108990) /* PaletteBase */
     , (800482,   7,  268437014) /* ClothingBase */
     , (800482,   8,  100687770) /* Icon */
     , (800482,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800482,  6079,      2)  /* Legendary Storm */
     , (800482,  6080,      2)  /* Legendary Acid */
     , (800482,  6081,      2)  /* Legendary Bludgeoning */
     , (800482,  6083,      2)  /* Legendary Cold */
     , (800482,  6082,      2)  /* Legendary Fire */
     , (800482,  6084,      2)  /* Legendary Pierce */
     , (800482,  6085,      2)  /* Legendary Slash */
	 , (800482,  6107,      2)  /* Legendary Strength */
     , (800482,  6104,      2)  /* Legendary Endurance */
     , (800482,  6106,      2)  /* Legendary Quickness */
     , (800482,  6095,      2)  /* Legendary Impenetrability */
	 , (800482,  6077,      2)  /* Legendary Health Gain */
	 , (800482,  6102,      2)  /* Legendary Armor */;
