DELETE FROM `weenie` WHERE `class_Id` = 803425;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803425, 'Black Ore Ascended Slashing Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803425,   1,      32768) /* ItemType - Caster */
     , (803425,   3,          4) /* PaletteTemplate - Brown */
     , (803425,   5,        100) /* EncumbranceVal */
     , (803425,   8,         90) /* Mass */
     , (803425,   9,   16777216) /* ValidLocations - Held */
     , (803425,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803425,  19,     500000) /* Value */
     , (803425,  33,          1) /* Bonded - Bonded */
     , (803425,  45,          1) /* DamageType - Slash */
     , (803425,  46,        512) /* DefaultCombatStyle - Magic */
     , (803425,  52,          1) /* ParentLocation - RightHand */
     , (803425,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803425,  94,         16) /* TargetType - Creature */
     , (803425, 106,        999) /* ItemSpellcraft */
     , (803425, 107,       8000) /* ItemCurMana */
     , (803425, 108,       8000) /* ItemMaxMana */
     , (803425, 109,          0) /* ItemDifficulty */
     , (803425, 114,          1) /* Attuned - Attuned */
     , (803425, 117,         30) /* ItemManaCost */
     , (803425, 151,          2) /* HookType - Wall */
     , (803425, 158,          7) /* WieldRequirements - Level */
     , (803425, 160,      10000) /* WieldDifficulty */
     , (803425, 169,  118162702) /* TsysMutationData */
     , (803425, 179,          8) /* ImbuedEffect - SlashRending */
     , (803425, 292,          3) /* Cleaving */
     , (803425, 353,          0) /* WeaponType - Undef */
     , (803425, 370,        210) /* GearDamage */
     , (803425, 371,        210) /* GearDamageResist */
     , (803425, 374,        210) /* GearCritDamage */
     , (803425, 375,        210) /* GearCritDamageResist */
     , (803425, 376,        210) /* GearHealingBoost */
     , (803425, 379,        210) /* GearMaxHealth */
	 , (803425, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803425,  11, True ) /* IgnoreCollisions */
     , (803425,  13, True ) /* Ethereal */
     , (803425,  14, True ) /* GravityStatus */
     , (803425,  19, True ) /* Attackable */
     , (803425,  22, True ) /* Inscribable */
     , (803425, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803425,   5,   -0.05) /* ManaRate */
     , (803425,  12,    0.66) /* Shade */
     , (803425,  29,     1.5) /* WeaponDefense */
     , (803425,  39,     1.5) /* DefaultScale */
     , (803425, 136,    0.15) /* CriticalMultiplier */
     , (803425, 144,    0.45) /* ManaConversionMod */
     , (803425, 147,    0.45) /* CriticalFrequency */
     , (803425, 152,       5) /* ElementalDamageMod */
     , (803425, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803425,   1, 'Black Ore Ascended Slashing Orb of the Ironsea') /* Name */
     , (803425,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803425,   1,   33559424) /* Setup */
     , (803425,   3,  536870932) /* SoundTable */
     , (803425,   6,   67111919) /* PaletteBase */
     , (803425,   8,  100686851) /* Icon */
     , (803425,  22,  872415275) /* PhysicsEffectTable */
     , (803425,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803425,  28,       4457) /* Spell - Incantation of Whirling Blade */
     , (803425,  36,  234881042) /* MutateFilter */
     , (803425,  46,  939524146) /* TsysMutationFilter */
     , (803425,  52,  100676444) /* IconUnderlay */
     , (803425,  55,       4457) /* ProcSpell - Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803425,  3699,      2)  /* Prodigal Defender */
     , (803425,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803425,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803425,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803425,  4305,      2)  /* Incantation of Focus Self */
     , (803425,  4329,      2)  /* Incantation of Willpower Self */
     , (803425,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803425,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803425,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803425,  6091,      2)  /* Legendary Defender */
     , (803425,  6098,      2)  /* Legendary Spirit Thirst */;
