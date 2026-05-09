DELETE FROM `weenie` WHERE `class_Id` = 800198;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800198, 'Hardened Shadow Sollerets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800198,   1,          2) /* ItemType - Armor */
     , (800198,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800198,   4,      65536) /* ClothingPriority - Feet */
     , (800198,   5,        540) /* EncumbranceVal */
     , (800198,   9,        256) /* ValidLocations - FootWear */
     , (800198,  16,          1) /* ItemUseable - No */
     , (800198,  19,        75) /* Value */
     , (800198,  28,       1000) /* ArmorLevel */
     , (800198,  33,          1) /* Bonded - Bonded */
     , (800198,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800198, 106,        200) /* ItemSpellcraft */
     , (800198, 107,       1000) /* ItemCurMana */
     , (800198, 108,       1000) /* ItemMaxMana */
     , (800198, 109,        300) /* ItemDifficulty */
     , (800198, 114,          1) /* Attuned - Attuned */
     , (800198, 158,          7) /* WieldRequirements - Level */
     , (800198, 159,          1) /* WieldSkillType - Axe */
     , (800198, 160,        250) /* WieldDifficulty */
     , (800198, 265,         16) /* Defenders */
     , (800198, 370,          2) /* Crit Damage */
     , (800198, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800198,  22, True ) /* Inscribable */
     , (800198,  69, False) /* IsSellable */
     , (800198, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800198,  13,     2) /* ArmorModVsSlash */
     , (800198,  14,     2) /* ArmorModVsPierce */
     , (800198,  15,     2) /* ArmorModVsBludgeon */
     , (800198,  16,     2) /* ArmorModVsCold */
     , (800198,  17,     2) /* ArmorModVsFire */
     , (800198,  18,     2) /* ArmorModVsAcid */
     , (800198,  19,     2) /* ArmorModVsElectric */
     , (800198, 165,     2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800198,   1, 'Hardened Shadow Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800198,   1,   33554654) /* Setup */
     , (800198,   3,  536870932) /* SoundTable */
     , (800198,   6,   67108990) /* PaletteBase */
     , (800198,   7,  268437451) /* ClothingBase */
     , (800198,   8,  100691749) /* Icon */
     , (800198,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800198,  6072,      2)  /* Legendary Heavy Weapon */
     , (800198,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800198,  6050,      2)  /* Legendary Dual Weild */
	 , (800198,  6044,      2)  /* Legendary Missile Weapon */
	 , (800198,  6073,      2)  /* Legendary Two Handed */
	 , (800198,  6069,      2)  /* Legendary Shield */
	 , (800198,  6048,      2)  /* Legendary Deception */
	 , (800198,  6070,      2)  /* Legendary Sneak Attack */
	 , (800198,  6053,      2)  /* Legendary Healing */
	 , (800198,  6052,      2)  /* Legendary Fletching */;
