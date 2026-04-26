DELETE FROM `weenie` WHERE `class_Id` = 803411;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803411, 'Luminium Orb of Frost', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803411,   1,      32768) /* ItemType - Caster */
     , (803411,   3,          4) /* PaletteTemplate - Brown */
     , (803411,   5,        100) /* EncumbranceVal */
     , (803411,   8,         90) /* Mass */
     , (803411,   9,   16777216) /* ValidLocations - Held */
     , (803411,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803411,  19,     500000) /* Value */
     , (803411,  33,          1) /* Bonded - Bonded */
     , (803411,  45,          8) /* DamageType - Cold */
     , (803411,  46,        512) /* DefaultCombatStyle - Magic */
     , (803411,  52,          1) /* ParentLocation - RightHand */
     , (803411,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803411,  94,         16) /* TargetType - Creature */
     , (803411, 106,        999) /* ItemSpellcraft */
     , (803411, 107,       8000) /* ItemCurMana */
     , (803411, 108,       8000) /* ItemMaxMana */
     , (803411, 109,          0) /* ItemDifficulty */
     , (803411, 114,          1) /* Attuned - Attuned */
     , (803411, 117,         30) /* ItemManaCost */
     , (803411, 151,          2) /* HookType - Wall */
     , (803411, 158,          7) /* WieldRequirements - Level */
     , (803411, 160,       5000) /* WieldDifficulty */
     , (803411, 169,  118162702) /* TsysMutationData */
     , (803411, 179,        128) /* ImbuedEffect - ColdRending */
     , (803411, 292,          3) /* Cleaving */
     , (803411, 353,          0) /* WeaponType - Undef */
     , (803411, 370,        155) /* GearDamage */
     , (803411, 371,        155) /* GearDamageResist */
     , (803411, 374,        155) /* GearCritDamage */
     , (803411, 375,        155) /* GearCritDamageResist */
     , (803411, 376,        155) /* GearHealingBoost */
     , (803411, 379,        155) /* GearMaxHealth */
	 , (803411, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803411,  11, True ) /* IgnoreCollisions */
     , (803411,  13, True ) /* Ethereal */
     , (803411,  14, True ) /* GravityStatus */
     , (803411,  19, True ) /* Attackable */
     , (803411,  22, True ) /* Inscribable */
     , (803411, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803411,   5,   -0.05) /* ManaRate */
     , (803411,  12,    0.66) /* Shade */
     , (803411,  29,     1.5) /* WeaponDefense */
     , (803411,  39,       1) /* DefaultScale */
     , (803411,  76,     0.5) /* Translucency */
     , (803411, 136,    0.15) /* CriticalMultiplier */
     , (803411, 144,    0.45) /* ManaConversionMod */
     , (803411, 147,    0.45) /* CriticalFrequency */
     , (803411, 152,       4) /* ElementalDamageMod */
     , (803411, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803411,   1, 'Luminium Orb of Frost') /* Name */
     , (803411,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803411,   1,   33557115) /* Setup */
     , (803411,   3,  536870932) /* SoundTable */
     , (803411,   8,  100671692) /* Icon */
     , (803411,  22,  872415275) /* PhysicsEffectTable */
     , (803411,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803411,  28,       4447) /* Spell - Incantation of Frost Bolt */
     , (803411,  36,  234881042) /* MutateFilter */
     , (803411,  46,  939524146) /* TsysMutationFilter */
     , (803411,  52,  100676435) /* IconUnderlay */
     , (803411,  55,       4447) /* ProcSpell - Incantation of Frost Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803411,  3699,      2)  /* Prodigal Defender */
     , (803411,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803411,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803411,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803411,  4305,      2)  /* Incantation of Focus Self */
     , (803411,  4329,      2)  /* Incantation of Willpower Self */
     , (803411,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803411,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803411,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803411,  6091,      2)  /* Legendary Defender */
     , (803411,  6098,      2)  /* Legendary Spirit Thirst */;
