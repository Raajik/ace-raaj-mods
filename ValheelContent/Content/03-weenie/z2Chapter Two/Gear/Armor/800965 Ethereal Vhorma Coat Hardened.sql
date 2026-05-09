DELETE FROM `weenie` WHERE `class_Id` = 800965;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800965, 'Ethereal Vhorma Coat Hardened', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800965,   1,          2) /* ItemType - Armor */
     , (800965,   3,         92) /* PaletteTemplate - Gold */
     , (800965,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800965,   5,       1600) /* EncumbranceVal */
     , (800965,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800965,  16,          1) /* ItemUseable - No */
     , (800965,  18,          1) /* UiEffects - Magical */
     , (800965,  19,         30) /* Value */
     , (800965,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800965,  27,         32) /* ArmorType - Scalemail */
     , (800965,  28,       2000) /* ArmorLevel */
     , (800965,  33,          1) /* Bonded - Normal */
     , (800965,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800965, 106,        300) /* ItemSpellcraft */
     , (800965, 107,       2204) /* ItemCurMana */
     , (800965, 108,       2500) /* ItemMaxMana */
     , (800965, 109,        425) /* ItemDifficulty */
     , (800965, 114,          1) /* Attuned - Normal */
     , (800965, 151,          2) /* HookType - Wall */
     , (800965, 158,          7) /* WieldRequirements - Level */
     , (800965, 159,          1) /* WieldSkillType - Axe */
     , (800965, 160,        325) /* WieldDifficulty */
     , (800965, 265,         23) /* Defenders */
     , (800965, 374,         15) /* Crit Damage */
     , (800965, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800965,  11, True ) /* IgnoreCollisions */
     , (800965,  13, True ) /* Ethereal */
     , (800965,  14, True ) /* GravityStatus */
     , (800965,  19, True ) /* Attackable */
     , (800965,  22, True ) /* Inscribable */
     , (800965,  69, True ) /* IsSellable */
     , (800965, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800965,   5,   -0.05) /* ManaRate */
     , (800965,  13,       2) /* ArmorModVsSlash */
     , (800965,  14,       2) /* ArmorModVsPierce */
     , (800965,  15,       2) /* ArmorModVsBludgeon */
     , (800965,  16,       2) /* ArmorModVsCold */
     , (800965,  17,       2) /* ArmorModVsFire */
     , (800965,  18,       2) /* ArmorModVsAcid */
     , (800965,  19,       2) /* ArmorModVsElectric */
     , (800965, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800965,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800965,   1,   33554642) /* Setup */
     , (800965,   3,  536870932) /* SoundTable */
     , (800965,   6,   67108990) /* PaletteBase */
     , (800965,   7,  268437014) /* ClothingBase */
     , (800965,   8,  100687770) /* Icon */
     , (800965,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800965,  6079,      2)  /* Legendary Storm */
     , (800965,  6080,      2)  /* Legendary Acid */
     , (800965,  6081,      2)  /* Legendary Bludgeoning */
     , (800965,  6083,      2)  /* Legendary Cold */
     , (800965,  6082,      2)  /* Legendary Fire */
     , (800965,  6084,      2)  /* Legendary Pierce */
     , (800965,  6085,      2)  /* Legendary Slash */
	 , (800965,  6107,      2)  /* Legendary Strength */
     , (800965,  6104,      2)  /* Legendary Endurance */
     , (800965,  6106,      2)  /* Legendary Quickness */
     , (800965,  6095,      2)  /* Legendary Impenetrability */
	 , (800965,  6077,      2)  /* Legendary Health Gain */
	 , (800965,  6102,      2)  /* Legendary Armor */;
