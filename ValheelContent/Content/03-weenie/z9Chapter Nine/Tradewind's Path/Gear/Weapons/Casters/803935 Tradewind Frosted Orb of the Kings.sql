DELETE FROM `weenie` WHERE `class_Id` = 803935;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803935, 'Tradewind Frosted Orb of the Kings', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803935,   1,      32768) /* ItemType - Caster */
     , (803935,   3,          4) /* PaletteTemplate - Brown */
     , (803935,   5,        100) /* EncumbranceVal */
     , (803935,   8,         90) /* Mass */
     , (803935,   9,   16777216) /* ValidLocations - Held */
     , (803935,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803935,  19,     500000) /* Value */
     , (803935,  33,          1) /* Bonded - Bonded */
     , (803935,  45,          8) /* DamageType - Cold */
     , (803935,  46,        512) /* DefaultCombatStyle - Magic */
     , (803935,  52,          1) /* ParentLocation - RightHand */
     , (803935,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803935,  94,         16) /* TargetType - Creature */
     , (803935, 106,        999) /* ItemSpellcraft */
     , (803935, 107,       8000) /* ItemCurMana */
     , (803935, 108,       8000) /* ItemMaxMana */
     , (803935, 109,          0) /* ItemDifficulty */
     , (803935, 114,          1) /* Attuned - Attuned */
     , (803935, 117,         30) /* ItemManaCost */
     , (803935, 151,          2) /* HookType - Wall */
     , (803935, 158,          7) /* WieldRequirements - Level */
     , (803935, 160,      10000) /* WieldDifficulty */
     , (803935, 169,  118162702) /* TsysMutationData */
     , (803935, 179,        128) /* ImbuedEffect - ColdRending */
     , (803935, 292,          3) /* Cleaving */
     , (803935, 353,          0) /* WeaponType - Undef */
     , (803935, 370,        350) /* GearDamage */
     , (803935, 371,        350) /* GearDamageResist */
     , (803935, 374,        350) /* GearCritDamage */
     , (803935, 375,        350) /* GearCritDamageResist */
     , (803935, 376,        350) /* GearHealingBoost */
     , (803935, 379,       1000) /* GearMaxHealth */
	 , (803935, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803935,  11, True ) /* IgnoreCollisions */
     , (803935,  13, True ) /* Ethereal */
     , (803935,  14, True ) /* GravityStatus */
     , (803935,  19, True ) /* Attackable */
     , (803935,  22, True ) /* Inscribable */
     , (803935, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803935,   5,   -0.05) /* ManaRate */
     , (803935,  12,    0.66) /* Shade */
     , (803935,  29,     1.5) /* WeaponDefense */
     , (803935,  39,     1.5) /* DefaultScale */
     , (803935, 136,    0.15) /* CriticalMultiplier */
     , (803935, 144,    0.45) /* ManaConversionMod */
     , (803935, 147,    0.45) /* CriticalFrequency */
     , (803935, 152,     5.5) /* ElementalDamageMod */
     , (803935, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803935,   1, 'Tradewind Frosted Orb of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803935,   1,   33558916) /* Setup */
     , (803935,   3,  536870932) /* SoundTable */
     , (803935,   6,   67111919) /* PaletteBase */
     , (803935,   7,  268436199) /* ClothingBase */
     , (803935,   8,  100677063) /* Icon */
     , (803935,  22,  872415275) /* PhysicsEffectTable */
     , (803935,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803935,  28,       4447) /* Spell - Incantation of Frost Bolt */
     , (803935,  36,  234881042) /* MutateFilter */
     , (803935,  46,  939524146) /* TsysMutationFilter */
     , (803935,  50,  100673182) /* IconOverlay */
     , (803935,  52,  100667892) /* IconUnderlay */
     , (803935,  55,       4447) /* ProcSpell - Incantation of Frost Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803935,  3699,      2)  /* Prodigal Defender */
     , (803935,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803935,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803935,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803935,  4305,      2)  /* Incantation of Focus Self */
     , (803935,  4329,      2)  /* Incantation of Willpower Self */
     , (803935,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803935,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803935,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803935,  6091,      2)  /* Legendary Defender */
     , (803935,  6098,      2)  /* Legendary Spirit Thirst */;
