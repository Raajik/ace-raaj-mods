DELETE FROM `weenie` WHERE `class_Id` = 800215;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800215, 'Hardened Shadow Gauntlets1', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800215,   1,          2) /* ItemType - Armor */
     , (800215,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800215,   4,      32768) /* ClothingPriority - Hands */
     , (800215,   5,        919) /* EncumbranceVal */
     , (800215,   9,         32) /* ValidLocations - HandWear */
     , (800215,  16,          1) /* ItemUseable - No */
     , (800215,  19,         15) /* Value */
     , (800215,  28,        850) /* ArmorLevel */
     , (800215,  33,          1) /* Bonded - Bonded */
     , (800215,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800215, 106,        200) /* ItemSpellcraft */
     , (800215, 107,       1000) /* ItemCurMana */
     , (800215, 108,       1000) /* ItemMaxMana */
     , (800215, 109,        300) /* ItemDifficulty */
     , (800215, 114,          1) /* Attuned - Attuned */
     , (800215, 158,          7) /* WieldRequirements - Level */
     , (800215, 159,          1) /* WieldSkillType - Axe */
     , (800215, 160,        250) /* WieldDifficulty */
     , (800215, 265,         16) /* EquipmentSetId - Defenders */
     , (800215, 370,          2) /* GearDamage */
     , (800215, 379,          5) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800215,  22, True ) /* Inscribable */
     , (800215,  69, False) /* IsSellable */
     , (800215, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800215,  13,       2) /* ArmorModVsSlash */
     , (800215,  14,       2) /* ArmorModVsPierce */
     , (800215,  15,       2) /* ArmorModVsBludgeon */
     , (800215,  16,       2) /* ArmorModVsCold */
     , (800215,  17,       2) /* ArmorModVsFire */
     , (800215,  18,       2) /* ArmorModVsAcid */
     , (800215,  19,       2) /* ArmorModVsElectric */
     , (800215, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800215,   1, 'Hardened Shadow Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800215,   1,   33554648) /* Setup */
     , (800215,   3,  536870932) /* SoundTable */
     , (800215,   6,   67108990) /* PaletteBase */
     , (800215,   7,  268437449) /* ClothingBase */
     , (800215,   8,  100691733) /* Icon */
     , (800215,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800215,  6046,      2)  /* Legendary Creature Enchantment Aptitude */
     , (800215,  6056,      2)  /* Legendary Item Enchantment Aptitude */
     , (800215,  6060,      2)  /* Legendary Life Magic Aptitude */
     , (800215,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (800215,  6074,      2)  /* Legendary Void Magic Aptitude */
     , (800215,  6075,      2)  /* Legendary War Magic Aptitude */
     , (800215,  6102,      2)  /* Legendary Armor */;
