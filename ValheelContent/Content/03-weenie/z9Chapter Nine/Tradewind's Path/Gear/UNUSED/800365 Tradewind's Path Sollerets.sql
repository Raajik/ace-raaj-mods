DELETE FROM `weenie` WHERE `class_Id` = 800365;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800365, 'Tradewind''s Path Sollerets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800365,   1,          2) /* ItemType - Armor */
     , (800365,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (800365,   4,      65536) /* ClothingPriority - Feet */
     , (800365,   5,        319) /* EncumbranceVal */
     , (800365,   9,        256) /* ValidLocations - FootWear */
     , (800365,  16,          1) /* ItemUseable - No */
     , (800365,  19,          25) /* Value */
     , (800365,  27,         32) /* ArmorType - Metal */
     , (800365,  28,        1500) /* ArmorLevel */
     , (800365,  33,          1) /* Bonded - Bonded */
     , (800365,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800365, 106,        200) /* ItemSpellcraft */
     , (800365, 107,       1000) /* ItemCurMana */
     , (800365, 108,       1000) /* ItemMaxMana */
     , (800365, 109,        300) /* ItemDifficulty */
     , (800365, 114,          1) /* Attuned - Attuned */
     , (800365, 124,          3) /* Version */
     , (800365, 151,          2) /* HookType - Wall */
     , (800365, 158,          7) /* WieldRequirements - Level */
     , (800365, 159,          1) /* WieldSkillType - Axe */
     , (800365, 160,        300) /* WieldDifficulty */
     , (800365, 169,  185206276) /* TsysMutationData */
     , (800365, 265,         24) /* Defenders */
     , (800365, 370,          3) /* Damage */
     , (800365, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800365,  22, True ) /* Inscribable */
     , (800365, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800365,   5,  -0.033) /* ManaRate */
     , (800365,  12,     0.5) /* Shade */
     , (800365,  13,       2) /* ArmorModVsSlash */
     , (800365,  14,       2) /* ArmorModVsPierce */
     , (800365,  15,       2) /* ArmorModVsBludgeon */
     , (800365,  16,       2) /* ArmorModVsCold */
     , (800365,  17,       2) /* ArmorModVsFire */
     , (800365,  18,       2) /* ArmorModVsAcid */
     , (800365,  19,       2) /* ArmorModVsElectric */
     , (800365, 110,     1.1) /* BulkMod */
     , (800365, 111,     1.5) /* SizeMod */
     , (800365, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800365,   1, 'Tradewind''s Path Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800365,   1,   33554654) /* Setup */
     , (800365,   3,  536870932) /* SoundTable */
     , (800365,   6,   67108990) /* PaletteBase */
     , (800365,   7,  268437239) /* ClothingBase */
     , (800365,   8,  100691749) /* Icon */
     , (800365,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800365,  6072,      2)  /* Legendary Heavy Weapon */
     , (800365,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800365,  6050,      2)  /* Legendary Dual Weild */
	 , (800365,  6044,      2)  /* Legendary Missile Weapon */
	 , (800365,  6073,      2)  /* Legendary Two Handed */
	 , (800365,  6069,      2)  /* Legendary Shield */
	 , (800365,  6048,      2)  /* Legendary Deception */
	 , (800365,  6070,      2)  /* Legendary Sneak Attack */
	 , (800365,  6053,      2)  /* Legendary Healing */
	 , (800365,  6052,      2)  /* Legendary Fletching */;
