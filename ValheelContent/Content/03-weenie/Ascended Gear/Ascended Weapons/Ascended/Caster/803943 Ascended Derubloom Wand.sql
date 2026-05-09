DELETE FROM `weenie` WHERE `class_Id` = 803943;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803943, 'Ascended Derubloom Wand', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803943,   1,      32768) /* ItemType - Caster */
     , (803943,   3,          4) /* PaletteTemplate - Brown */
     , (803943,   5,        100) /* EncumbranceVal */
     , (803943,   8,         90) /* Mass */
     , (803943,   9,   16777216) /* ValidLocations - Held */
     , (803943,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803943,  19,     100000) /* Value */
     , (803943,  33,          1) /* Bonded - Bonded */
     , (803943,  45,        128) /* DamageType - Health */
     , (803943,  46,        512) /* DefaultCombatStyle - Magic */
     , (803943,  52,          1) /* ParentLocation - RightHand */
     , (803943,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803943,  94,         16) /* TargetType - Creature */
     , (803943, 106,        999) /* ItemSpellcraft */
     , (803943, 107,       8000) /* ItemCurMana */
     , (803943, 108,       8000) /* ItemMaxMana */
     , (803943, 109,          0) /* ItemDifficulty */
     , (803943, 114,          1) /* Attuned - Attuned */
     , (803943, 117,         30) /* ItemManaCost */
     , (803943, 151,          2) /* HookType - Wall */
     , (803943, 158,          7) /* WieldRequirements - Level */
     , (803943, 160,       3000) /* WieldDifficulty */
     , (803943, 169,  118162702) /* TsysMutationData */
     , (803943, 179,       1024) /* ImbuedEffect - MeleeDefense */
     , (803943, 353,          0) /* WeaponType - Undef */
     , (803943, 370,        135) /* GearDamage */
     , (803943, 371,        135) /* GearDamageResist */
     , (803943, 374,        135) /* GearCritDamage */
     , (803943, 375,        135) /* GearCritDamageResist */
     , (803943, 376,        135) /* GearHealingBoost */
     , (803943, 379,        135) /* GearMaxHealth */
	 , (803943, 9041,         1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803943,  11, True ) /* IgnoreCollisions */
     , (803943,  13, True ) /* Ethereal */
     , (803943,  14, True ) /* GravityStatus */
     , (803943,  19, True ) /* Attackable */
     , (803943,  22, True ) /* Inscribable */
     , (803943, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803943,   5,   -0.05) /* ManaRate */
     , (803943,  12,    0.66) /* Shade */
     , (803943,  29,     1.5) /* WeaponDefense */
     , (803943,  39,     1.5) /* DefaultScale */
     , (803943, 136,    0.15) /* CriticalMultiplier */
     , (803943, 144,    0.45) /* ManaConversionMod */
     , (803943, 147,    0.45) /* CriticalFrequency */
     , (803943, 152,     1.5) /* ElementalDamageMod */
     , (803943, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803943,   1, 'Ascended Derubloom Wand') /* Name */
     , (803943,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803943,   1,   33561673) /* Setup */
     , (803943,   3,  536870932) /* SoundTable */
     , (803943,   8,  100693344) /* Icon */
     , (803943,  22,  872415275) /* PhysicsEffectTable */
     , (803943,  28,       4310) /* Spell - Incantation of Whirling Blade */
     , (803943,  52,  100686604) /* IconUnderlay */
     , (803943,  55,       4311) /* ProcSpell - Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803943,  3699,      2)  /* Prodigal Defender */
     , (803943,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803943,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803943,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803943,  4305,      2)  /* Incantation of Focus Self */
     , (803943,  4329,      2)  /* Incantation of Willpower Self */
     , (803943,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803943,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803943,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803943,  6091,      2)  /* Legendary Defender */
     , (803943,  6098,      2)  /* Legendary Spirit Thirst */;
