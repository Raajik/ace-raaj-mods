DELETE FROM `weenie` WHERE `class_Id` = 800972;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800972, 'Ethereal Vhorma Sollerets Crafters', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800972,   1,          2) /* ItemType - Armor */
     , (800972,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800972,   4,      65536) /* ClothingPriority - Feet */
     , (800972,   5,        319) /* EncumbranceVal */
     , (800972,   9,        256) /* ValidLocations - FootWear */
     , (800972,  16,          1) /* ItemUseable - No */
     , (800972,  18,          1) /* UiEffects - Magical */
     , (800972,  19,         30) /* Value */
     , (800972,  27,         32) /* ArmorType - Metal */
     , (800972,  28,       2000) /* ArmorLevel */
     , (800972,  33,          1) /* Bonded - Bonded */
     , (800972,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800972, 106,        200) /* ItemSpellcraft */
     , (800972, 107,       1000) /* ItemCurMana */
     , (800972, 108,       1000) /* ItemMaxMana */
     , (800972, 109,        425) /* ItemDifficulty */
     , (800972, 114,          1) /* Attuned - Attuned */
     , (800972, 124,          3) /* Version */
     , (800972, 151,          2) /* HookType - Wall */
     , (800972, 158,          7) /* WieldRequirements - Level */
     , (800972, 159,          1) /* WieldSkillType - Axe */
     , (800972, 160,        325) /* WieldDifficulty */
     , (800972, 169,  185206276) /* TsysMutationData */
     , (800972, 265,         18) /* Defenders */
     , (800972, 370,         10) /* Damage */
     , (800972, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800972,  22, True ) /* Inscribable */
     , (800972, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800972,   5,  -0.033) /* ManaRate */
     , (800972,  12,     0.5) /* Shade */
     , (800972,  13,       2) /* ArmorModVsSlash */
     , (800972,  14,       2) /* ArmorModVsPierce */
     , (800972,  15,       2) /* ArmorModVsBludgeon */
     , (800972,  16,       2) /* ArmorModVsCold */
     , (800972,  17,       2) /* ArmorModVsFire */
     , (800972,  18,       2) /* ArmorModVsAcid */
     , (800972,  19,       2) /* ArmorModVsElectric */
     , (800972, 110,     1.1) /* BulkMod */
     , (800972, 111,     1.5) /* SizeMod */
     , (800972, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800972,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800972,   1,   33554654) /* Setup */
     , (800972,   3,  536870932) /* SoundTable */
     , (800972,   6,   67108990) /* PaletteBase */
     , (800972,   7,  268437239) /* ClothingBase */
     , (800972,   8,  100691749) /* Icon */
     , (800972,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800972,  6072,      2)  /* Legendary Heavy Weapon */
     , (800972,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800972,  6050,      2)  /* Legendary Dual Weild */
	 , (800972,  6044,      2)  /* Legendary Missile Weapon */
	 , (800972,  6073,      2)  /* Legendary Two Handed */
	 , (800972,  6069,      2)  /* Legendary Shield */
	 , (800972,  6048,      2)  /* Legendary Deception */
	 , (800972,  6070,      2)  /* Legendary Sneak Attack */
	 , (800972,  6053,      2)  /* Legendary Healing */
	 , (800972,  6052,      2)  /* Legendary Fletching */;
