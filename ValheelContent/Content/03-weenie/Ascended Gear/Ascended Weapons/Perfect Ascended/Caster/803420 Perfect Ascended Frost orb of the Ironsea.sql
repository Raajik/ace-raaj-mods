DELETE FROM `weenie` WHERE `class_Id` = 803420;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803420, 'Perfect Ascended Frost Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803420,   1,      32768) /* ItemType - Caster */
     , (803420,   3,          4) /* PaletteTemplate - Brown */
     , (803420,   5,        100) /* EncumbranceVal */
     , (803420,   8,         90) /* Mass */
     , (803420,   9,   16777216) /* ValidLocations - Held */
     , (803420,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803420,  19,     500000) /* Value */
     , (803420,  33,          1) /* Bonded - Bonded */
     , (803420,  45,          8) /* DamageType - Cold */
     , (803420,  46,        512) /* DefaultCombatStyle - Magic */
     , (803420,  52,          1) /* ParentLocation - RightHand */
     , (803420,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803420,  94,         16) /* TargetType - Creature */
     , (803420, 106,        999) /* ItemSpellcraft */
     , (803420, 107,       8000) /* ItemCurMana */
     , (803420, 108,       8000) /* ItemMaxMana */
     , (803420, 109,          0) /* ItemDifficulty */
     , (803420, 114,          1) /* Attuned - Attuned */
     , (803420, 117,         30) /* ItemManaCost */
     , (803420, 151,          2) /* HookType - Wall */
     , (803420, 158,          7) /* WieldRequirements - Level */
     , (803420, 160,       8000) /* WieldDifficulty */
     , (803420, 169,  118162702) /* TsysMutationData */
     , (803420, 179,        128) /* ImbuedEffect - ColdRending */
     , (803420, 292,          3) /* Cleaving */
     , (803420, 353,          0) /* WeaponType - Undef */
     , (803420, 370,        185) /* GearDamage */
     , (803420, 371,        185) /* GearDamageResist */
     , (803420, 374,        185) /* GearCritDamage */
     , (803420, 375,        185) /* GearCritDamageResist */
     , (803420, 376,        185) /* GearHealingBoost */
     , (803420, 379,        185) /* GearMaxHealth */
	 , (803420, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803420,  11, True ) /* IgnoreCollisions */
     , (803420,  13, True ) /* Ethereal */
     , (803420,  14, True ) /* GravityStatus */
     , (803420,  19, True ) /* Attackable */
     , (803420,  22, True ) /* Inscribable */
     , (803420, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803420,   5,   -0.05) /* ManaRate */
     , (803420,  12,    0.66) /* Shade */
     , (803420,  29,     1.5) /* WeaponDefense */
     , (803420,  39,     1.5) /* DefaultScale */
     , (803420, 136,    0.15) /* CriticalMultiplier */
     , (803420, 144,    0.45) /* ManaConversionMod */
     , (803420, 147,    0.45) /* CriticalFrequency */
     , (803420, 152,     4.5) /* ElementalDamageMod */
     , (803420, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803420,   1, 'Perfect Ascended Frost Orb of the Ironsea') /* Name */
     , (803420,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803420,   1,   33559424) /* Setup */
     , (803420,   3,  536870932) /* SoundTable */
     , (803420,   6,   67111919) /* PaletteBase */
     , (803420,   8,  100686851) /* Icon */
     , (803420,  22,  872415275) /* PhysicsEffectTable */
     , (803420,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803420,  28,       4447) /* Spell - Incantation of Frost Bolt */
     , (803420,  36,  234881042) /* MutateFilter */
     , (803420,  46,  939524146) /* TsysMutationFilter */
     , (803420,  52,  100676435) /* IconUnderlay */
     , (803420,  55,       4447) /* ProcSpell - Incantation of Frost Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803420,  3699,      2)  /* Prodigal Defender */
     , (803420,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803420,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803420,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803420,  4305,      2)  /* Incantation of Focus Self */
     , (803420,  4329,      2)  /* Incantation of Willpower Self */
     , (803420,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803420,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803420,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803420,  6091,      2)  /* Legendary Defender */
     , (803420,  6098,      2)  /* Legendary Spirit Thirst */;
