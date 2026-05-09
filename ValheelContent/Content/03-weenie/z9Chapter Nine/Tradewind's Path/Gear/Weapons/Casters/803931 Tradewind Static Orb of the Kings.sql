DELETE FROM `weenie` WHERE `class_Id` = 803931;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803931, 'Tradewind Static Orb of the Kings', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803931,   1,      32768) /* ItemType - Caster */
     , (803931,   3,          4) /* PaletteTemplate - Brown */
     , (803931,   5,        100) /* EncumbranceVal */
     , (803931,   8,         90) /* Mass */
     , (803931,   9,   16777216) /* ValidLocations - Held */
     , (803931,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803931,  19,     500000) /* Value */
     , (803931,  33,          1) /* Bonded - Bonded */
     , (803931,  45,         64) /* DamageType - Electric */
     , (803931,  46,        512) /* DefaultCombatStyle - Magic */
     , (803931,  52,          1) /* ParentLocation - RightHand */
     , (803931,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803931,  94,         16) /* TargetType - Creature */
     , (803931, 106,        999) /* ItemSpellcraft */
     , (803931, 107,       8000) /* ItemCurMana */
     , (803931, 108,       8000) /* ItemMaxMana */
     , (803931, 109,          0) /* ItemDifficulty */
     , (803931, 114,          1) /* Attuned - Attuned */
     , (803931, 117,         30) /* ItemManaCost */
     , (803931, 151,          2) /* HookType - Wall */
     , (803931, 158,          7) /* WieldRequirements - Level */
     , (803931, 160,      10000) /* WieldDifficulty */
     , (803931, 169,  118162702) /* TsysMutationData */
     , (803931, 179,        256) /* ImbuedEffect - ElectricRending */
     , (803931, 292,          3) /* Cleaving */
     , (803931, 353,          0) /* WeaponType - Undef */
     , (803931, 370,        350) /* GearDamage */
     , (803931, 371,        350) /* GearDamageResist */
     , (803931, 374,        350) /* GearCritDamage */
     , (803931, 375,        350) /* GearCritDamageResist */
     , (803931, 376,        350) /* GearHealingBoost */
     , (803931, 379,       1000) /* GearMaxHealth */
	 , (803931, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803931,  11, True ) /* IgnoreCollisions */
     , (803931,  13, True ) /* Ethereal */
     , (803931,  14, True ) /* GravityStatus */
     , (803931,  19, True ) /* Attackable */
     , (803931,  22, True ) /* Inscribable */
     , (803931, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803931,   5,   -0.05) /* ManaRate */
     , (803931,  12,    0.66) /* Shade */
     , (803931,  29,     1.5) /* WeaponDefense */
     , (803931,  39,     1.5) /* DefaultScale */
     , (803931, 136,    0.15) /* CriticalMultiplier */
     , (803931, 144,    0.45) /* ManaConversionMod */
     , (803931, 147,    0.45) /* CriticalFrequency */
     , (803931, 152,     5.5) /* ElementalDamageMod */
     , (803931, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803931,   1, 'Tradewind Static Orb of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803931,   1,   33558916) /* Setup */
     , (803931,   3,  536870932) /* SoundTable */
     , (803931,   6,   67111919) /* PaletteBase */
     , (803931,   7,  268436199) /* ClothingBase */
     , (803931,   8,  100677063) /* Icon */
     , (803931,  22,  872415275) /* PhysicsEffectTable */
     , (803931,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803931,  28,       4451) /* Spell - Incantation of Lightning Bolt */
     , (803931,  36,  234881042) /* MutateFilter */
     , (803931,  46,  939524146) /* TsysMutationFilter */
     , (803931,  50,  100673180) /* IconOverlay */
     , (803931,  52,  100667892) /* IconUnderlay */
     , (803931,  55,       4451) /* ProcSpell - Incantation of Lightning Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803931,  3699,      2)  /* Prodigal Defender */
     , (803931,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803931,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803931,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803931,  4305,      2)  /* Incantation of Focus Self */
     , (803931,  4329,      2)  /* Incantation of Willpower Self */
     , (803931,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803931,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803931,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803931,  6091,      2)  /* Legendary Defender */
     , (803931,  6098,      2)  /* Legendary Spirit Thirst */;
