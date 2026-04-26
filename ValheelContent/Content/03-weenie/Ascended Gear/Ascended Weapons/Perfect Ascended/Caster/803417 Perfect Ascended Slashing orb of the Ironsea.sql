DELETE FROM `weenie` WHERE `class_Id` = 803417;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803417, 'Perfect Ascended Slashing Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803417,   1,      32768) /* ItemType - Caster */
     , (803417,   3,          4) /* PaletteTemplate - Brown */
     , (803417,   5,        100) /* EncumbranceVal */
     , (803417,   8,         90) /* Mass */
     , (803417,   9,   16777216) /* ValidLocations - Held */
     , (803417,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803417,  19,     500000) /* Value */
     , (803417,  33,          1) /* Bonded - Bonded */
     , (803417,  45,          1) /* DamageType - Slash */
     , (803417,  46,        512) /* DefaultCombatStyle - Magic */
     , (803417,  52,          1) /* ParentLocation - RightHand */
     , (803417,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803417,  94,         16) /* TargetType - Creature */
     , (803417, 106,        999) /* ItemSpellcraft */
     , (803417, 107,       8000) /* ItemCurMana */
     , (803417, 108,       8000) /* ItemMaxMana */
     , (803417, 109,          0) /* ItemDifficulty */
     , (803417, 114,          1) /* Attuned - Attuned */
     , (803417, 117,         30) /* ItemManaCost */
     , (803417, 151,          2) /* HookType - Wall */
     , (803417, 158,          7) /* WieldRequirements - Level */
     , (803417, 160,       8000) /* WieldDifficulty */
     , (803417, 169,  118162702) /* TsysMutationData */
     , (803417, 179,          8) /* ImbuedEffect - SlashRending */
     , (803417, 292,          3) /* Cleaving */
     , (803417, 353,          0) /* WeaponType - Undef */
     , (803417, 370,        185) /* GearDamage */
     , (803417, 371,        185) /* GearDamageResist */
     , (803417, 374,        185) /* GearCritDamage */
     , (803417, 375,        185) /* GearCritDamageResist */
     , (803417, 376,        185) /* GearHealingBoost */
     , (803417, 379,        185) /* GearMaxHealth */
	 , (803417, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803417,  11, True ) /* IgnoreCollisions */
     , (803417,  13, True ) /* Ethereal */
     , (803417,  14, True ) /* GravityStatus */
     , (803417,  19, True ) /* Attackable */
     , (803417,  22, True ) /* Inscribable */
     , (803417, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803417,   5,   -0.05) /* ManaRate */
     , (803417,  12,    0.66) /* Shade */
     , (803417,  29,     1.5) /* WeaponDefense */
     , (803417,  39,     1.5) /* DefaultScale */
     , (803417, 136,    0.15) /* CriticalMultiplier */
     , (803417, 144,    0.45) /* ManaConversionMod */
     , (803417, 147,    0.45) /* CriticalFrequency */
     , (803417, 152,     4.5) /* ElementalDamageMod */
     , (803417, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803417,   1, 'Perfect Ascended Slashing Orb of the Ironsea') /* Name */
     , (803417,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803417,   1,   33559424) /* Setup */
     , (803417,   3,  536870932) /* SoundTable */
     , (803417,   6,   67111919) /* PaletteBase */
     , (803417,   8,  100686851) /* Icon */
     , (803417,  22,  872415275) /* PhysicsEffectTable */
     , (803417,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803417,  28,       4457) /* Spell - Incantation of Whirling Blade */
     , (803417,  36,  234881042) /* MutateFilter */
     , (803417,  46,  939524146) /* TsysMutationFilter */
     , (803417,  52,  100676444) /* IconUnderlay */
     , (803417,  55,       4457) /* ProcSpell - Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803417,  3699,      2)  /* Prodigal Defender */
     , (803417,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803417,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803417,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803417,  4305,      2)  /* Incantation of Focus Self */
     , (803417,  4329,      2)  /* Incantation of Willpower Self */
     , (803417,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803417,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803417,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803417,  6091,      2)  /* Legendary Defender */
     , (803417,  6098,      2)  /* Legendary Spirit Thirst */;
