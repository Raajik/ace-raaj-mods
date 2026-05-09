DELETE FROM `weenie` WHERE `class_Id` = 800971;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800971, 'Ethereal Vhorma Sollerets Tinkers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800971,   1,          2) /* ItemType - Armor */
     , (800971,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800971,   4,      65536) /* ClothingPriority - Feet */
     , (800971,   5,        319) /* EncumbranceVal */
     , (800971,   9,        256) /* ValidLocations - FootWear */
     , (800971,  16,          1) /* ItemUseable - No */
     , (800971,  18,          1) /* UiEffects - Magical */
     , (800971,  19,         30) /* Value */
     , (800971,  27,         32) /* ArmorType - Metal */
     , (800971,  28,       2000) /* ArmorLevel */
     , (800971,  33,          1) /* Bonded - Bonded */
     , (800971,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800971, 106,        200) /* ItemSpellcraft */
     , (800971, 107,       1000) /* ItemCurMana */
     , (800971, 108,       1000) /* ItemMaxMana */
     , (800971, 109,        425) /* ItemDifficulty */
     , (800971, 114,          1) /* Attuned - Attuned */
     , (800971, 124,          3) /* Version */
     , (800971, 151,          2) /* HookType - Wall */
     , (800971, 158,          7) /* WieldRequirements - Level */
     , (800971, 159,          1) /* WieldSkillType - Axe */
     , (800971, 160,        325) /* WieldDifficulty */
     , (800971, 169,  185206276) /* TsysMutationData */
     , (800971, 265,         17) /* Defenders */
     , (800971, 370,         10) /* Damage */
     , (800971, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800971,  22, True ) /* Inscribable */
     , (800971, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800971,   5,  -0.033) /* ManaRate */
     , (800971,  12,     0.5) /* Shade */
     , (800971,  13,       2) /* ArmorModVsSlash */
     , (800971,  14,       2) /* ArmorModVsPierce */
     , (800971,  15,       2) /* ArmorModVsBludgeon */
     , (800971,  16,       2) /* ArmorModVsCold */
     , (800971,  17,       2) /* ArmorModVsFire */
     , (800971,  18,       2) /* ArmorModVsAcid */
     , (800971,  19,       2) /* ArmorModVsElectric */
     , (800971, 110,     1.1) /* BulkMod */
     , (800971, 111,     1.5) /* SizeMod */
     , (800971, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800971,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800971,   1,   33554654) /* Setup */
     , (800971,   3,  536870932) /* SoundTable */
     , (800971,   6,   67108990) /* PaletteBase */
     , (800971,   7,  268437239) /* ClothingBase */
     , (800971,   8,  100691749) /* Icon */
     , (800971,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800971,  6072,      2)  /* Legendary Heavy Weapon */
     , (800971,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800971,  6050,      2)  /* Legendary Dual Weild */
	 , (800971,  6044,      2)  /* Legendary Missile Weapon */
	 , (800971,  6073,      2)  /* Legendary Two Handed */
	 , (800971,  6069,      2)  /* Legendary Shield */
	 , (800971,  6048,      2)  /* Legendary Deception */
	 , (800971,  6070,      2)  /* Legendary Sneak Attack */
	 , (800971,  6053,      2)  /* Legendary Healing */
	 , (800971,  6052,      2)  /* Legendary Fletching */;
