DELETE FROM `weenie` WHERE `class_Id` = 803294;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803294, 'Arken Drake Girth Cover', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803294,   1,          2) /* ItemType - Armor */
     , (803294,   3,         93) /* PaletteTemplate - Silver */
     , (803294,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (803294,   5,        466) /* EncumbranceVal */
     , (803294,   8,        280) /* Mass */
     , (803294,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (803294,  16,          1) /* ItemUseable - No */
	 , (803294,  18,        512) /* UiEffects - Magical */
     , (803294,  19,       3000) /* Value */
     , (803294,  27,         32) /* ArmorType - Chainmail */
     , (803294,  28,       4500) /* ArmorLevel */
     , (803294,  33,          1) /* Bonded - Bonded */
     , (803294,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803294, 106,        999) /* ItemSpellcraft */
     , (803294, 107,       2000) /* ItemCurMana */
     , (803294, 108,       2000) /* ItemMaxMana */
     , (803294, 114,          0) /* Attuned - Attuned */
	 , (803294, 158,          7) /* WieldRequirements - Level */
     , (803294, 160,      10000) /* WieldDifficulty */
     , (803294, 169,  118096132) /* TsysMutationData */
     , (803294, 265,         24) /* Defenders */
	 , (803294, 370,        235) /* Damage */
	 , (803294, 371,        235) /* Damage Resist */
	 , (803294, 374,        235) /* Critical Damage */
	 , (803294, 375,        235) /* Critical Damage Resist */
	 , (803294, 376,        235) /* Heal Boost */
	 , (803294, 379,        235) /* Vitality */
	 , (803294, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803294,  22, True ) /* Inscribable */
     , (803294, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803294,  12, 0.6600000262260437) /* Shade */
     , (803294,  13,     3) /* ArmorModVsSlash */
     , (803294,  14,     3) /* ArmorModVsPierce */
     , (803294,  15,     3) /* ArmorModVsBludgeon */
     , (803294,  16,     3) /* ArmorModVsCold */
     , (803294,  17,     3) /* ArmorModVsFire */
     , (803294,  18,     3) /* ArmorModVsAcid */
     , (803294,  19,     3) /* ArmorModVsElectric */
     , (803294,  29,     1.5) /* WeaponDefense */
     , (803294, 110,       1) /* BulkMod */
     , (803294, 111,       1) /* SizeMod */
     , (803294, 149,     1.5) /* WeaponMissileDefense */
     , (803294, 150,     1.5) /* WeaponMagicDefense */
	 , (803294, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803294,   1, 'Arken Drake Girth Cover') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803294,   1,   33554856) /* Setup */
     , (803294,   3,  536870932) /* SoundTable */
     , (803294,   6,   67108990) /* PaletteBase */
     , (803294,   7,  268437291) /* ClothingBase */
     , (803294,   8,  100690101) /* Icon */
     , (803294,  22,  872415275) /* PhysicsEffectTable */
	 , (803294,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803294,  3692,      2) /* Legendary Frost Ward */
	 , (803294,  3679,      2) /* Legendary Acid Bane */
     , (803294,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803294,  3703,      2) /* Legendary Flame Bane */
     , (803294,  3706,      2) /* Legendary Frost Bane */
     , (803294,  3710,      2) /* Legendary Impenetrability */
     , (803294,  3728,      2) /* Legendary Piercing Bane */
     , (803294,  3686,      2) /* Legendary Slashing Bane */
	 , (803294,  3718,      2) /* Legendary Storm Bane */
     , (803294,  3700,      2) /* Legendary Endurance */
     , (803294,  6048,      2) /* Legendary Endurance */
     , (803294,  6049,      2) /* Legendary Endurance */
     , (803294,  6050,      2) /* Legendary Endurance */
     , (803294,  6052,      2) /* Legendary Endurance */
     , (803294,  6053,      2) /* Legendary Endurance */
     , (803294,  6058,      2) /* Legendary Endurance */
     , (803294,  6059,      2) /* Legendary Endurance */;