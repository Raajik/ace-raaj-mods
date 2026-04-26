DELETE FROM `weenie` WHERE `class_Id` = 800977;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800977, 'Ethereal Vhorma Sollerets Hardened', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800977,   1,          2) /* ItemType - Armor */
     , (800977,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800977,   4,      65536) /* ClothingPriority - Feet */
     , (800977,   5,        319) /* EncumbranceVal */
     , (800977,   9,        256) /* ValidLocations - FootWear */
     , (800977,  16,          1) /* ItemUseable - No */
     , (800977,  18,          1) /* UiEffects - Magical */
     , (800977,  19,         30) /* Value */
     , (800977,  27,         32) /* ArmorType - Metal */
     , (800977,  28,       2000) /* ArmorLevel */
     , (800977,  33,          1) /* Bonded - Bonded */
     , (800977,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800977, 106,        200) /* ItemSpellcraft */
     , (800977, 107,       1000) /* ItemCurMana */
     , (800977, 108,       1000) /* ItemMaxMana */
     , (800977, 109,        425) /* ItemDifficulty */
     , (800977, 114,          1) /* Attuned - Attuned */
     , (800977, 124,          3) /* Version */
     , (800977, 151,          2) /* HookType - Wall */
     , (800977, 158,          7) /* WieldRequirements - Level */
     , (800977, 159,          1) /* WieldSkillType - Axe */
     , (800977, 160,        325) /* WieldDifficulty */
     , (800977, 169,  185206276) /* TsysMutationData */
     , (800977, 265,         23) /* Defenders */
     , (800977, 370,         10) /* Damage */
     , (800977, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800977,  22, True ) /* Inscribable */
     , (800977, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800977,   5,  -0.033) /* ManaRate */
     , (800977,  12,     0.5) /* Shade */
     , (800977,  13,       2) /* ArmorModVsSlash */
     , (800977,  14,       2) /* ArmorModVsPierce */
     , (800977,  15,       2) /* ArmorModVsBludgeon */
     , (800977,  16,       2) /* ArmorModVsCold */
     , (800977,  17,       2) /* ArmorModVsFire */
     , (800977,  18,       2) /* ArmorModVsAcid */
     , (800977,  19,       2) /* ArmorModVsElectric */
     , (800977, 110,     1.1) /* BulkMod */
     , (800977, 111,     1.5) /* SizeMod */
     , (800977, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800977,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800977,   1,   33554654) /* Setup */
     , (800977,   3,  536870932) /* SoundTable */
     , (800977,   6,   67108990) /* PaletteBase */
     , (800977,   7,  268437239) /* ClothingBase */
     , (800977,   8,  100691749) /* Icon */
     , (800977,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800977,  6072,      2)  /* Legendary Heavy Weapon */
     , (800977,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800977,  6050,      2)  /* Legendary Dual Weild */
	 , (800977,  6044,      2)  /* Legendary Missile Weapon */
	 , (800977,  6073,      2)  /* Legendary Two Handed */
	 , (800977,  6069,      2)  /* Legendary Shield */
	 , (800977,  6048,      2)  /* Legendary Deception */
	 , (800977,  6070,      2)  /* Legendary Sneak Attack */
	 , (800977,  6053,      2)  /* Legendary Healing */
	 , (800977,  6052,      2)  /* Legendary Fletching */;
