DELETE FROM `weenie` WHERE `class_Id` = 800459;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800459, 'Uber Sollerets of the Red Dot', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800459,   1,          2) /* ItemType - Armor */
     , (800459,   3,         14) /* PaletteTemplate - DyeSpringBlack */
     , (800459,   4,      65536) /* ClothingPriority - Feet */
     , (800459,   5,        319) /* EncumbranceVal */
     , (800459,   9,        256) /* ValidLocations - FootWear */
     , (800459,  16,          1) /* ItemUseable - No */
     , (800459,  18,          1) /* UiEffects - Magical */
     , (800459,  27,         32) /* ArmorType - Metal */
     , (800459,  28,        1500) /* ArmorLevel */
     , (800459,  33,          1) /* Bonded - Bonded */
     , (800459,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800459, 106,        200) /* ItemSpellcraft */
     , (800459, 107,       1000) /* ItemCurMana */
     , (800459, 108,       1000) /* ItemMaxMana */
     , (800459, 109,        300) /* ItemDifficulty */
     , (800459, 114,          1) /* Attuned - Attuned */
     , (800459, 124,          3) /* Version */
     , (800459, 151,          2) /* HookType - Wall */
     , (800459, 158,          7) /* WieldRequirements - Level */
     , (800459, 159,          1) /* WieldSkillType - Axe */
     , (800459, 160,        300) /* WieldDifficulty */
     , (800459, 169,  185206276) /* TsysMutationData */
     , (800459, 265,         24) /* Defenders */
     , (800459, 370,          3) /* Damage */
     , (800459, 379,          7) /* Health Boost */
     , (800459, 383,          3) /* GearPKDamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800459,  22, True ) /* Inscribable */
     , (800459, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800459,   5,  -0.033) /* ManaRate */
     , (800459,  12,     0.5) /* Shade */
     , (800459,  13,       2) /* ArmorModVsSlash */
     , (800459,  14,       2) /* ArmorModVsPierce */
     , (800459,  15,       2) /* ArmorModVsBludgeon */
     , (800459,  16,       2) /* ArmorModVsCold */
     , (800459,  17,       2) /* ArmorModVsFire */
     , (800459,  18,       2) /* ArmorModVsAcid */
     , (800459,  19,       2) /* ArmorModVsElectric */
     , (800459, 110,     1.1) /* BulkMod */
     , (800459, 111,     1.5) /* SizeMod */
     , (800459, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800459,   1, 'Uber Sollerets of the Red Dot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800459,   1,   33554654) /* Setup */
     , (800459,   3,  536870932) /* SoundTable */
     , (800459,   6,   67108990) /* PaletteBase */
     , (800459,   7,  268437239) /* ClothingBase */
     , (800459,   8,  100691749) /* Icon */
     , (800459,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800459,  6072,      2)  /* Legendary Heavy Weapon */
     , (800459,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800459,  6050,      2)  /* Legendary Dual Weild */
	 , (800459,  6044,      2)  /* Legendary Missile Weapon */
	 , (800459,  6073,      2)  /* Legendary Two Handed */
	 , (800459,  6069,      2)  /* Legendary Shield */
	 , (800459,  6048,      2)  /* Legendary Deception */
	 , (800459,  6070,      2)  /* Legendary Sneak Attack */
	 , (800459,  6053,      2)  /* Legendary Healing */
	 , (800459,  6052,      2)  /* Legendary Fletching */;
