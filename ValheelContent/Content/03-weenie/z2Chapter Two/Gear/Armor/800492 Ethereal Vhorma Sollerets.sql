DELETE FROM `weenie` WHERE `class_Id` = 800492;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800492, 'Ethereal Vhorma Sollerets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800492,   1,          2) /* ItemType - Armor */
     , (800492,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800492,   4,      65536) /* ClothingPriority - Feet */
     , (800492,   5,        319) /* EncumbranceVal */
     , (800492,   9,        256) /* ValidLocations - FootWear */
     , (800492,  16,          1) /* ItemUseable - No */
     , (800492,  18,          1) /* UiEffects - Magical */
     , (800492,  19,         30) /* Value */
     , (800492,  27,         32) /* ArmorType - Metal */
     , (800492,  28,       2000) /* ArmorLevel */
     , (800492,  33,          1) /* Bonded - Bonded */
     , (800492,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800492, 106,        200) /* ItemSpellcraft */
     , (800492, 107,       1000) /* ItemCurMana */
     , (800492, 108,       1000) /* ItemMaxMana */
     , (800492, 109,        425) /* ItemDifficulty */
     , (800492, 114,          1) /* Attuned - Attuned */
     , (800492, 124,          3) /* Version */
     , (800492, 151,          2) /* HookType - Wall */
     , (800492, 158,          7) /* WieldRequirements - Level */
     , (800492, 159,          1) /* WieldSkillType - Axe */
     , (800492, 160,        325) /* WieldDifficulty */
     , (800492, 169,  185206276) /* TsysMutationData */
     , (800492, 265,         16) /* Defenders */
     , (800492, 370,         10) /* Damage */
     , (800492, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800492,  22, True ) /* Inscribable */
     , (800492, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800492,   5,  -0.033) /* ManaRate */
     , (800492,  12,     0.5) /* Shade */
     , (800492,  13,       2) /* ArmorModVsSlash */
     , (800492,  14,       2) /* ArmorModVsPierce */
     , (800492,  15,       2) /* ArmorModVsBludgeon */
     , (800492,  16,       2) /* ArmorModVsCold */
     , (800492,  17,       2) /* ArmorModVsFire */
     , (800492,  18,       2) /* ArmorModVsAcid */
     , (800492,  19,       2) /* ArmorModVsElectric */
     , (800492, 110,     1.1) /* BulkMod */
     , (800492, 111,     1.5) /* SizeMod */
     , (800492, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800492,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800492,   1,   33554654) /* Setup */
     , (800492,   3,  536870932) /* SoundTable */
     , (800492,   6,   67108990) /* PaletteBase */
     , (800492,   7,  268437239) /* ClothingBase */
     , (800492,   8,  100691749) /* Icon */
     , (800492,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800492,  6072,      2)  /* Legendary Heavy Weapon */
     , (800492,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800492,  6050,      2)  /* Legendary Dual Weild */
	 , (800492,  6044,      2)  /* Legendary Missile Weapon */
	 , (800492,  6073,      2)  /* Legendary Two Handed */
	 , (800492,  6069,      2)  /* Legendary Shield */
	 , (800492,  6048,      2)  /* Legendary Deception */
	 , (800492,  6070,      2)  /* Legendary Sneak Attack */
	 , (800492,  6053,      2)  /* Legendary Healing */
	 , (800492,  6052,      2)  /* Legendary Fletching */;
