DELETE FROM `weenie` WHERE `class_Id` = 803922;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803922, 'Tradewind Shirt', 2, '2024-04-21 12:18:31') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803922,   1,          4) /* ItemType - Clothing */
     , (803922,   3,          9) /* PaletteTemplate - Grey */
     , (803922,   4,        104) /* ClothingPriority - UnderwearChest, UnderwearUpperArms, UnderwearLowerArms */
     , (803922,   5,         75) /* EncumbranceVal */
     , (803922,   8,         50) /* Mass */
     , (803922,   9,         30) /* ValidLocations - ChestWear, AbdomenWear, UpperArmWear, LowerArmWear */
     , (803922,  16,          1) /* ItemUseable - No */
     , (803922,  18,          0) /* UiEffects - Magical */
     , (803922,  19,         15) /* Value */
     , (803922,  27,          1) /* ArmorType - Cloth */
     , (803922,  28,        600) /* ArmorLevel */
     , (803922,  33,          1) /* Bonded - Bonded */
     , (803922,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803922, 106,        200) /* ItemSpellcraft */
     , (803922, 107,       1200) /* ItemCurMana */
     , (803922, 108,       1200) /* ItemMaxMana */
     , (803922, 114,          1) /* Attuned - Attuned */
	 , (803922, 158,          7) /* WieldRequirements - Level */
     , (803922, 160,      10000) /* WieldDifficulty */
     , (803922, 169,  201326864) /* TsysMutationData */
     , (803922, 370,       1500) /* GearDamage */
     , (803922, 371,       1500) /* GearDamageResist */
     , (803922, 374,       1500) /* GearCritDamage */
     , (803922, 375,       1500) /* GearCritDamageResist */
     , (803922, 376,       1500) /* GearHealingBoost */
     , (803922, 379,       1500) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803922,  22, True ) /* Inscribable */
     , (803922, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803922,  12,     0.1) /* Shade */
     , (803922,  13,       2) /* ArmorModVsSlash */
     , (803922,  14,       2) /* ArmorModVsPierce */
     , (803922,  15,       2) /* ArmorModVsBludgeon */
     , (803922,  16,       2) /* ArmorModVsCold */
     , (803922,  17,       2) /* ArmorModVsFire */
     , (803922,  18,       2) /* ArmorModVsAcid */
     , (803922,  19,       2) /* ArmorModVsElectric */
     , (803922, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803922,   1, 'Tradewind Shirt') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803922,   1,   33554644) /* Setup */
     , (803922,   3,  536870932) /* SoundTable */
     , (803922,   6,   67108990) /* PaletteBase */
     , (803922,   7,  268436782) /* ClothingBase */
     , (803922,   8,  100667380) /* Icon */
     , (803922,  22,  872415275) /* PhysicsEffectTable */
	 , (803922,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803922,  3710,      0)  /* Prodigal Impenetrability */
     , (803922,  3712,      0)  /* Prodigal Invulnerability */
     , (803922,  3726,      0)  /* Prodigal Monster Attunement */;
