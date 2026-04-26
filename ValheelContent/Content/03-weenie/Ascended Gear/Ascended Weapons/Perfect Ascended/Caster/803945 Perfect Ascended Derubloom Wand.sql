DELETE FROM `weenie` WHERE `class_Id` = 803945;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803945, 'Perfect Ascended Derubloom Wand', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803945,   1,      32768) /* ItemType - Caster */
     , (803945,   3,          4) /* PaletteTemplate - Brown */
     , (803945,   5,        100) /* EncumbranceVal */
     , (803945,   8,         90) /* Mass */
     , (803945,   9,   16777216) /* ValidLocations - Held */
     , (803945,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803945,  19,     100000) /* Value */
     , (803945,  33,          1) /* Bonded - Bonded */
     , (803945,  45,        128) /* DamageType - Health */
     , (803945,  46,        512) /* DefaultCombatStyle - Magic */
     , (803945,  52,          1) /* ParentLocation - RightHand */
     , (803945,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803945,  94,         16) /* TargetType - Creature */
     , (803945, 106,        999) /* ItemSpellcraft */
     , (803945, 107,       8000) /* ItemCurMana */
     , (803945, 108,       8000) /* ItemMaxMana */
     , (803945, 109,          0) /* ItemDifficulty */
     , (803945, 114,          1) /* Attuned - Attuned */
     , (803945, 117,         30) /* ItemManaCost */
     , (803945, 151,          2) /* HookType - Wall */
     , (803945, 158,          7) /* WieldRequirements - Level */
     , (803945, 160,       8000) /* WieldDifficulty */
     , (803945, 169,  118162702) /* TsysMutationData */
     , (803945, 179,       1024) /* ImbuedEffect - MeleeDefense */
     , (803945, 353,          0) /* WeaponType - Undef */
     , (803945, 370,        185) /* GearDamage */
     , (803945, 371,        185) /* GearDamageResist */
     , (803945, 374,        185) /* GearCritDamage */
     , (803945, 375,        185) /* GearCritDamageResist */
     , (803945, 376,        185) /* GearHealingBoost */
     , (803945, 379,        185) /* GearMaxHealth */
	 , (803945, 9041,         2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803945,  11, True ) /* IgnoreCollisions */
     , (803945,  13, True ) /* Ethereal */
     , (803945,  14, True ) /* GravityStatus */
     , (803945,  19, True ) /* Attackable */
     , (803945,  22, True ) /* Inscribable */
     , (803945, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803945,   5,   -0.05) /* ManaRate */
     , (803945,  12,    0.66) /* Shade */
     , (803945,  29,     1.5) /* WeaponDefense */
     , (803945,  39,     1.5) /* DefaultScale */
     , (803945, 136,    0.15) /* CriticalMultiplier */
     , (803945, 144,    0.45) /* ManaConversionMod */
     , (803945, 147,    0.45) /* CriticalFrequency */
     , (803945, 152,    1.75) /* ElementalDamageMod */
     , (803945, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803945,   1, 'Perfect Ascended Derubloom Wand') /* Name */
     , (803945,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803945,   1,   33561673) /* Setup */
     , (803945,   3,  536870932) /* SoundTable */
     , (803945,   8,  100693344) /* Icon */
     , (803945,  22,  872415275) /* PhysicsEffectTable */
     , (803945,  28,       4310) /* Spell - Incantation of Whirling Blade */
     , (803945,  52,  100676442) /* IconUnderlay */
     , (803945,  55,       4311) /* ProcSpell - Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803945,  3699,      2)  /* Prodigal Defender */
     , (803945,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803945,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803945,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803945,  4305,      2)  /* Incantation of Focus Self */
     , (803945,  4329,      2)  /* Incantation of Willpower Self */
     , (803945,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803945,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803945,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803945,  6091,      2)  /* Legendary Defender */
     , (803945,  6098,      2)  /* Legendary Spirit Thirst */;
