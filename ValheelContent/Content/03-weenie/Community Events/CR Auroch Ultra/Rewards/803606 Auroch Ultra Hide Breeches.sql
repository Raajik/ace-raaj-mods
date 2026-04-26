DELETE FROM `weenie` WHERE `class_Id` = 803606;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803606, 'AurochUltraHideBreeches', 2, '2024-04-21 12:19:17') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803606,   1,          4) /* ItemType - Clothing */
     , (803606,   3,          9) /* PaletteTemplate - Brown */
     , (803606,   4,         19) /* ClothingPriority - Unknown, UnderwearUpperLegs, UnderwearAbdomen */
     , (803606,   5,         90) /* EncumbranceVal */
     , (803606,   8,         60) /* Mass */
     , (803606,   9,         68) /* ValidLocations - AbdomenWear, UpperLegWear */
     , (803606,  16,          1) /* ItemUseable - No */
     , (803606,  18,          1) /* UiEffects - Magical */
     , (803606,  19,         15) /* Value */
     , (803606,  27,          1) /* ArmorType - Cloth */
     , (803606,  28,        160) /* ArmorLevel */
     , (803606,  33,          1) /* Bonded - Bonded */
     , (803606,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803606, 106,        200) /* ItemSpellcraft */
     , (803606, 107,       1200) /* ItemCurMana */
     , (803606, 108,       1200) /* ItemMaxMana */
     , (803606, 114,          1) /* Attuned - Attuned */
     , (803606, 169,  201326864) /* TsysMutationData */
     , (803606, 370,        160) /* Damage */
     , (803606, 371,        160) /* Damage Resist */
     , (803606, 374,        160) /* Critical Damage */
     , (803606, 375,        160) /* Critical Damage Resist */
     , (803606, 376,        160) /* Heal Boost */
     , (803606, 379,        160) /* Vitality */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803606,  11, True ) /* IgnoreCollisions */
     , (803606,  13, True ) /* Ethereal */
     , (803606,  14, True ) /* GravityStatus */
     , (803606,  19, True ) /* Attackable */
     , (803606,  22, True ) /* Inscribable */
     , (803606, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803606,  12,     0.1) /* Shade */
     , (803606,  13,     2.0) /* ArmorModVsSlash */
     , (803606,  14,     2.0) /* ArmorModVsPierce */
     , (803606,  15,     2.0) /* ArmorModVsBludgeon */
     , (803606,  16,     2.0) /* ArmorModVsCold */
     , (803606,  17,     2.0) /* ArmorModVsFire */
     , (803606,  18,     2.0) /* ArmorModVsAcid */
     , (803606,  19,     2.0) /* ArmorModVsElectric */
     , (803606, 165,     2.0) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803606,   1, 'Auroch Ultra Hide Breeches') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803606,   1,   33554653) /* Setup */
     , (803606,   3,  536870932) /* SoundTable */
     , (803606,   6,   67108990) /* PaletteBase */
     , (803606,   7,  268436783) /* ClothingBase */
     , (803606,   8,  100667371) /* Icon */
     , (803606,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803606,  3711,      0) /* Prodigal Impregnability */
     , (803606,  3710,      0) /* Prodigal Impenetrability */
     , (803606,  3727,      0) /* Prodigal Person Attunement */;

