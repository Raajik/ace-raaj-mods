DELETE FROM `weenie` WHERE `class_Id` = 803946;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803946, 'Black Ore Ascended Derubloom Wand', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803946,   1,      32768) /* ItemType - Caster */
     , (803946,   3,          4) /* PaletteTemplate - Brown */
     , (803946,   5,        100) /* EncumbranceVal */
     , (803946,   8,         90) /* Mass */
     , (803946,   9,   16777216) /* ValidLocations - Held */
     , (803946,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803946,  19,     100000) /* Value */
     , (803946,  33,          1) /* Bonded - Bonded */
     , (803946,  45,        128) /* DamageType - Health */
     , (803946,  46,        512) /* DefaultCombatStyle - Magic */
     , (803946,  52,          1) /* ParentLocation - RightHand */
     , (803946,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803946,  94,         16) /* TargetType - Creature */
     , (803946, 106,        999) /* ItemSpellcraft */
     , (803946, 107,       8000) /* ItemCurMana */
     , (803946, 108,       8000) /* ItemMaxMana */
     , (803946, 109,          0) /* ItemDifficulty */
     , (803946, 114,          1) /* Attuned - Attuned */
     , (803946, 117,         30) /* ItemManaCost */
     , (803946, 151,          2) /* HookType - Wall */
     , (803946, 158,          7) /* WieldRequirements - Level */
     , (803946, 160,      10000) /* WieldDifficulty */
     , (803946, 169,  118162702) /* TsysMutationData */
     , (803946, 179,       1024) /* ImbuedEffect - MeleeDefense */
     , (803946, 353,          0) /* WeaponType - Undef */
     , (803946, 370,        210) /* GearDamage */
     , (803946, 371,        210) /* GearDamageResist */
     , (803946, 374,        210) /* GearCritDamage */
     , (803946, 375,        210) /* GearCritDamageResist */
     , (803946, 376,        210) /* GearHealingBoost */
     , (803946, 379,        210) /* GearMaxHealth */
	 , (803946, 9041,         3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803946,  11, True ) /* IgnoreCollisions */
     , (803946,  13, True ) /* Ethereal */
     , (803946,  14, True ) /* GravityStatus */
     , (803946,  19, True ) /* Attackable */
     , (803946,  22, True ) /* Inscribable */
     , (803946, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803946,   5,   -0.05) /* ManaRate */
     , (803946,  12,    0.66) /* Shade */
     , (803946,  29,     1.5) /* WeaponDefense */
     , (803946,  39,     1.5) /* DefaultScale */
     , (803946, 136,    0.15) /* CriticalMultiplier */
     , (803946, 144,    0.45) /* ManaConversionMod */
     , (803946, 147,    0.45) /* CriticalFrequency */
     , (803946, 152,     2.0) /* ElementalDamageMod */
     , (803946, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803946,   1, 'Black Ore Ascended Derubloom Wand') /* Name */
     , (803946,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803946,   1,   33561673) /* Setup */
     , (803946,   3,  536870932) /* SoundTable */
     , (803946,   8,  100693344) /* Icon */
     , (803946,  22,  872415275) /* PhysicsEffectTable */
     , (803946,  28,       4310) /* Spell - Incantation of Whirling Blade */
     , (803946,  52,  100687395) /* IconUnderlay */
     , (803946,  55,       4311) /* ProcSpell - Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803946,  3699,      2)  /* Prodigal Defender */
     , (803946,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803946,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803946,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803946,  4305,      2)  /* Incantation of Focus Self */
     , (803946,  4329,      2)  /* Incantation of Willpower Self */
     , (803946,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803946,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803946,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803946,  6091,      2)  /* Legendary Defender */
     , (803946,  6098,      2)  /* Legendary Spirit Thirst */;
