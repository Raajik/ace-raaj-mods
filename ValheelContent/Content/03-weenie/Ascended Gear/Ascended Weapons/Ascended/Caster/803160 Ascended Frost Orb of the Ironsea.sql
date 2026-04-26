DELETE FROM `weenie` WHERE `class_Id` = 803160;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803160, 'Ascended Frost Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803160,   1,      32768) /* ItemType - Caster */
     , (803160,   3,          4) /* PaletteTemplate - Brown */
     , (803160,   5,        100) /* EncumbranceVal */
     , (803160,   8,         90) /* Mass */
     , (803160,   9,   16777216) /* ValidLocations - Held */
     , (803160,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803160,  19,     100000) /* Value */
     , (803160,  33,          1) /* Bonded - Bonded */
     , (803160,  45,          8) /* DamageType - Cold */
     , (803160,  46,        512) /* DefaultCombatStyle - Magic */
     , (803160,  52,          1) /* ParentLocation - RightHand */
     , (803160,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803160,  94,         16) /* TargetType - Creature */
     , (803160, 106,        999) /* ItemSpellcraft */
     , (803160, 107,       8000) /* ItemCurMana */
     , (803160, 108,       8000) /* ItemMaxMana */
     , (803160, 109,          0) /* ItemDifficulty */
     , (803160, 114,          1) /* Attuned - Attuned */
     , (803160, 117,         30) /* ItemManaCost */
     , (803160, 151,          2) /* HookType - Wall */
     , (803160, 158,          7) /* WieldRequirements - Level */
     , (803160, 160,       3000) /* WieldDifficulty */
     , (803160, 169,  118162702) /* TsysMutationData */
     , (803160, 179,        128) /* ImbuedEffect - ColdRending */
     , (803160, 292,          3) /* Cleaving */
     , (803160, 353,          0) /* WeaponType - Undef */
     , (803160, 370,        135) /* GearDamage */
     , (803160, 371,        135) /* GearDamageResist */
     , (803160, 374,        135) /* GearCritDamage */
     , (803160, 375,        135) /* GearCritDamageResist */
     , (803160, 376,        135) /* GearHealingBoost */
     , (803160, 379,        135) /* GearMaxHealth */
	 , (803160, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803160,  11, True ) /* IgnoreCollisions */
     , (803160,  13, True ) /* Ethereal */
     , (803160,  14, True ) /* GravityStatus */
     , (803160,  19, True ) /* Attackable */
     , (803160,  22, True ) /* Inscribable */
     , (803160, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803160,   5,   -0.05) /* ManaRate */
     , (803160,  12,    0.66) /* Shade */
     , (803160,  29,     1.5) /* WeaponDefense */
     , (803160,  39,     1.5) /* DefaultScale */
     , (803160, 136,    0.15) /* CriticalMultiplier */
     , (803160, 144,    0.45) /* ManaConversionMod */
     , (803160, 147,    0.45) /* CriticalFrequency */
     , (803160, 152,     3.5) /* ElementalDamageMod */
     , (803160, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803160,   1, 'Ascended Frost Orb of the Ironsea') /* Name */
     , (803160,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803160,   1,   33559424) /* Setup */
     , (803160,   3,  536870932) /* SoundTable */
     , (803160,   6,   67111919) /* PaletteBase */
     , (803160,   8,  100686851) /* Icon */
     , (803160,  22,  872415275) /* PhysicsEffectTable */
     , (803160,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803160,  28,       4447) /* Spell - Incantation of Frost Bolt */
     , (803160,  36,  234881042) /* MutateFilter */
     , (803160,  46,  939524146) /* TsysMutationFilter */
     , (803160,  52,  100676435) /* IconUnderlay */
     , (803160,  55,       4447) /* ProcSpell - Incantation of Frost Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803160,  3699,      2)  /* Prodigal Defender */
     , (803160,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803160,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803160,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803160,  4305,      2)  /* Incantation of Focus Self */
     , (803160,  4329,      2)  /* Incantation of Willpower Self */
     , (803160,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803160,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803160,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803160,  6091,      2)  /* Legendary Defender */
     , (803160,  6098,      2)  /* Legendary Spirit Thirst */;
