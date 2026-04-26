DELETE FROM `weenie` WHERE `class_Id` = 87153;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (87153, 'ace87153-monsterfightshirt', 2, '2024-04-21 12:18:31') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (87153,   1,          4) /* ItemType - Clothing */
     , (87153,   3,          9) /* PaletteTemplate - Green */
     , (87153,   4,        104) /* ClothingPriority - UnderwearChest, UnderwearUpperArms, UnderwearLowerArms */
     , (87153,   5,         75) /* EncumbranceVal */
     , (87153,   8,         50) /* Mass */
     , (87153,   9,         30) /* ValidLocations - ChestWear, AbdomenWear, UpperArmWear, LowerArmWear */
     , (87153,  16,          1) /* ItemUseable - No */
     , (87153,  18,          1) /* UiEffects - Magical */
     , (87153,  19,         15) /* Value */
     , (87153,  27,          1) /* ArmorType - Cloth */
     , (87153,  28,        500) /* ArmorLevel */
     , (87153,  33,          1) /* Bonded - Bonded */
     , (87153,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (87153, 106,        200) /* ItemSpellcraft */
     , (87153, 107,       1200) /* ItemCurMana */
     , (87153, 108,       1200) /* ItemMaxMana */
     , (87153, 114,          1) /* Attuned - Attuned */
     , (87153, 169,  201328144) /* TsysMutationData */
     , (87153, 370,        250) /* Damage */
     , (87153, 371,        250) /* Damage Resist */
     , (87153, 374,        250) /* Critical Damage */
     , (87153, 375,        250) /* Critical Damage Resist */
     , (87153, 376,        250) /* Heal Boost */
     , (87153, 379,        250) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (87153,  22, True ) /* Inscribable */
     , (87153, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (87153,  12,     0.1) /* Shade */
     , (87153,  13,     2.0) /* ArmorModVsSlash */
     , (87153,  14,     2.0) /* ArmorModVsPierce */
     , (87153,  15,     2.0) /* ArmorModVsBludgeon */
     , (87153,  16,     2.0) /* ArmorModVsCold */
     , (87153,  17,     2.0) /* ArmorModVsFire */
     , (87153,  18,     2.0) /* ArmorModVsAcid */
     , (87153,  19,     2.0) /* ArmorModVsElectric */
     , (87153, 165,     2.0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (87153,   1, 'Monster Fight Shirt') /* Name */
     , (87153,  16, 'A superior shirt with the logo of Monster Fights emblazoned on it.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (87153,   1,   33554883) /* Setup */
     , (87153,   3,  536870932) /* SoundTable */
     , (87153,   6,   67108990) /* PaletteBase */
     , (87153,   7,  268437342) /* ClothingBase */
     , (87153,   8,  100667377) /* Icon */
     , (87153,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (87153,  3712,      0) /* Prodigal Invulnerability */
     , (87153,  3710,      0) /* Prodigal Impenetrability */
     , (87153,  3726,      0) /* Prodigal Monster Attunement */;


