DELETE FROM `weenie` WHERE `class_Id` = 803289;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803289, 'Arken Drake Tassets', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803289,   1,          2) /* ItemType - Armor */
     , (803289,   3,         93) /* PaletteTemplate - Silver */
     , (803289,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (803289,   5,        280) /* EncumbranceVal */
     , (803289,   8,        260) /* Mass */
     , (803289,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (803289,  16,          1) /* ItemUseable - No */
	 , (803289,  18,        512) /* UiEffects - Magical */
     , (803289,  19,       3000) /* Value */
     , (803289,  27,         32) /* ArmorType - Chainmail */
     , (803289,  28,       4500) /* ArmorLevel */
     , (803289,  33,          1) /* Bonded - Bonded */
     , (803289,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (803289, 106,        999) /* ItemSpellcraft */
     , (803289, 107,       2000) /* ItemCurMana */
     , (803289, 108,       2000) /* ItemMaxMana */
     , (803289, 114,          0) /* Attuned - Attuned */
	 , (803289, 158,          7) /* WieldRequirements - Level */
     , (803289, 160,      10000) /* WieldDifficulty */
     , (803289, 169,  252313860) /* TsysMutationData */
     , (803289, 265,         23) /* Defenders */
	 , (803289, 370,        235) /* Damage */
	 , (803289, 371,        235) /* Damage Resist */
	 , (803289, 374,        235) /* Critical Damage */
	 , (803289, 375,        235) /* Critical Damage Resist */
	 , (803289, 376,        235) /* Heal Boost */
	 , (803289, 379,        235) /* Vitality */
	 , (803289, 9041,         4) /* MirraSlots */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803289,  22, True ) /* Inscribable */
     , (803289, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803289,  12, 0.6600000262260437) /* Shade */
     , (803289,  13,     3) /* ArmorModVsSlash */
     , (803289,  14,     3) /* ArmorModVsPierce */
     , (803289,  15,     3) /* ArmorModVsBludgeon */
     , (803289,  16,     3) /* ArmorModVsCold */
     , (803289,  17,     3) /* ArmorModVsFire */
     , (803289,  18,     3) /* ArmorModVsAcid */
     , (803289,  19,     3) /* ArmorModVsElectric */
     , (803289,  29,     1.5) /* WeaponDefense */
     , (803289, 110,       1) /* BulkMod */
     , (803289, 111,       1) /* SizeMod */
     , (803289, 149,     1.5) /* WeaponMissileDefense */
     , (803289, 150,     1.5) /* WeaponMagicDefense */
	 , (803289, 165,     3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803289,   1, 'Arken Drake Tassets') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803289,   1,   33554656) /* Setup */
     , (803289,   3,  536870932) /* SoundTable */
     , (803289,   6,   67108990) /* PaletteBase */
     , (803289,   7,  268437273) /* ClothingBase */
     , (803289,   8,  100674621) /* Icon */
     , (803289,  22,  872415275) /* PhysicsEffectTable */
     , (803289,  36,  234881046) /* MutateFilter */
     , (803289,  46,  939524130) /* TsysMutationFilter */
	 , (803289,  52,  100686604) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803289,  3687,      2) /* Legendary Slashing Ward */
	 , (803289,  3679,      2) /* Legendary Acid Bane */
     , (803289,  3689,      2) /* Legendary Bludgeoning Bane */
     , (803289,  3703,      2) /* Legendary Flame Bane */
     , (803289,  3706,      2) /* Legendary Frost Bane */
     , (803289,  3710,      2) /* Legendary Impenetrability */
     , (803289,  3728,      2) /* Legendary Piercing Bane */
     , (803289,  3686,      2) /* Legendary Slashing Bane */
     , (803289,  3718,      2) /* Legendary Storm Bane */
     , (803289,  3694,      2) /* Legendary Coordination */
     , (803289,  6057,      2) /* Legendary Coordination */
     , (803289,  6062,      2) /* Legendary Coordination */
     , (803289,  6039,      2) /* Legendary Coordination */
     , (803289,  6042,      2) /* Legendary Coordination */
     , (803289,  6041,      2) /* Legendary Coordination */
     , (803289,  6068,      2) /* Legendary Coordination */;