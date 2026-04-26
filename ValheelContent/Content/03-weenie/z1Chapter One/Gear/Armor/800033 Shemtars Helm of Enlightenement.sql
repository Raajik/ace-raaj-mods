DELETE FROM `weenie` WHERE `class_Id` = 800033;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800033, 'shemtarshelmet', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800033,   1,          2) /* ItemType - Armor */
     , (800033,   4,      16384) /* ClothingPriority - Head */
     , (800033,   5,        500) /* EncumbranceVal */
     , (800033,   9,          1) /* ValidLocations - HeadWear */
     , (800033,  16,          1) /* ItemUseable - No */
     , (800033,  18,          1) /* UiEffects - Magical */
     , (800033,  19,          10) /* Value */
     , (800033,  28,        800) /* ArmorLevel */
     , (800033,  33,          1) /* Bonded - Normal */
     , (800033,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800033, 106,        300) /* ItemSpellcraft */
     , (800033, 107,       2400) /* ItemCurMana */
     , (800033, 108,       2400) /* ItemMaxMana */
     , (800033, 109,        220) /* ItemDifficulty */
     , (800033, 114,          1) /* Attuned - Normal */
     , (800033, 158,          7) /* WieldRequirements - Level */
     , (800033, 159,          1) /* WieldSkillType - Axe */
     , (800033, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800033,  11, True ) /* IgnoreCollisions */
     , (800033,  13, True ) /* Ethereal */
     , (800033,  14, True ) /* GravityStatus */
     , (800033,  19, True ) /* Attackable */
     , (800033,  22, True ) /* Inscribable */
     , (800033,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800033,   5,   -0.05) /* ManaRate */
     , (800033,  13,       2) /* ArmorModVsSlash */
     , (800033,  14,       2) /* ArmorModVsPierce */
     , (800033,  15,       2) /* ArmorModVsBludgeon */
     , (800033,  16,       2) /* ArmorModVsCold */
     , (800033,  17,       2) /* ArmorModVsFire */
     , (800033,  18,       2) /* ArmorModVsAcid */
     , (800033,  19,       2) /* ArmorModVsElectric */
     , (800033, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800033,   1, 'Shemtar''s Helm of Enlightenment') /* Name */
     , (800033,  16, 'Pretty badass helm.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800033,   1,   33559353) /* Setup */
     , (800033,   3,  536870932) /* SoundTable */
     , (800033,   7,  268436952) /* ClothingBase */
     , (800033,   8,  100686476) /* Icon */
     , (800033,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800033,  6125,      2)  /* Legendary Summoning */
     , (800033,  6055,      2)  /* Legendary Invulnerability */
     , (800033,  6063,      2)  /* Legendary Magic Resistence */
     , (800033,  6054,      2)  /* Legendary Impregnability */
     , (800033,  6102,      2)  /* Legendary Armor */
     , (800033,  6049,      2)  /* Legendary Dirty Fighting Prowess */;
