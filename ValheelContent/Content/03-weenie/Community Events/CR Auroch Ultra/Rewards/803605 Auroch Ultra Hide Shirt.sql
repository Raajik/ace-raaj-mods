DELETE FROM `weenie` WHERE `class_Id` = 803605;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803605, 'AurochUltraHideShirt', 2, '2024-04-21 12:18:31') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803605,   1,          4) /* ItemType - Clothing */
     , (803605,   3,          9) /* PaletteTemplate - Green */
     , (803605,   4,        104) /* ClothingPriority - UnderwearChest, UnderwearUpperArms, UnderwearLowerArms */
     , (803605,   5,         75) /* EncumbranceVal */
     , (803605,   8,         50) /* Mass */
     , (803605,   9,         30) /* ValidLocations - ChestWear, AbdomenWear, UpperArmWear, LowerArmWear */
     , (803605,  16,          1) /* ItemUseable - No */
     , (803605,  18,          1) /* UiEffects - Magical */
     , (803605,  19,         15) /* Value */
     , (803605,  27,          1) /* ArmorType - Cloth */
     , (803605,  28,        160) /* ArmorLevel */
     , (803605,  33,          1) /* Bonded - Bonded */
     , (803605,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803605, 106,        200) /* ItemSpellcraft */
     , (803605, 107,       1200) /* ItemCurMana */
     , (803605, 108,       1200) /* ItemMaxMana */
     , (803605, 114,          1) /* Attuned - Attuned */
     , (803605, 169,  201328144) /* TsysMutationData */
     , (803605, 370,        160) /* Damage */
     , (803605, 371,        160) /* Damage Resist */
     , (803605, 374,        160) /* Critical Damage */
     , (803605, 375,        160) /* Critical Damage Resist */
     , (803605, 376,        160) /* Heal Boost */
     , (803605, 379,        160) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803605,  22, True ) /* Inscribable */
     , (803605, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803605,  12,     0.1) /* Shade */
     , (803605,  13,     2.0) /* ArmorModVsSlash */
     , (803605,  14,     2.0) /* ArmorModVsPierce */
     , (803605,  15,     2.0) /* ArmorModVsBludgeon */
     , (803605,  16,     2.0) /* ArmorModVsCold */
     , (803605,  17,     2.0) /* ArmorModVsFire */
     , (803605,  18,     2.0) /* ArmorModVsAcid */
     , (803605,  19,     2.0) /* ArmorModVsElectric */
     , (803605, 165,     2.0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803605,   1, 'Auroch Ultra Hide Shirt') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803605,   1,   33554644) /* Setup */
     , (803605,   3,  536870932) /* SoundTable */
     , (803605,   6,   67108990) /* PaletteBase */
     , (803605,   7,  268436782) /* ClothingBase */
     , (803605,   8,  100667380) /* Icon */
     , (803605,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803605,  3712,      0) /* Prodigal Invulnerability */
     , (803605,  3710,      0) /* Prodigal Impenetrability */
     , (803605,  3726,      0) /* Prodigal Monster Attunement */;

