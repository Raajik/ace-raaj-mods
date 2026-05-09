DELETE FROM `weenie` WHERE `class_Id` = 803560;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803560, 'Elemental Breeches', 2, '2024-04-21 12:19:17') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803560,   1,          4) /* ItemType - Clothing */
     , (803560,   3,          9) /* PaletteTemplate - Brown */
     , (803560,   4,         19) /* ClothingPriority - Unknown, UnderwearUpperLegs, UnderwearAbdomen */
     , (803560,   5,         90) /* EncumbranceVal */
     , (803560,   8,         60) /* Mass */
     , (803560,   9,         68) /* ValidLocations - AbdomenWear, UpperLegWear */
     , (803560,  16,          1) /* ItemUseable - No */
     , (803560,  18,          1) /* UiEffects - Magical */
     , (803560,  19,         15) /* Value */
     , (803560,  27,          1) /* ArmorType - Cloth */
     , (803560,  28,        500) /* ArmorLevel */
     , (803560,  33,          1) /* Bonded - Bonded */
     , (803560,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803560, 106,        200) /* ItemSpellcraft */
     , (803560, 107,       1200) /* ItemCurMana */
     , (803560, 108,       1200) /* ItemMaxMana */
     , (803560, 114,          1) /* Attuned - Attuned */
     , (803560, 169,  201326864) /* TsysMutationData */
     , (803560, 370,        500) /* Damage */
     , (803560, 371,        500) /* Damage Resist */
     , (803560, 374,        500) /* Critical Damage */
     , (803560, 375,        500) /* Critical Damage Resist */
     , (803560, 376,        500) /* Heal Boost */
     , (803560, 379,        500) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803560,  11, True ) /* IgnoreCollisions */
     , (803560,  13, True ) /* Ethereal */
     , (803560,  14, True ) /* GravityStatus */
     , (803560,  19, True ) /* Attackable */
     , (803560,  22, True ) /* Inscribable */
     , (803560, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803560,  12,     0.1) /* Shade */
     , (803560,  13,     2.0) /* ArmorModVsSlash */
     , (803560,  14,     2.0) /* ArmorModVsPierce */
     , (803560,  15,     2.0) /* ArmorModVsBludgeon */
     , (803560,  16,     2.0) /* ArmorModVsCold */
     , (803560,  17,     2.0) /* ArmorModVsFire */
     , (803560,  18,     2.0) /* ArmorModVsAcid */
     , (803560,  19,     2.0) /* ArmorModVsElectric */
     , (803560, 165,     2.0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803560,   1, 'Elemental Breeches') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803560,   1,   33554653) /* Setup */
     , (803560,   3,  536870932) /* SoundTable */
     , (803560,   6,   67108990) /* PaletteBase */
     , (803560,   7,  268436783) /* ClothingBase */
     , (803560,   8,  100667371) /* Icon */
     , (803560,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803560,  3711,      0) /* Prodigal Impregnability */
     , (803560,  3710,      0) /* Prodigal Impenetrability */
     , (803560,  3727,      0) /* Prodigal Person Attunement */;

