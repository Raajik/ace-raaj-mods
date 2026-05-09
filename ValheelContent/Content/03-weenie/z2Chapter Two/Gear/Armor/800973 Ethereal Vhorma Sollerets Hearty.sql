DELETE FROM `weenie` WHERE `class_Id` = 800973;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800973, 'Ethereal Vhorma Sollerets Hearty', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800973,   1,          2) /* ItemType - Armor */
     , (800973,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800973,   4,      65536) /* ClothingPriority - Feet */
     , (800973,   5,        319) /* EncumbranceVal */
     , (800973,   9,        256) /* ValidLocations - FootWear */
     , (800973,  16,          1) /* ItemUseable - No */
     , (800973,  18,          1) /* UiEffects - Magical */
     , (800973,  19,         30) /* Value */
     , (800973,  27,         32) /* ArmorType - Metal */
     , (800973,  28,       2000) /* ArmorLevel */
     , (800973,  33,          1) /* Bonded - Bonded */
     , (800973,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800973, 106,        200) /* ItemSpellcraft */
     , (800973, 107,       1000) /* ItemCurMana */
     , (800973, 108,       1000) /* ItemMaxMana */
     , (800973, 109,        425) /* ItemDifficulty */
     , (800973, 114,          1) /* Attuned - Attuned */
     , (800973, 124,          3) /* Version */
     , (800973, 151,          2) /* HookType - Wall */
     , (800973, 158,          7) /* WieldRequirements - Level */
     , (800973, 159,          1) /* WieldSkillType - Axe */
     , (800973, 160,        325) /* WieldDifficulty */
     , (800973, 169,  185206276) /* TsysMutationData */
     , (800973, 265,         19) /* Defenders */
     , (800973, 370,         10) /* Damage */
     , (800973, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800973,  22, True ) /* Inscribable */
     , (800973, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800973,   5,  -0.033) /* ManaRate */
     , (800973,  12,     0.5) /* Shade */
     , (800973,  13,       2) /* ArmorModVsSlash */
     , (800973,  14,       2) /* ArmorModVsPierce */
     , (800973,  15,       2) /* ArmorModVsBludgeon */
     , (800973,  16,       2) /* ArmorModVsCold */
     , (800973,  17,       2) /* ArmorModVsFire */
     , (800973,  18,       2) /* ArmorModVsAcid */
     , (800973,  19,       2) /* ArmorModVsElectric */
     , (800973, 110,     1.1) /* BulkMod */
     , (800973, 111,     1.5) /* SizeMod */
     , (800973, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800973,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800973,   1,   33554654) /* Setup */
     , (800973,   3,  536870932) /* SoundTable */
     , (800973,   6,   67108990) /* PaletteBase */
     , (800973,   7,  268437239) /* ClothingBase */
     , (800973,   8,  100691749) /* Icon */
     , (800973,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800973,  6072,      2)  /* Legendary Heavy Weapon */
     , (800973,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800973,  6050,      2)  /* Legendary Dual Weild */
	 , (800973,  6044,      2)  /* Legendary Missile Weapon */
	 , (800973,  6073,      2)  /* Legendary Two Handed */
	 , (800973,  6069,      2)  /* Legendary Shield */
	 , (800973,  6048,      2)  /* Legendary Deception */
	 , (800973,  6070,      2)  /* Legendary Sneak Attack */
	 , (800973,  6053,      2)  /* Legendary Healing */
	 , (800973,  6052,      2)  /* Legendary Fletching */;
