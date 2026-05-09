DELETE FROM `weenie` WHERE `class_Id` = 800974;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800974, 'Ethereal Vhorma Sollerets Dextrous', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800974,   1,          2) /* ItemType - Armor */
     , (800974,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800974,   4,      65536) /* ClothingPriority - Feet */
     , (800974,   5,        319) /* EncumbranceVal */
     , (800974,   9,        256) /* ValidLocations - FootWear */
     , (800974,  16,          1) /* ItemUseable - No */
     , (800974,  18,          1) /* UiEffects - Magical */
     , (800974,  19,         30) /* Value */
     , (800974,  27,         32) /* ArmorType - Metal */
     , (800974,  28,       2000) /* ArmorLevel */
     , (800974,  33,          1) /* Bonded - Bonded */
     , (800974,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800974, 106,        200) /* ItemSpellcraft */
     , (800974, 107,       1000) /* ItemCurMana */
     , (800974, 108,       1000) /* ItemMaxMana */
     , (800974, 109,        425) /* ItemDifficulty */
     , (800974, 114,          1) /* Attuned - Attuned */
     , (800974, 124,          3) /* Version */
     , (800974, 151,          2) /* HookType - Wall */
     , (800974, 158,          7) /* WieldRequirements - Level */
     , (800974, 159,          1) /* WieldSkillType - Axe */
     , (800974, 160,        325) /* WieldDifficulty */
     , (800974, 169,  185206276) /* TsysMutationData */
     , (800974, 265,         20) /* Defenders */
     , (800974, 370,         10) /* Damage */
     , (800974, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800974,  22, True ) /* Inscribable */
     , (800974, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800974,   5,  -0.033) /* ManaRate */
     , (800974,  12,     0.5) /* Shade */
     , (800974,  13,       2) /* ArmorModVsSlash */
     , (800974,  14,       2) /* ArmorModVsPierce */
     , (800974,  15,       2) /* ArmorModVsBludgeon */
     , (800974,  16,       2) /* ArmorModVsCold */
     , (800974,  17,       2) /* ArmorModVsFire */
     , (800974,  18,       2) /* ArmorModVsAcid */
     , (800974,  19,       2) /* ArmorModVsElectric */
     , (800974, 110,     1.1) /* BulkMod */
     , (800974, 111,     1.5) /* SizeMod */
     , (800974, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800974,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800974,   1,   33554654) /* Setup */
     , (800974,   3,  536870932) /* SoundTable */
     , (800974,   6,   67108990) /* PaletteBase */
     , (800974,   7,  268437239) /* ClothingBase */
     , (800974,   8,  100691749) /* Icon */
     , (800974,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800974,  6072,      2)  /* Legendary Heavy Weapon */
     , (800974,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800974,  6050,      2)  /* Legendary Dual Weild */
	 , (800974,  6044,      2)  /* Legendary Missile Weapon */
	 , (800974,  6073,      2)  /* Legendary Two Handed */
	 , (800974,  6069,      2)  /* Legendary Shield */
	 , (800974,  6048,      2)  /* Legendary Deception */
	 , (800974,  6070,      2)  /* Legendary Sneak Attack */
	 , (800974,  6053,      2)  /* Legendary Healing */
	 , (800974,  6052,      2)  /* Legendary Fletching */;
