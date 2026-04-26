DELETE FROM `weenie` WHERE `class_Id` = 800967;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800967, 'Ethereal Vhorma Sollerets Soldiers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800967,   1,          2) /* ItemType - Armor */
     , (800967,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800967,   4,      65536) /* ClothingPriority - Feet */
     , (800967,   5,        319) /* EncumbranceVal */
     , (800967,   9,        256) /* ValidLocations - FootWear */
     , (800967,  16,          1) /* ItemUseable - No */
     , (800967,  18,          1) /* UiEffects - Magical */
     , (800967,  19,         30) /* Value */
     , (800967,  27,         32) /* ArmorType - Metal */
     , (800967,  28,       2000) /* ArmorLevel */
     , (800967,  33,          1) /* Bonded - Bonded */
     , (800967,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800967, 106,        200) /* ItemSpellcraft */
     , (800967, 107,       1000) /* ItemCurMana */
     , (800967, 108,       1000) /* ItemMaxMana */
     , (800967, 109,        425) /* ItemDifficulty */
     , (800967, 114,          1) /* Attuned - Attuned */
     , (800967, 124,          3) /* Version */
     , (800967, 151,          2) /* HookType - Wall */
     , (800967, 158,          7) /* WieldRequirements - Level */
     , (800967, 159,          1) /* WieldSkillType - Axe */
     , (800967, 160,        325) /* WieldDifficulty */
     , (800967, 169,  185206276) /* TsysMutationData */
     , (800967, 265,         13) /* Defenders */
     , (800967, 370,         10) /* Damage */
     , (800967, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800967,  22, True ) /* Inscribable */
     , (800967, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800967,   5,  -0.033) /* ManaRate */
     , (800967,  12,     0.5) /* Shade */
     , (800967,  13,       2) /* ArmorModVsSlash */
     , (800967,  14,       2) /* ArmorModVsPierce */
     , (800967,  15,       2) /* ArmorModVsBludgeon */
     , (800967,  16,       2) /* ArmorModVsCold */
     , (800967,  17,       2) /* ArmorModVsFire */
     , (800967,  18,       2) /* ArmorModVsAcid */
     , (800967,  19,       2) /* ArmorModVsElectric */
     , (800967, 110,     1.1) /* BulkMod */
     , (800967, 111,     1.5) /* SizeMod */
     , (800967, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800967,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800967,   1,   33554654) /* Setup */
     , (800967,   3,  536870932) /* SoundTable */
     , (800967,   6,   67108990) /* PaletteBase */
     , (800967,   7,  268437239) /* ClothingBase */
     , (800967,   8,  100691749) /* Icon */
     , (800967,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800967,  6072,      2)  /* Legendary Heavy Weapon */
     , (800967,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800967,  6050,      2)  /* Legendary Dual Weild */
	 , (800967,  6044,      2)  /* Legendary Missile Weapon */
	 , (800967,  6073,      2)  /* Legendary Two Handed */
	 , (800967,  6069,      2)  /* Legendary Shield */
	 , (800967,  6048,      2)  /* Legendary Deception */
	 , (800967,  6070,      2)  /* Legendary Sneak Attack */
	 , (800967,  6053,      2)  /* Legendary Healing */
	 , (800967,  6052,      2)  /* Legendary Fletching */;
