DELETE FROM `weenie` WHERE `class_Id` = 803413;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803413, 'Luminium Orb of Acid', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803413,   1,      32768) /* ItemType - Caster */
     , (803413,   3,          4) /* PaletteTemplate - Brown */
     , (803413,   5,        100) /* EncumbranceVal */
     , (803413,   8,         90) /* Mass */
     , (803413,   9,   16777216) /* ValidLocations - Held */
     , (803413,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803413,  19,     500000) /* Value */
     , (803413,  33,          1) /* Bonded - Bonded */
     , (803413,  45,         32) /* DamageType - Acid */
     , (803413,  46,        512) /* DefaultCombatStyle - Magic */
     , (803413,  52,          1) /* ParentLocation - RightHand */
     , (803413,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803413,  94,         16) /* TargetType - Creature */
     , (803413, 106,        999) /* ItemSpellcraft */
     , (803413, 107,       8000) /* ItemCurMana */
     , (803413, 108,       8000) /* ItemMaxMana */
     , (803413, 109,          0) /* ItemDifficulty */
     , (803413, 114,          1) /* Attuned - Attuned */
     , (803413, 117,         30) /* ItemManaCost */
     , (803413, 151,          2) /* HookType - Wall */
     , (803413, 158,          7) /* WieldRequirements - Level */
     , (803413, 160,       5000) /* WieldDifficulty */
     , (803413, 169,  118162702) /* TsysMutationData */
     , (803413, 179,         64) /* ImbuedEffect - AcidRending */
     , (803413, 292,          3) /* Cleaving */
     , (803413, 353,          0) /* WeaponType - Undef */
     , (803413, 370,        155) /* GearDamage */
     , (803413, 371,        155) /* GearDamageResist */
     , (803413, 374,        155) /* GearCritDamage */
     , (803413, 375,        155) /* GearCritDamageResist */
     , (803413, 376,        155) /* GearHealingBoost */
     , (803413, 379,        155) /* GearMaxHealth */
	 , (803413, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803413,  11, True ) /* IgnoreCollisions */
     , (803413,  13, True ) /* Ethereal */
     , (803413,  14, True ) /* GravityStatus */
     , (803413,  19, True ) /* Attackable */
     , (803413,  22, True ) /* Inscribable */
     , (803413, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803413,   5,   -0.05) /* ManaRate */
     , (803413,  12,    0.66) /* Shade */
     , (803413,  29,     1.5) /* WeaponDefense */
     , (803413,  39,       1) /* DefaultScale */
     , (803413,  76,     0.5) /* Translucency */
     , (803413, 136,    0.15) /* CriticalMultiplier */
     , (803413, 144,    0.45) /* ManaConversionMod */
     , (803413, 147,    0.45) /* CriticalFrequency */
     , (803413, 152,       4) /* ElementalDamageMod */
     , (803413, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803413,   1, 'Luminium Orb of Acid') /* Name */
     , (803413,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803413,   1,   33557115) /* Setup */
     , (803413,   3,  536870932) /* SoundTable */
     , (803413,   8,  100671692) /* Icon */
     , (803413,  22,  872415275) /* PhysicsEffectTable */
     , (803413,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803413,  28,       4433) /* Spell - Incantation of Acid Stream */
     , (803413,  36,  234881042) /* MutateFilter */
     , (803413,  46,  939524146) /* TsysMutationFilter */
     , (803413,  52,  100676437) /* IconUnderlay */
     , (803413,  55,       4433) /* ProcSpell - Incantation of Acid Stream */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803413,  3699,      2)  /* Prodigal Defender */
     , (803413,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803413,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803413,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803413,  4305,      2)  /* Incantation of Focus Self */
     , (803413,  4329,      2)  /* Incantation of Willpower Self */
     , (803413,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803413,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803413,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803413,  6091,      2)  /* Legendary Defender */
     , (803413,  6098,      2)  /* Legendary Spirit Thirst */;
