DELETE FROM `weenie` WHERE `class_Id` = 801242;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801242, 'Ethereal Vhorma Pauldrons Soldiers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801242,   1,          2) /* ItemType - Armor */
     , (801242,   3,         92) /* PaletteTemplate - Gold */
     , (801242,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (801242,   5,        600) /* EncumbranceVal */
     , (801242,   8,        230) /* Mass */
     , (801242,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (801242,  16,          1) /* ItemUseable - No */
     , (801242,  18,          1) /* UiEffects - Magical */
     , (801242,  19,       1500) /* Value */
     , (801242,  27,         32) /* ArmorType - Metal */
     , (801242,  28,       1900) /* ArmorLevel */
     , (801242,  33,          1) /* Bonded - Normal */
     , (801242,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801242, 106,        300) /* ItemSpellcraft */
     , (801242, 107,       2204) /* ItemCurMana */
     , (801242, 108,       2500) /* ItemMaxMana */
     , (801242, 109,        425) /* ItemDifficulty */
     , (801242, 114,          1) /* Attuned - Normal */
     , (801242, 158,          7) /* WieldRequirements - Level */
     , (801242, 159,          1) /* WieldSkillType - Axe */
     , (801242, 160,        325) /* WieldDifficulty */
     , (801242, 265,         13) /* Defenders */
     , (801242, 374,         15) /* Crit Damage */
     , (801242, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801242,  11, True ) /* IgnoreCollisions */
     , (801242,  13, True ) /* Ethereal */
     , (801242,  14, True ) /* GravityStatus */
     , (801242,  19, True ) /* Attackable */
     , (801242,  22, True ) /* Inscribable */
     , (801242,  69, True ) /* IsSellable */
     , (801242, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801242,  12,    0.66) /* Shade */
     , (801242,  13,       2) /* ArmorModVsSlash */
     , (801242,  14,       2) /* ArmorModVsPierce */
     , (801242,  15,       2) /* ArmorModVsBludgeon */
     , (801242,  16,       2) /* ArmorModVsCold */
     , (801242,  17,       2) /* ArmorModVsFire */
     , (801242,  18,       2) /* ArmorModVsAcid */
     , (801242,  19,       2) /* ArmorModVsElectric */
     , (801242,  39,       1) /* DefaultScale */
     , (801242, 110,    1.15) /* BulkMod */
     , (801242, 111,       1) /* SizeMod */
     , (801242, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801242,   1, 'Ethereal Vhorma Pauldrons') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801242,   1,       33554641) /* Setup */
     , (801242,   3,      536870932) /* SoundTable */
     , (801242,   6,   671089801242) /* PaletteBase */
     , (801242,   7,      268435539) /* ClothingBase */
     , (801242,   8,      100667358) /* Icon */
     , (801242,  22,      872415275) /* PhysicsEffectTable */
     , (801242,  36,      234881042) /* MutateFilter */
     , (801242,  46,      939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801242,  6079,      2)  /* Legendary Storm */
     /* , (801242,  6080,      2)  /* Legendary Acid */
     /* , (801242,  6081,      2)  /* Legendary Bludgeoning */
     /* , (801242,  6083,      2)  /* Legendary Cold */
     , (801242,  6082,      2)  /* Legendary Fire */
     , (801242,  6084,      2)  /* Legendary Pierce */
     , (801242,  6085,      2)  /* Legendary Slash */
	 , (801242,  6107,      2)  /* Legendary Strength */
     , (801242,  6104,      2)  /* Legendary Endurance */
     /* , (801242,  6106,      2)  /* Legendary Quickness */
     /* , (801242,  6095,      2)  /* Legendary Impenetrability */
	 /* , (801242,  6077,      2)  /* Legendary Health Gain */
	 /* , (801242,  6102,      2)  /* Legendary Armor */;
