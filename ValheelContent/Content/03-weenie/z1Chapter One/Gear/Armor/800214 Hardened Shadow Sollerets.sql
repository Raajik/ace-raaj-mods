DELETE FROM `weenie` WHERE `class_Id` = 800214;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800214, 'Hardened Shadow Sollerets1', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800214,   1,          2) /* ItemType - Armor */
     , (800214,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800214,   4,      65536) /* ClothingPriority - Feet */
     , (800214,   5,        540) /* EncumbranceVal */
     , (800214,   9,        256) /* ValidLocations - FootWear */
     , (800214,  16,          1) /* ItemUseable - No */
     , (800214,  19,         15) /* Value */
     , (800214,  28,        850) /* ArmorLevel */
     , (800214,  33,          1) /* Bonded - Bonded */
     , (800214,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800214, 106,        200) /* ItemSpellcraft */
     , (800214, 107,       1000) /* ItemCurMana */
     , (800214, 108,       1000) /* ItemMaxMana */
     , (800214, 109,        300) /* ItemDifficulty */
     , (800214, 114,          1) /* Attuned - Attuned */
     , (800214, 158,          7) /* WieldRequirements - Level */
     , (800214, 159,          1) /* WieldSkillType - Axe */
     , (800214, 160,        250) /* WieldDifficulty */
     , (800214, 265,         16) /* Defenders */
     , (800214, 370,          2) /* Damage */
     , (800214, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800214,  22, True ) /* Inscribable */
     , (800214,  69, False) /* IsSellable */
     , (800214, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800214,  13,     2) /* ArmorModVsSlash */
     , (800214,  14,     2) /* ArmorModVsPierce */
     , (800214,  15,     2) /* ArmorModVsBludgeon */
     , (800214,  16,     2) /* ArmorModVsCold */
     , (800214,  17,     2) /* ArmorModVsFire */
     , (800214,  18,     2) /* ArmorModVsAcid */
     , (800214,  19,     2) /* ArmorModVsElectric */
     , (800214, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800214,   1, 'Hardened Shadow Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800214,   1,   33554654) /* Setup */
     , (800214,   3,  536870932) /* SoundTable */
     , (800214,   6,   67108990) /* PaletteBase */
     , (800214,   7,  268437451) /* ClothingBase */
     , (800214,   8,  100691749) /* Icon */
     , (800214,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800214,  6072,      2)  /* Legendary Heavy Weapon */
     , (800214,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800214,  6050,      2)  /* Legendary Dual Weild */
	 , (800214,  6044,      2)  /* Legendary Missile Weapon */
	 , (800214,  6073,      2)  /* Legendary Two Handed */
	 , (800214,  6069,      2)  /* Legendary Shield */
	 , (800214,  6048,      2)  /* Legendary Deception */
	 , (800214,  6070,      2)  /* Legendary Sneak Attack */
	 , (800214,  6053,      2)  /* Legendary Healing */
	 , (800214,  6052,      2)  /* Legendary Fletching */;
