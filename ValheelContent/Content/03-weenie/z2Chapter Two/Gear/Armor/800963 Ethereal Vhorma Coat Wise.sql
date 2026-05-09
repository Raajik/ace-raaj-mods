DELETE FROM `weenie` WHERE `class_Id` = 800963;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800963, 'Ethereal Vhorma Coat Wise', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800963,   1,          2) /* ItemType - Armor */
     , (800963,   3,         92) /* PaletteTemplate - Gold */
     , (800963,   4,      15360) /* ClothingPriority - OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms */
     , (800963,   5,       1600) /* EncumbranceVal */
     , (800963,   9,       7680) /* ValidLocations - ChestArmor, AbdomenArmor, UpperArmArmor, LowerArmArmor */
     , (800963,  16,          1) /* ItemUseable - No */
     , (800963,  18,          1) /* UiEffects - Magical */
     , (800963,  19,         30) /* Value */
     , (800963,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800963,  27,         32) /* ArmorType - Scalemail */
     , (800963,  28,       2000) /* ArmorLevel */
     , (800963,  33,          1) /* Bonded - Normal */
     , (800963,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800963, 106,        300) /* ItemSpellcraft */
     , (800963, 107,       2204) /* ItemCurMana */
     , (800963, 108,       2500) /* ItemMaxMana */
     , (800963, 109,        425) /* ItemDifficulty */
     , (800963, 114,          1) /* Attuned - Normal */
     , (800963, 151,          2) /* HookType - Wall */
     , (800963, 158,          7) /* WieldRequirements - Level */
     , (800963, 159,          1) /* WieldSkillType - Axe */
     , (800963, 160,        325) /* WieldDifficulty */
     , (800963, 265,         21) /* Defenders */
     , (800963, 374,         15) /* Crit Damage */
     , (800963, 379,         20) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800963,  11, True ) /* IgnoreCollisions */
     , (800963,  13, True ) /* Ethereal */
     , (800963,  14, True ) /* GravityStatus */
     , (800963,  19, True ) /* Attackable */
     , (800963,  22, True ) /* Inscribable */
     , (800963,  69, True ) /* IsSellable */
     , (800963, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800963,   5,   -0.05) /* ManaRate */
     , (800963,  13,       2) /* ArmorModVsSlash */
     , (800963,  14,       2) /* ArmorModVsPierce */
     , (800963,  15,       2) /* ArmorModVsBludgeon */
     , (800963,  16,       2) /* ArmorModVsCold */
     , (800963,  17,       2) /* ArmorModVsFire */
     , (800963,  18,       2) /* ArmorModVsAcid */
     , (800963,  19,       2) /* ArmorModVsElectric */
     , (800963, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800963,   1, 'Ethereal Vhorma Coat') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800963,   1,   33554642) /* Setup */
     , (800963,   3,  536870932) /* SoundTable */
     , (800963,   6,   67108990) /* PaletteBase */
     , (800963,   7,  268437014) /* ClothingBase */
     , (800963,   8,  100687770) /* Icon */
     , (800963,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800963,  6079,      2)  /* Legendary Storm */
     , (800963,  6080,      2)  /* Legendary Acid */
     , (800963,  6081,      2)  /* Legendary Bludgeoning */
     , (800963,  6083,      2)  /* Legendary Cold */
     , (800963,  6082,      2)  /* Legendary Fire */
     , (800963,  6084,      2)  /* Legendary Pierce */
     , (800963,  6085,      2)  /* Legendary Slash */
	 , (800963,  6107,      2)  /* Legendary Strength */
     , (800963,  6104,      2)  /* Legendary Endurance */
     , (800963,  6106,      2)  /* Legendary Quickness */
     , (800963,  6095,      2)  /* Legendary Impenetrability */
	 , (800963,  6077,      2)  /* Legendary Health Gain */
	 , (800963,  6102,      2)  /* Legendary Armor */;
