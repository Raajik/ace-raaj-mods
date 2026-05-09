DELETE FROM `weenie` WHERE `class_Id` = 800306;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800306, 'Bael''Zharon Infused Sollerets1', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800306,   1,          2) /* ItemType - Armor */
     , (800306,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800306,   4,      65536) /* ClothingPriority - Feet */
     , (800306,   5,        540) /* EncumbranceVal */
     , (800306,   9,        256) /* ValidLocations - FootWear */
     , (800306,  16,          1) /* ItemUseable - No */
     , (800306,  19,          1) /* Value */
     , (800306,  28,        800) /* ArmorLevel */
     , (800306,  33,          1) /* Bonded - Bonded */
     , (800306,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800306, 106,        200) /* ItemSpellcraft */
     , (800306, 107,       1000) /* ItemCurMana */
     , (800306, 108,       1000) /* ItemMaxMana */
     , (800306, 109,        300) /* ItemDifficulty */
     , (800306, 114,          1) /* Attuned - Attuned */
     , (800306, 158,          7) /* WieldRequirements - Level */
     , (800306, 159,          1) /* WieldSkillType - Axe */
     , (800306, 160,        180) /* WieldDifficulty */
     , (800306, 383,          1) /* PK Damage */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800306,  22, True ) /* Inscribable */
     , (800306,  69, False) /* IsSellable */
     , (800306, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800306,   5,    -0.5) /* ManaRate */
     , (800306,  12,     0.5) /* Shade */
	 , (800306,  13,     1.2) /* ArmorModVsSlash */
     , (800306,  14,     1.2) /* ArmorModVsPierce */
     , (800306,  15,     1.2) /* ArmorModVsBludgeon */
     , (800306,  16,     1.2) /* ArmorModVsCold */
     , (800306,  17,     1.2) /* ArmorModVsFire */
     , (800306,  18,     1.2) /* ArmorModVsAcid */
     , (800306,  19,     1.2) /* ArmorModVsElectric */
     , (800306, 110,       1) /* BulkMod */
     , (800306, 111,       1) /* SizeMod */
     , (800306, 165,     1.2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800306,   1, 'Bael''Zharon Infused Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800306,   1,   33554654) /* Setup */
     , (800306,   3,  536870932) /* SoundTable */
     , (800306,   6,   67108990) /* PaletteBase */
     , (800306,   7,  268437451) /* ClothingBase */
     , (800306,   8,  100691749) /* Icon */
     , (800306,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800306,  3736,      2)  /* Prodigal Sprint */
     , (800306,  4616,      2)  /* Sprint VIII */
	 , (800306,  6071,      2)  /* Legendary Sprint */
	 , (800306,  5474,      2)  /* Queens Sprint */
	 , (800306,  6070,      2)  /* Legendary Sneak Attack */
	 , (800306,  6067,      2)  /* Legendary Recklessness */
	 , (800306,  6049,      2)  /* Legendary Dirty Fighting */;
