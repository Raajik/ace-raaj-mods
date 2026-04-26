DELETE FROM `weenie` WHERE `class_Id` = 800015;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800015, 'ace800015-shemcoat', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800015,   1,          2) /* ItemType - Armor */
     , (800015,   3,         39) /* PaletteTemplate - Black */
     , (800015,   4,      13312) /* ClothingPriority - OuterwearChest, OuterwearUpperArms, OuterwearLowerArms */
     , (800015,   5,       1600) /* EncumbranceVal */
     , (800015,   9,       6656) /* ValidLocations - ChestArmor, UpperArmArmor, LowerArmArmor */
     , (800015,  16,          1) /* ItemUseable - No */
     , (800015,  18,          1) /* UiEffects - Magical */
     , (800015,  19,         10) /* Value */
     , (800015,  28,        800) /* ArmorLevel */
     , (800015,  33,          1) /* Bonded - Bonded */
     , (800015,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800015, 106,        310) /* ItemSpellcraft */
     , (800015, 107,       2400) /* ItemCurMana */
     , (800015, 108,       2400) /* ItemMaxMana */
     , (800015, 114,          1) /* Attuned - Attuned */
     , (800015, 115,        220) /* ItemSkillLevelLimit */
     , (800015, 158,          7) /* WieldRequirements - Level */
     , (800015, 159,          1) /* WieldSkillType - Axe */
     , (800015, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800015,  11, True ) /* IgnoreCollisions */
     , (800015,  13, True ) /* Ethereal */
     , (800015,  14, True ) /* GravityStatus */
     , (800015,  19, True ) /* Attackable */
     , (800015,  22, True ) /* Inscribable */
     , (800015,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800015,   5,  -0.083) /* ManaRate */
     , (800015,  13,     2) /* ArmorModVsSlash */
     , (800015,  14,     2) /* ArmorModVsPierce */
     , (800015,  15,     2) /* ArmorModVsBludgeon */
     , (800015,  16,       2) /* ArmorModVsCold */
     , (800015,  17,       2) /* ArmorModVsFire */
     , (800015,  18,       2) /* ArmorModVsAcid */
     , (800015,  19,       2) /* ArmorModVsElectric */
     , (800015, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800015,   1, 'Shemtar''s Coat of Enlightenment') /* Name */
     , (800015,  16, 'Pretty badass coat.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800015,   1, 0x020001A6) /* Setup */
     , (800015,   3, 0x20000014) /* SoundTable */
     , (800015,   7, 0x1000066D) /* ClothingBase */
     , (800015,   8, 0x060062E9) /* Icon */
     , (800015,  22, 0x3400002B) /* PhysicsEffectTable */
     , (800015,  37,          6) /* ItemSkillLimit - MeleeDefense */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800015,  6107,      2)  /* Legendary Strength */
     , (800015,  6104,      2)  /* Legendary Endurance */
     , (800015,  6106,      2)  /* Legendary Quickness */
     , (800015,  6095,      2)  /* Legendary Impenetrability */
	 , (800015,  6077,      2)  /* Legendary Health Gain */
	 , (800015,  6102,      2)  /* Legendary Armor */;
