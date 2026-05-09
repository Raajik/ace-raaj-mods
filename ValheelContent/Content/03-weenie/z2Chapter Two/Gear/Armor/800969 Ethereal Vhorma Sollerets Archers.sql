DELETE FROM `weenie` WHERE `class_Id` = 800969;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800969, 'Ethereal Vhorma Sollerets Archers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800969,   1,          2) /* ItemType - Armor */
     , (800969,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800969,   4,      65536) /* ClothingPriority - Feet */
     , (800969,   5,        319) /* EncumbranceVal */
     , (800969,   9,        256) /* ValidLocations - FootWear */
     , (800969,  16,          1) /* ItemUseable - No */
     , (800969,  18,          1) /* UiEffects - Magical */
     , (800969,  19,         30) /* Value */
     , (800969,  27,         32) /* ArmorType - Metal */
     , (800969,  28,       2000) /* ArmorLevel */
     , (800969,  33,          1) /* Bonded - Bonded */
     , (800969,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800969, 106,        200) /* ItemSpellcraft */
     , (800969, 107,       1000) /* ItemCurMana */
     , (800969, 108,       1000) /* ItemMaxMana */
     , (800969, 109,        425) /* ItemDifficulty */
     , (800969, 114,          1) /* Attuned - Attuned */
     , (800969, 124,          3) /* Version */
     , (800969, 151,          2) /* HookType - Wall */
     , (800969, 158,          7) /* WieldRequirements - Level */
     , (800969, 159,          1) /* WieldSkillType - Axe */
     , (800969, 160,        325) /* WieldDifficulty */
     , (800969, 169,  185206276) /* TsysMutationData */
     , (800969, 265,         15) /* Defenders */
     , (800969, 370,         10) /* Damage */
     , (800969, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800969,  22, True ) /* Inscribable */
     , (800969, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800969,   5,  -0.033) /* ManaRate */
     , (800969,  12,     0.5) /* Shade */
     , (800969,  13,       2) /* ArmorModVsSlash */
     , (800969,  14,       2) /* ArmorModVsPierce */
     , (800969,  15,       2) /* ArmorModVsBludgeon */
     , (800969,  16,       2) /* ArmorModVsCold */
     , (800969,  17,       2) /* ArmorModVsFire */
     , (800969,  18,       2) /* ArmorModVsAcid */
     , (800969,  19,       2) /* ArmorModVsElectric */
     , (800969, 110,     1.1) /* BulkMod */
     , (800969, 111,     1.5) /* SizeMod */
     , (800969, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800969,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800969,   1,   33554654) /* Setup */
     , (800969,   3,  536870932) /* SoundTable */
     , (800969,   6,   67108990) /* PaletteBase */
     , (800969,   7,  268437239) /* ClothingBase */
     , (800969,   8,  100691749) /* Icon */
     , (800969,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800969,  6072,      2)  /* Legendary Heavy Weapon */
     , (800969,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800969,  6050,      2)  /* Legendary Dual Weild */
	 , (800969,  6044,      2)  /* Legendary Missile Weapon */
	 , (800969,  6073,      2)  /* Legendary Two Handed */
	 , (800969,  6069,      2)  /* Legendary Shield */
	 , (800969,  6048,      2)  /* Legendary Deception */
	 , (800969,  6070,      2)  /* Legendary Sneak Attack */
	 , (800969,  6053,      2)  /* Legendary Healing */
	 , (800969,  6052,      2)  /* Legendary Fletching */;
