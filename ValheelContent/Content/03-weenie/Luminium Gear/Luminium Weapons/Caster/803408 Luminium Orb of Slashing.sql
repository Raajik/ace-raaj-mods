DELETE FROM `weenie` WHERE `class_Id` = 803408;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803408, 'Luminium Orb of Slashing', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803408,   1,      32768) /* ItemType - Caster */
     , (803408,   3,          4) /* PaletteTemplate - Brown */
     , (803408,   5,        100) /* EncumbranceVal */
     , (803408,   8,         90) /* Mass */
     , (803408,   9,   16777216) /* ValidLocations - Held */
     , (803408,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803408,  19,     500000) /* Value */
     , (803408,  33,          1) /* Bonded - Bonded */
     , (803408,  45,          1) /* DamageType - Slash */
     , (803408,  46,        512) /* DefaultCombatStyle - Magic */
     , (803408,  52,          1) /* ParentLocation - RightHand */
     , (803408,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803408,  94,         16) /* TargetType - Creature */
     , (803408, 106,        999) /* ItemSpellcraft */
     , (803408, 107,       8000) /* ItemCurMana */
     , (803408, 108,       8000) /* ItemMaxMana */
     , (803408, 109,          0) /* ItemDifficulty */
     , (803408, 114,          1) /* Attuned - Attuned */
     , (803408, 117,         30) /* ItemManaCost */
     , (803408, 151,          2) /* HookType - Wall */
     , (803408, 158,          7) /* WieldRequirements - Level */
     , (803408, 160,       5000) /* WieldDifficulty */
     , (803408, 169,  118162702) /* TsysMutationData */
     , (803408, 179,          8) /* ImbuedEffect - SlashRending */
     , (803408, 292,          3) /* Cleaving */
     , (803408, 353,          0) /* WeaponType - Undef */
     , (803408, 370,        155) /* GearDamage */
     , (803408, 371,        155) /* GearDamageResist */
     , (803408, 374,        155) /* GearCritDamage */
     , (803408, 375,        155) /* GearCritDamageResist */
     , (803408, 376,        155) /* GearHealingBoost */
     , (803408, 379,        155) /* GearMaxHealth */
	 , (803408, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803408,  11, True ) /* IgnoreCollisions */
     , (803408,  13, True ) /* Ethereal */
     , (803408,  14, True ) /* GravityStatus */
     , (803408,  19, True ) /* Attackable */
     , (803408,  22, True ) /* Inscribable */
     , (803408, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803408,   5,   -0.05) /* ManaRate */
     , (803408,  12,    0.66) /* Shade */
     , (803408,  29,     1.5) /* WeaponDefense */
     , (803408,  39,       1) /* DefaultScale */
     , (803408,  76,     0.5) /* Translucency */
     , (803408, 136,    0.15) /* CriticalMultiplier */
     , (803408, 144,    0.45) /* ManaConversionMod */
     , (803408, 147,    0.45) /* CriticalFrequency */
     , (803408, 152,       4) /* ElementalDamageMod */
     , (803408, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803408,   1, 'Luminium Orb of Slashing') /* Name */
     , (803408,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803408,   1,   33557115) /* Setup */
     , (803408,   3,  536870932) /* SoundTable */
     , (803408,   8,  100671692) /* Icon */
     , (803408,  22,  872415275) /* PhysicsEffectTable */
     , (803408,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803408,  28,       4457) /* Spell - Incantation of Whirling Blade */
     , (803408,  36,  234881042) /* MutateFilter */
     , (803408,  46,  939524146) /* TsysMutationFilter */
     , (803408,  52,  100676444) /* IconUnderlay */
     , (803408,  55,       4457) /* ProcSpell - Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803408,  3699,      2)  /* Prodigal Defender */
     , (803408,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803408,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803408,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803408,  4305,      2)  /* Incantation of Focus Self */
     , (803408,  4329,      2)  /* Incantation of Willpower Self */
     , (803408,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803408,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803408,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803408,  6091,      2)  /* Legendary Defender */
     , (803408,  6098,      2)  /* Legendary Spirit Thirst */;
