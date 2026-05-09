DELETE FROM `weenie` WHERE `class_Id` = 800970;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800970, 'Ethereal Vhorma Sollerets Defenders', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800970,   1,          2) /* ItemType - Armor */
     , (800970,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800970,   4,      65536) /* ClothingPriority - Feet */
     , (800970,   5,        319) /* EncumbranceVal */
     , (800970,   9,        256) /* ValidLocations - FootWear */
     , (800970,  16,          1) /* ItemUseable - No */
     , (800970,  18,          1) /* UiEffects - Magical */
     , (800970,  19,         30) /* Value */
     , (800970,  27,         32) /* ArmorType - Metal */
     , (800970,  28,       2000) /* ArmorLevel */
     , (800970,  33,          1) /* Bonded - Bonded */
     , (800970,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800970, 106,        200) /* ItemSpellcraft */
     , (800970, 107,       1000) /* ItemCurMana */
     , (800970, 108,       1000) /* ItemMaxMana */
     , (800970, 109,        425) /* ItemDifficulty */
     , (800970, 114,          1) /* Attuned - Attuned */
     , (800970, 124,          3) /* Version */
     , (800970, 151,          2) /* HookType - Wall */
     , (800970, 158,          7) /* WieldRequirements - Level */
     , (800970, 159,          1) /* WieldSkillType - Axe */
     , (800970, 160,        325) /* WieldDifficulty */
     , (800970, 169,  185206276) /* TsysMutationData */
     , (800970, 265,         16) /* Defenders */
     , (800970, 370,         10) /* Damage */
     , (800970, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800970,  22, True ) /* Inscribable */
     , (800970, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800970,   5,  -0.033) /* ManaRate */
     , (800970,  12,     0.5) /* Shade */
     , (800970,  13,       2) /* ArmorModVsSlash */
     , (800970,  14,       2) /* ArmorModVsPierce */
     , (800970,  15,       2) /* ArmorModVsBludgeon */
     , (800970,  16,       2) /* ArmorModVsCold */
     , (800970,  17,       2) /* ArmorModVsFire */
     , (800970,  18,       2) /* ArmorModVsAcid */
     , (800970,  19,       2) /* ArmorModVsElectric */
     , (800970, 110,     1.1) /* BulkMod */
     , (800970, 111,     1.5) /* SizeMod */
     , (800970, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800970,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800970,   1,   33554654) /* Setup */
     , (800970,   3,  536870932) /* SoundTable */
     , (800970,   6,   67108990) /* PaletteBase */
     , (800970,   7,  268437239) /* ClothingBase */
     , (800970,   8,  100691749) /* Icon */
     , (800970,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800970,  6072,      2)  /* Legendary Heavy Weapon */
     , (800970,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800970,  6050,      2)  /* Legendary Dual Weild */
	 , (800970,  6044,      2)  /* Legendary Missile Weapon */
	 , (800970,  6073,      2)  /* Legendary Two Handed */
	 , (800970,  6069,      2)  /* Legendary Shield */
	 , (800970,  6048,      2)  /* Legendary Deception */
	 , (800970,  6070,      2)  /* Legendary Sneak Attack */
	 , (800970,  6053,      2)  /* Legendary Healing */
	 , (800970,  6052,      2)  /* Legendary Fletching */;
