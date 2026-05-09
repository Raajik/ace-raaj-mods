DELETE FROM `weenie` WHERE `class_Id` = 803561;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803561, 'Elemental Shirt', 2, '2024-04-21 12:18:31') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803561,   1,          4) /* ItemType - Clothing */
     , (803561,   3,          9) /* PaletteTemplate - Green */
     , (803561,   4,        104) /* ClothingPriority - UnderwearChest, UnderwearUpperArms, UnderwearLowerArms */
     , (803561,   5,         75) /* EncumbranceVal */
     , (803561,   8,         50) /* Mass */
     , (803561,   9,         30) /* ValidLocations - ChestWear, AbdomenWear, UpperArmWear, LowerArmWear */
     , (803561,  16,          1) /* ItemUseable - No */
     , (803561,  18,          1) /* UiEffects - Magical */
     , (803561,  19,         15) /* Value */
     , (803561,  27,          1) /* ArmorType - Cloth */
     , (803561,  28,        500) /* ArmorLevel */
     , (803561,  33,          1) /* Bonded - Bonded */
     , (803561,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803561, 106,        200) /* ItemSpellcraft */
     , (803561, 107,       1200) /* ItemCurMana */
     , (803561, 108,       1200) /* ItemMaxMana */
     , (803561, 114,          1) /* Attuned - Attuned */
     , (803561, 169,  201328144) /* TsysMutationData */
     , (803561, 370,        500) /* Damage */
     , (803561, 371,        500) /* Damage Resist */
     , (803561, 374,        500) /* Critical Damage */
     , (803561, 375,        500) /* Critical Damage Resist */
     , (803561, 376,        500) /* Heal Boost */
     , (803561, 379,        500) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803561,  22, True ) /* Inscribable */
     , (803561, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803561,  12,     0.1) /* Shade */
     , (803561,  13,     2.0) /* ArmorModVsSlash */
     , (803561,  14,     2.0) /* ArmorModVsPierce */
     , (803561,  15,     2.0) /* ArmorModVsBludgeon */
     , (803561,  16,     2.0) /* ArmorModVsCold */
     , (803561,  17,     2.0) /* ArmorModVsFire */
     , (803561,  18,     2.0) /* ArmorModVsAcid */
     , (803561,  19,     2.0) /* ArmorModVsElectric */
     , (803561, 165,     2.0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803561,   1, 'Elemental Shirt') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803561,   1,   33554644) /* Setup */
     , (803561,   3,  536870932) /* SoundTable */
     , (803561,   6,   67108990) /* PaletteBase */
     , (803561,   7,  268436782) /* ClothingBase */
     , (803561,   8,  100667380) /* Icon */
     , (803561,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803561,  3712,      0) /* Prodigal Invulnerability */
     , (803561,  3710,      0) /* Prodigal Impenetrability */
     , (803561,  3726,      0) /* Prodigal Monster Attunement */;

