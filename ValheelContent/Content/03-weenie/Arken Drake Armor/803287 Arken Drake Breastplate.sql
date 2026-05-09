DELETE FROM `weenie` WHERE `class_Id` = 803287;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803287, 'Arken Drake Breastplate', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803287,   1,          2) /* ItemType - Armor */
     , (803287,   3,         93) /* PaletteTemplate - Silver */
     , (803287,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (803287,   5,        500) /* EncumbranceVal */
     , (803287,   8,        500) /* Mass */
     , (803287,   9,        512) /* ValidLocations - ChestArmor */
     , (803287,  16,          1) /* ItemUseable - No */
	 , (803287,  18,        512) /* UiEffects - Magical */
     , (803287,  19,       3000) /* Value */
     , (803287,  27,         32) /* ArmorType - Chainmail */
     , (803287,  28,       4500) /* ArmorLevel */
     , (803287,  33,          1) /* Bonded - Bonded */
     , (803287,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803287, 106,        999) /* ItemSpellcraft */
     , (803287, 107,       2000) /* ItemCurMana */
     , (803287, 108,       2000) /* ItemMaxMana */
     , (803287, 114,          1) /* Attuned - Attuned */
	 , (803287, 158,          7) /* WieldRequirements - Level */
     , (803287, 160,      10000) /* WieldDifficulty */
     , (803287, 169,  118097668) /* TsysMutationData */
     , (803287, 265,         28) /* Defenders */
	 , (803287, 370,        235) /* Damage */
	 , (803287, 371,        235) /* Damage Resist */
	 , (803287, 374,        235) /* Critical Damage */
	 , (803287, 375,        235) /* Critical Damage Resist */
	 , (803287, 376,        235) /* Heal Boost */
	 , (803287, 379,        235) /* Vitality */
	 , (803287, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803287,  22, True ) /* Inscribable */
     , (803287, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803287,  12, 0.6600000262260437) /* Shade */
     , (803287,  13,       3) /* ArmorModVsSlash */
     , (803287,  14,       3) /* ArmorModVsPierce */
     , (803287,  15,       3) /* ArmorModVsBludgeon */
     , (803287,  16,       3) /* ArmorModVsCold */
     , (803287,  17,       3) /* ArmorModVsFire */
     , (803287,  18,       3) /* ArmorModVsAcid */
     , (803287,  19,       3) /* ArmorModVsElectric */
     , (803287,  29,     1.5) /* WeaponDefense */
     , (803287, 110,       1) /* BulkMod */
     , (803287, 111,       1) /* SizeMod */
     , (803287, 149,     1.5) /* WeaponMissileDefense */
     , (803287, 150,     1.5) /* WeaponMagicDefense */
	 , (803287, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803287,   1, 'Arken Drake Breastplate') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803287,   1,   33559338) /* Setup */
     , (803287,   3,  536870932) /* SoundTable */
     , (803287,   6,   67108990) /* PaletteBase */
     , (803287,   7,  268437302) /* ClothingBase */
     , (803287,   8,  100690109) /* Icon */
     , (803287,  22,  872415275) /* PhysicsEffectTable */
	 , (803287,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803287,  3712,      2) /* Legendary Invulnerability */
     , (803287,  3731,      2) /* Legendary Health Gain */
	 , (803287,  3729,      2) /* Legendary Piercing Ward */
     , (803287,  3679,      2) /* Legendary Acid Bane */
	 , (803287,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803287,  3703,      2) /* Legendary Flame Bane */
     , (803287,  3706,      2) /* Legendary Frost Bane */
     , (803287,  3710,      2) /* Legendary Impenetrability */
     , (803287,  3728,      2) /* Legendary Piercing Bane */
     , (803287,  3686,      2) /* Legendary Slashing Bane */
     , (803287,  3718,      2) /* Legendary Storm Bane */
     , (803287,  6055,      2) /* Legendary Storm Bane */
     , (803287,  6054,      2) /* Legendary Storm Bane */
     , (803287,  6095,      2) /* Legendary Storm Bane */
     , (803287,  6063,      2) /* Legendary Storm Bane */;