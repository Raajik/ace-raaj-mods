DELETE FROM `weenie` WHERE `class_Id` = 800197;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800197, 'Hardened Shadow Gauntlets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800197,   1,          2) /* ItemType - Armor */
     , (800197,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800197,   4,      32768) /* ClothingPriority - Hands */
     , (800197,   5,        919) /* EncumbranceVal */
     , (800197,   9,         32) /* ValidLocations - HandWear */
     , (800197,  16,          1) /* ItemUseable - No */
     , (800197,  19,        75) /* Value */
     , (800197,  28,       1000) /* ArmorLevel */
     , (800197,  33,          1) /* Bonded - Bonded */
     , (800197,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800197, 106,        200) /* ItemSpellcraft */
     , (800197, 107,       1000) /* ItemCurMana */
     , (800197, 108,       1000) /* ItemMaxMana */
     , (800197, 109,        300) /* ItemDifficulty */
     , (800197, 114,          1) /* Attuned - Attuned */
     , (800197, 158,          7) /* WieldRequirements - Level */
     , (800197, 159,          1) /* WieldSkillType - Axe */
     , (800197, 160,        250) /* WieldDifficulty */
     , (800197, 265,         16) /* Defenders */
     , (800197, 370,          2) /* Crit Damage */
     , (800197, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800197,  22, True ) /* Inscribable */
     , (800197,  69, False) /* IsSellable */
     , (800197, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800197,  13,     2) /* ArmorModVsSlash */
     , (800197,  14,     2) /* ArmorModVsPierce */
     , (800197,  15,     2) /* ArmorModVsBludgeon */
     , (800197,  16,     2) /* ArmorModVsCold */
     , (800197,  17,     2) /* ArmorModVsFire */
     , (800197,  18,     2) /* ArmorModVsAcid */
     , (800197,  19,     2) /* ArmorModVsElectric */
     , (800197, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800197,   1, 'Hardened Shadow Gauntlets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800197,   1,   33554648) /* Setup */
     , (800197,   3,  536870932) /* SoundTable */
     , (800197,   6,   67108990) /* PaletteBase */
     , (800197,   7,  268437449) /* ClothingBase */
     , (800197,   8,  100691733) /* Icon */
     , (800197,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800197,  6075,      2)  /* Legendary War Magic */
     , (800197,  6046,      2)  /* Legendary Creature Magic */
     , (800197,  6056,      2)  /* Legendary Item Magic */
     , (800197,  6060,      2)  /* Legendary Life Magic */
	 , (800197,  6074,      2)  /* Legendary Void Magic */
	 , (800197,  6064,      2)  /* Legendary Mana Conversion Prowess */
	 , (800197,  6102,      2)  /* Legendary Armor */;
