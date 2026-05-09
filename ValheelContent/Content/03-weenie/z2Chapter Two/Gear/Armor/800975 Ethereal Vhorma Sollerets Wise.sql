DELETE FROM `weenie` WHERE `class_Id` = 800975;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800975, 'Ethereal Vhorma Sollerets Wise', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800975,   1,          2) /* ItemType - Armor */
     , (800975,   3,         92) /* PaletteTemplate - DyeSpringBlack */
     , (800975,   4,      65536) /* ClothingPriority - Feet */
     , (800975,   5,        319) /* EncumbranceVal */
     , (800975,   9,        256) /* ValidLocations - FootWear */
     , (800975,  16,          1) /* ItemUseable - No */
     , (800975,  18,          1) /* UiEffects - Magical */
     , (800975,  19,         30) /* Value */
     , (800975,  27,         32) /* ArmorType - Metal */
     , (800975,  28,       2000) /* ArmorLevel */
     , (800975,  33,          1) /* Bonded - Bonded */
     , (800975,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800975, 106,        200) /* ItemSpellcraft */
     , (800975, 107,       1000) /* ItemCurMana */
     , (800975, 108,       1000) /* ItemMaxMana */
     , (800975, 109,        425) /* ItemDifficulty */
     , (800975, 114,          1) /* Attuned - Attuned */
     , (800975, 124,          3) /* Version */
     , (800975, 151,          2) /* HookType - Wall */
     , (800975, 158,          7) /* WieldRequirements - Level */
     , (800975, 159,          1) /* WieldSkillType - Axe */
     , (800975, 160,        325) /* WieldDifficulty */
     , (800975, 169,  185206276) /* TsysMutationData */
     , (800975, 265,         21) /* Defenders */
     , (800975, 370,         10) /* Damage */
     , (800975, 379,         15) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800975,  22, True ) /* Inscribable */
     , (800975, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800975,   5,  -0.033) /* ManaRate */
     , (800975,  12,     0.5) /* Shade */
     , (800975,  13,       2) /* ArmorModVsSlash */
     , (800975,  14,       2) /* ArmorModVsPierce */
     , (800975,  15,       2) /* ArmorModVsBludgeon */
     , (800975,  16,       2) /* ArmorModVsCold */
     , (800975,  17,       2) /* ArmorModVsFire */
     , (800975,  18,       2) /* ArmorModVsAcid */
     , (800975,  19,       2) /* ArmorModVsElectric */
     , (800975, 110,     1.1) /* BulkMod */
     , (800975, 111,     1.5) /* SizeMod */
     , (800975, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800975,   1, 'Ethereal Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800975,   1,   33554654) /* Setup */
     , (800975,   3,  536870932) /* SoundTable */
     , (800975,   6,   67108990) /* PaletteBase */
     , (800975,   7,  268437239) /* ClothingBase */
     , (800975,   8,  100691749) /* Icon */
     , (800975,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800975,  6072,      2)  /* Legendary Heavy Weapon */
     , (800975,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800975,  6050,      2)  /* Legendary Dual Weild */
	 , (800975,  6044,      2)  /* Legendary Missile Weapon */
	 , (800975,  6073,      2)  /* Legendary Two Handed */
	 , (800975,  6069,      2)  /* Legendary Shield */
	 , (800975,  6048,      2)  /* Legendary Deception */
	 , (800975,  6070,      2)  /* Legendary Sneak Attack */
	 , (800975,  6053,      2)  /* Legendary Healing */
	 , (800975,  6052,      2)  /* Legendary Fletching */;
