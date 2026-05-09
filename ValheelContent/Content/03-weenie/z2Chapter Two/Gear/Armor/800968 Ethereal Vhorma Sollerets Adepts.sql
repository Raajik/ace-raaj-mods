DELETE FROM `weenie` WHERE `class_Id` = 800968;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800968, 'Ethereal Vhorma Sollerets Adepts', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800968,   1,          2) /* ItemType - Armor */
     , (800968,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800968,   4,      65536) /* ClothingPriority - Feet */
     , (800968,   5,        319) /* EncumbranceVal */
     , (800968,   9,        256) /* ValidLocations - FootWear */
     , (800968,  16,          1) /* ItemUseable - No */
     , (800968,  18,          1) /* UiEffects - Magical */
     , (800968,  19,         30) /* Value */
     , (800968,  27,         32) /* ArmorType - Metal */
     , (800968,  28,       2000) /* ArmorLevel */
     , (800968,  33,          1) /* Bonded - Bonded */
     , (800968,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800968, 106,        200) /* ItemSpellcraft */
     , (800968, 107,       1000) /* ItemCurMana */
     , (800968, 108,       1000) /* ItemMaxMana */
     , (800968, 109,        425) /* ItemDifficulty */
     , (800968, 114,          1) /* Attuned - Attuned */
     , (800968, 124,          3) /* Version */
     , (800968, 151,          2) /* HookType - Wall */
     , (800968, 158,          7) /* WieldRequirements - Level */
     , (800968, 159,          1) /* WieldSkillType - Axe */
     , (800968, 160,        325) /* WieldDifficulty */
     , (800968, 169,  185206276) /* TsysMutationData */
     , (800968, 265,         14) /* Defenders */
     , (800968, 370,         10) /* Damage */
     , (800968, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800968,  22, True ) /* Inscribable */
     , (800968, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800968,   5,  -0.033) /* ManaRate */
     , (800968,  12,     0.5) /* Shade */
     , (800968,  13,       2) /* ArmorModVsSlash */
     , (800968,  14,       2) /* ArmorModVsPierce */
     , (800968,  15,       2) /* ArmorModVsBludgeon */
     , (800968,  16,       2) /* ArmorModVsCold */
     , (800968,  17,       2) /* ArmorModVsFire */
     , (800968,  18,       2) /* ArmorModVsAcid */
     , (800968,  19,       2) /* ArmorModVsElectric */
     , (800968, 110,     1.1) /* BulkMod */
     , (800968, 111,     1.5) /* SizeMod */
     , (800968, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800968,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800968,   1,   33554654) /* Setup */
     , (800968,   3,  536870932) /* SoundTable */
     , (800968,   6,   67108990) /* PaletteBase */
     , (800968,   7,  268437239) /* ClothingBase */
     , (800968,   8,  100691749) /* Icon */
     , (800968,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800968,  6072,      2)  /* Legendary Heavy Weapon */
     , (800968,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800968,  6050,      2)  /* Legendary Dual Weild */
	 , (800968,  6044,      2)  /* Legendary Missile Weapon */
	 , (800968,  6073,      2)  /* Legendary Two Handed */
	 , (800968,  6069,      2)  /* Legendary Shield */
	 , (800968,  6048,      2)  /* Legendary Deception */
	 , (800968,  6070,      2)  /* Legendary Sneak Attack */
	 , (800968,  6053,      2)  /* Legendary Healing */
	 , (800968,  6052,      2)  /* Legendary Fletching */;
