DELETE FROM `weenie` WHERE `class_Id` = 800486;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800486, 'Vhorma Sollerets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800486,   1,          2) /* ItemType - Armor */
     , (800486,   3,         86) /* PaletteTemplate - DyeSpringBlack */
     , (800486,   4,      65536) /* ClothingPriority - Feet */
     , (800486,   5,        319) /* EncumbranceVal */
     , (800486,   9,        256) /* ValidLocations - FootWear */
     , (800486,  16,          1) /* ItemUseable - No */
     , (800486,  19,         500) /* Value */
     , (800486,  27,         32) /* ArmorType - Metal */
     , (800486,  28,       1725) /* ArmorLevel */
     , (800486,  33,          1) /* Bonded - Bonded */
     , (800486,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800486, 106,        200) /* ItemSpellcraft */
     , (800486, 107,       1000) /* ItemCurMana */
     , (800486, 108,       1000) /* ItemMaxMana */
     , (800486, 109,        400) /* ItemDifficulty */
     , (800486, 114,          1) /* Attuned - Attuned */
     , (800486, 124,          3) /* Version */
     , (800486, 151,          2) /* HookType - Wall */
     , (800486, 158,          7) /* WieldRequirements - Level */
     , (800486, 159,          1) /* WieldSkillType - Axe */
     , (800486, 160,        300) /* WieldDifficulty */
     , (800486, 169,  185206276) /* TsysMutationData */
     , (800486, 265,         24) /* Defenders */
     , (800486, 370,          6) /* Damage */
     , (800486, 379,         12) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800486,  22, True ) /* Inscribable */
     , (800486, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800486,   5,  -0.033) /* ManaRate */
     , (800486,  12,     0.5) /* Shade */
     , (800486,  13,       2) /* ArmorModVsSlash */
     , (800486,  14,       2) /* ArmorModVsPierce */
     , (800486,  15,       2) /* ArmorModVsBludgeon */
     , (800486,  16,       2) /* ArmorModVsCold */
     , (800486,  17,       2) /* ArmorModVsFire */
     , (800486,  18,       2) /* ArmorModVsAcid */
     , (800486,  19,       2) /* ArmorModVsElectric */
     , (800486, 110,     1.1) /* BulkMod */
     , (800486, 111,     1.5) /* SizeMod */
     , (800486, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800486,   1, 'Vhorma Sollerets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800486,   1,   33554654) /* Setup */
     , (800486,   3,  536870932) /* SoundTable */
     , (800486,   6,   67108990) /* PaletteBase */
     , (800486,   7,  268437239) /* ClothingBase */
     , (800486,   8,  100691749) /* Icon */
     , (800486,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800486,  6072,      2)  /* Legendary Heavy Weapon */
     , (800486,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800486,  6050,      2)  /* Legendary Dual Weild */
	 , (800486,  6044,      2)  /* Legendary Missile Weapon */
	 , (800486,  6073,      2)  /* Legendary Two Handed */
	 , (800486,  6069,      2)  /* Legendary Shield */
	 , (800486,  6048,      2)  /* Legendary Deception */
	 , (800486,  6070,      2)  /* Legendary Sneak Attack */
	 , (800486,  6053,      2)  /* Legendary Healing */
	 , (800486,  6052,      2)  /* Legendary Fletching */;
