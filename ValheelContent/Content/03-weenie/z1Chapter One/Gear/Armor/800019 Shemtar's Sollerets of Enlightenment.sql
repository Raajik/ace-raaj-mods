DELETE FROM `weenie` WHERE `class_Id` = 800019;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800019, 'Shemtar''s Sollerets of Enlightenment', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800019,   1,          2) /* ItemType - Armor */
     , (800019,   3,         20) /* PaletteTemplate - Silver */
     , (800019,   4,      65536) /* ClothingPriority - Feet */
     , (800019,   5,        475) /* EncumbranceVal */
     , (800019,   8,        360) /* Mass */
     , (800019,   9,        256) /* ValidLocations - FootWear */
     , (800019,  16,          1) /* ItemUseable - No */
     , (800019,  19,          10) /* Value */
     , (800019,  27,         32) /* ArmorType - Metal */
     , (800019,  28,        800) /* ArmorLevel */
     , (800019,  33,          1) /* Bonded - Bonded */
     , (800019,  44,          3) /* Damage */
     , (800019,  45,          4) /* DamageType - Bludgeon */
     , (800019,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800019, 106,        350) /* ItemSpellcraft */
     , (800019, 107,        800) /* ItemCurMana */
     , (800019, 108,        800) /* ItemMaxMana */
     , (800019, 109,        220) /* ItemDifficulty */
     , (800019, 114,          1) /* Attuned - Attuned */
     , (800019, 158,          7) /* WieldRequirements - Level */
     , (800019, 159,          1) /* WieldSkillType - Axe */
     , (800019, 160,        180) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800019,  22, True ) /* Inscribable */
     , (800019,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800019,   5,  -0.033) /* ManaRate */
     , (800019,  12,    0.66) /* Shade */
     , (800019,  13,     2) /* ArmorModVsSlash */
     , (800019,  14,     2) /* ArmorModVsPierce */
     , (800019,  15,     2) /* ArmorModVsBludgeon */
     , (800019,  16,     2) /* ArmorModVsCold */
     , (800019,  17,     2) /* ArmorModVsFire */
     , (800019,  18,     2) /* ArmorModVsAcid */
     , (800019,  19,     2) /* ArmorModVsElectric */
     , (800019,  22,     1.3) /* DamageVariance */
     , (800019, 110,       1) /* BulkMod */
     , (800019, 111,       1) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800019,   1, 'Shemtar''s Sollerets of Enlightenment') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800019,   1,   33554654) /* Setup */
     , (800019,   3,  536870932) /* SoundTable */
     , (800019,   6,   67108990) /* PaletteBase */
     , (800019,   7,  268436752) /* ClothingBase */
     , (800019,   8,  100675590) /* Icon */
     , (800019,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800019,  6072,      2)  /* Legendary Heavy Weapon */
     , (800019,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800019,  6050,      2)  /* Legendary Dual Weild */
	 , (800019,  6044,      2)  /* Legendary Missile Weapon */
	 , (800019,  6073,      2)  /* Legendary Two Handed */
	 , (800019,  6069,      2)  /* Legendary Shield */
	 , (800019,  6048,      2)  /* Legendary Deception */
	 , (800019,  6070,      2)  /* Legendary Sneak Attack */
	 , (800019,  6053,      2)  /* Legendary Healing */
	 , (800019,  6052,      2)  /* Legendary Fletching */;
