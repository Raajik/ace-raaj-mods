DELETE FROM `weenie` WHERE `class_Id` = 803157;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803157, 'Ascended Slashing Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803157,   1,      32768) /* ItemType - Caster */
     , (803157,   3,          4) /* PaletteTemplate - Brown */
     , (803157,   5,        100) /* EncumbranceVal */
     , (803157,   8,         90) /* Mass */
     , (803157,   9,   16777216) /* ValidLocations - Held */
     , (803157,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803157,  19,     100000) /* Value */
     , (803157,  33,          1) /* Bonded - Bonded */
     , (803157,  45,          1) /* DamageType - Slash */
     , (803157,  46,        512) /* DefaultCombatStyle - Magic */
     , (803157,  52,          1) /* ParentLocation - RightHand */
     , (803157,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803157,  94,         16) /* TargetType - Creature */
     , (803157, 106,        999) /* ItemSpellcraft */
     , (803157, 107,       8000) /* ItemCurMana */
     , (803157, 108,       8000) /* ItemMaxMana */
     , (803157, 109,          0) /* ItemDifficulty */
     , (803157, 114,          1) /* Attuned - Attuned */
     , (803157, 117,         30) /* ItemManaCost */
     , (803157, 151,          2) /* HookType - Wall */
     , (803157, 158,          7) /* WieldRequirements - Level */
     , (803157, 160,       3000) /* WieldDifficulty */
     , (803157, 169,  118162702) /* TsysMutationData */
     , (803157, 179,          8) /* ImbuedEffect - SlashRending */
     , (803157, 292,          3) /* Cleaving */
     , (803157, 353,          0) /* WeaponType - Undef */
     , (803157, 370,        135) /* GearDamage */
     , (803157, 371,        135) /* GearDamageResist */
     , (803157, 374,        135) /* GearCritDamage */
     , (803157, 375,        135) /* GearCritDamageResist */
     , (803157, 376,        135) /* GearHealingBoost */
     , (803157, 379,        135) /* GearMaxHealth */
	 , (803157, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803157,  11, True ) /* IgnoreCollisions */
     , (803157,  13, True ) /* Ethereal */
     , (803157,  14, True ) /* GravityStatus */
     , (803157,  19, True ) /* Attackable */
     , (803157,  22, True ) /* Inscribable */
     , (803157, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803157,   5,   -0.05) /* ManaRate */
     , (803157,  12,    0.66) /* Shade */
     , (803157,  29,     1.5) /* WeaponDefense */
     , (803157,  39,     1.5) /* DefaultScale */
     , (803157, 136,    0.15) /* CriticalMultiplier */
     , (803157, 144,    0.45) /* ManaConversionMod */
     , (803157, 147,    0.45) /* CriticalFrequency */
     , (803157, 152,     3.5) /* ElementalDamageMod */
     , (803157, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803157,   1, 'Ascended Slashing Orb of the Ironsea') /* Name */
     , (803157,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803157,   1,   33559424) /* Setup */
     , (803157,   3,  536870932) /* SoundTable */
     , (803157,   6,   67111919) /* PaletteBase */
     , (803157,   8,  100686851) /* Icon */
     , (803157,  22,  872415275) /* PhysicsEffectTable */
     , (803157,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803157,  28,       4457) /* Spell - Incantation of Whirling Blade */
     , (803157,  36,  234881042) /* MutateFilter */
     , (803157,  46,  939524146) /* TsysMutationFilter */
     , (803157,  52,  100676444) /* IconUnderlay */
     , (803157,  55,       4457) /* ProcSpell - Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803157,  3699,      2)  /* Prodigal Defender */
     , (803157,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803157,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803157,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803157,  4305,      2)  /* Incantation of Focus Self */
     , (803157,  4329,      2)  /* Incantation of Willpower Self */
     , (803157,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803157,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803157,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803157,  6091,      2)  /* Legendary Defender */
     , (803157,  6098,      2)  /* Legendary Spirit Thirst */;
