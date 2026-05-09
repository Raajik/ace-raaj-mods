DELETE FROM `weenie` WHERE `class_Id` = 800978;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800978, 'Ethereal Vhorma Sollerets Reinforced', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800978,   1,          2) /* ItemType - Armor */
     , (800978,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800978,   4,      65536) /* ClothingPriority - Feet */
     , (800978,   5,        319) /* EncumbranceVal */
     , (800978,   9,        256) /* ValidLocations - FootWear */
     , (800978,  16,          1) /* ItemUseable - No */
     , (800978,  18,          1) /* UiEffects - Magical */
     , (800978,  19,         30) /* Value */
     , (800978,  27,         32) /* ArmorType - Metal */
     , (800978,  28,       2000) /* ArmorLevel */
     , (800978,  33,          1) /* Bonded - Bonded */
     , (800978,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800978, 106,        200) /* ItemSpellcraft */
     , (800978, 107,       1000) /* ItemCurMana */
     , (800978, 108,       1000) /* ItemMaxMana */
     , (800978, 109,        425) /* ItemDifficulty */
     , (800978, 114,          1) /* Attuned - Attuned */
     , (800978, 124,          3) /* Version */
     , (800978, 151,          2) /* HookType - Wall */
     , (800978, 158,          7) /* WieldRequirements - Level */
     , (800978, 159,          1) /* WieldSkillType - Axe */
     , (800978, 160,        325) /* WieldDifficulty */
     , (800978, 169,  185206276) /* TsysMutationData */
     , (800978, 265,         24) /* Defenders */
     , (800978, 370,         10) /* Damage */
     , (800978, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800978,  22, True ) /* Inscribable */
     , (800978, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800978,   5,  -0.033) /* ManaRate */
     , (800978,  12,     0.5) /* Shade */
     , (800978,  13,       2) /* ArmorModVsSlash */
     , (800978,  14,       2) /* ArmorModVsPierce */
     , (800978,  15,       2) /* ArmorModVsBludgeon */
     , (800978,  16,       2) /* ArmorModVsCold */
     , (800978,  17,       2) /* ArmorModVsFire */
     , (800978,  18,       2) /* ArmorModVsAcid */
     , (800978,  19,       2) /* ArmorModVsElectric */
     , (800978, 110,     1.1) /* BulkMod */
     , (800978, 111,     1.5) /* SizeMod */
     , (800978, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800978,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800978,   1,   33554654) /* Setup */
     , (800978,   3,  536870932) /* SoundTable */
     , (800978,   6,   67108990) /* PaletteBase */
     , (800978,   7,  268437239) /* ClothingBase */
     , (800978,   8,  100691749) /* Icon */
     , (800978,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800978,  6072,      2)  /* Legendary Heavy Weapon */
     , (800978,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800978,  6050,      2)  /* Legendary Dual Weild */
	 , (800978,  6044,      2)  /* Legendary Missile Weapon */
	 , (800978,  6073,      2)  /* Legendary Two Handed */
	 , (800978,  6069,      2)  /* Legendary Shield */
	 , (800978,  6048,      2)  /* Legendary Deception */
	 , (800978,  6070,      2)  /* Legendary Sneak Attack */
	 , (800978,  6053,      2)  /* Legendary Healing */
	 , (800978,  6052,      2)  /* Legendary Fletching */;
