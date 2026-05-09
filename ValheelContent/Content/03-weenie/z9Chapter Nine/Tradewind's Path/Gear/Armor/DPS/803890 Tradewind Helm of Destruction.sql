DELETE FROM `weenie` WHERE `class_Id` = 803890;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803890, 'TradewindHelm of Destruction', 2, '2022-11-11 19:30:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803890,   1,          2) /* ItemType - Armor */
     , (803890,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (803890,   4,      16384) /* ClothingPriority - Head */
     , (803890,   5,        140) /* EncumbranceVal */
     , (803890,   8,        140) /* Mass */
     , (803890,   9,          1) /* ValidLocations - HeadWear */
     , (803890,  16,          1) /* ItemUseable - No */
     , (803890,  18,        512) /* UiEffects - Bludgeoning */
     , (803890,  19,     250000) /* Value */
     , (803890,  27,         32) /* ArmorType - Metal */
     , (803890,  28,       5000) /* ArmorLevel */
     , (803890,  33,          1) /* Bonded - Bonded */
     , (803890,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803890, 106,        999) /* ItemSpellcraft */
     , (803890, 107,       2000) /* ItemCurMana */
     , (803890, 108,       2000) /* ItemMaxMana */
     , (803890, 114,          0) /* Attuned - Normal */
     , (803890, 158,          7) /* WieldRequirements - Level */
     , (803890, 160,      10000) /* WieldDifficulty */
     , (803890, 169,  168427780) /* TsysMutationData */
     , (803890, 265,         29) /* EquipmentSetId - Lightningproof */
     , (803890, 370,        750) /* GearDamage */
     , (803890, 371,        500) /* GearDamageResist */
     , (803890, 374,        750) /* GearCritDamage */
     , (803890, 375,        500) /* GearCritDamageResist */
     , (803890, 376,        500) /* GearHealingBoost */
     , (803890, 379,        500) /* GearMaxHealth */
     , (803890, 9041,          5) /* Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803890,  22, True ) /* Inscribable */
     , (803890, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803890,  12,    0.66) /* Shade */
     , (803890,  13,       3) /* ArmorModVsSlash */
     , (803890,  14,       3) /* ArmorModVsPierce */
     , (803890,  15,       3) /* ArmorModVsBludgeon */
     , (803890,  16,       3) /* ArmorModVsCold */
     , (803890,  17,       3) /* ArmorModVsFire */
     , (803890,  18,       3) /* ArmorModVsAcid */
     , (803890,  19,       3) /* ArmorModVsElectric */
     , (803890,  29,     1.5) /* WeaponDefense */
     , (803890, 110,       1) /* BulkMod */
     , (803890, 111,       1) /* SizeMod */
     , (803890, 149,     1.5) /* WeaponMissileDefense */
     , (803890, 150,     1.5) /* WeaponMagicDefense */
     , (803890, 165,       3) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803890,   1, 'Tradewind Helm of Destruction') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803890,   1,   33560112) /* Setup */
     , (803890,   3,  536870932) /* SoundTable */
     , (803890,   7,  268437321) /* ClothingBase */
     , (803890,   8,  100690226) /* Icon */
     , (803890,  22,  872415275) /* PhysicsEffectTable */
     , (803890,  36,  234881042) /* MutateFilter */
     , (803890,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803890,  3679,      2)  /* Prodigal Acid Bane */
     , (803890,  3682,      2)  /* Prodigal Arcane Enlightenment */
     , (803890,  3686,      2)  /* Prodigal Blade Bane */
     , (803890,  3689,      2)  /* Prodigal Bludgeon Bane */
     , (803890,  3703,      2)  /* Prodigal Flame Bane */
     , (803890,  3706,      2)  /* Prodigal Frost Bane */
     , (803890,  3710,      2)  /* Prodigal Impenetrability */
     , (803890,  3711,      2)  /* Prodigal Impregnability */
     , (803890,  3718,      2)  /* Prodigal Lightning Bane */
     , (803890,  3719,      2)  /* Prodigal Lightning Protection */
     , (803890,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803890,  3725,      2)  /* Prodigal Mana Renewal */
     , (803890,  3728,      2)  /* Prodigal Piercing Bane */
     , (803890,  3730,      2)  /* Prodigal Quickness */
     , (803890,  6046,      2)  /* Legendary Creature Enchantment Aptitude */
     , (803890,  6056,      2)  /* Legendary Item Enchantment Aptitude */
     , (803890,  6060,      2)  /* Legendary Life Magic Aptitude */
     , (803890,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803890,  6074,      2)  /* Legendary Void Magic Aptitude */
     , (803890,  6075,      2)  /* Legendary War Magic Aptitude */;
