DELETE FROM `weenie` WHERE `class_Id` = 800976;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800976, 'Ethereal Vhorma Sollerets Swift', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800976,   1,          2) /* ItemType - Armor */
     , (800976,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800976,   4,      65536) /* ClothingPriority - Feet */
     , (800976,   5,        319) /* EncumbranceVal */
     , (800976,   9,        256) /* ValidLocations - FootWear */
     , (800976,  16,          1) /* ItemUseable - No */
     , (800976,  18,          1) /* UiEffects - Magical */
     , (800976,  19,         30) /* Value */
     , (800976,  27,         32) /* ArmorType - Metal */
     , (800976,  28,       2000) /* ArmorLevel */
     , (800976,  33,          1) /* Bonded - Bonded */
     , (800976,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800976, 106,        200) /* ItemSpellcraft */
     , (800976, 107,       1000) /* ItemCurMana */
     , (800976, 108,       1000) /* ItemMaxMana */
     , (800976, 109,        425) /* ItemDifficulty */
     , (800976, 114,          1) /* Attuned - Attuned */
     , (800976, 124,          3) /* Version */
     , (800976, 151,          2) /* HookType - Wall */
     , (800976, 158,          7) /* WieldRequirements - Level */
     , (800976, 159,          1) /* WieldSkillType - Axe */
     , (800976, 160,        325) /* WieldDifficulty */
     , (800976, 169,  185206276) /* TsysMutationData */
     , (800976, 265,         22) /* Defenders */
     , (800976, 370,         10) /* Damage */
     , (800976, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800976,  22, True ) /* Inscribable */
     , (800976, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800976,   5,  -0.033) /* ManaRate */
     , (800976,  12,     0.5) /* Shade */
     , (800976,  13,       2) /* ArmorModVsSlash */
     , (800976,  14,       2) /* ArmorModVsPierce */
     , (800976,  15,       2) /* ArmorModVsBludgeon */
     , (800976,  16,       2) /* ArmorModVsCold */
     , (800976,  17,       2) /* ArmorModVsFire */
     , (800976,  18,       2) /* ArmorModVsAcid */
     , (800976,  19,       2) /* ArmorModVsElectric */
     , (800976, 110,     1.1) /* BulkMod */
     , (800976, 111,     1.5) /* SizeMod */
     , (800976, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800976,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800976,   1,   33554654) /* Setup */
     , (800976,   3,  536870932) /* SoundTable */
     , (800976,   6,   67108990) /* PaletteBase */
     , (800976,   7,  268437239) /* ClothingBase */
     , (800976,   8,  100691749) /* Icon */
     , (800976,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800976,  6072,      2)  /* Legendary Heavy Weapon */
     , (800976,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800976,  6050,      2)  /* Legendary Dual Weild */
	 , (800976,  6044,      2)  /* Legendary Missile Weapon */
	 , (800976,  6073,      2)  /* Legendary Two Handed */
	 , (800976,  6069,      2)  /* Legendary Shield */
	 , (800976,  6048,      2)  /* Legendary Deception */
	 , (800976,  6070,      2)  /* Legendary Sneak Attack */
	 , (800976,  6053,      2)  /* Legendary Healing */
	 , (800976,  6052,      2)  /* Legendary Fletching */;
