DELETE FROM `weenie` WHERE `class_Id` = 803412;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803412, 'Luminium Orb of Fire', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803412,   1,      32768) /* ItemType - Caster */
     , (803412,   3,          4) /* PaletteTemplate - Brown */
     , (803412,   5,        100) /* EncumbranceVal */
     , (803412,   8,         90) /* Mass */
     , (803412,   9,   16777216) /* ValidLocations - Held */
     , (803412,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803412,  19,     500000) /* Value */
     , (803412,  33,          1) /* Bonded - Bonded */
     , (803412,  45,         16) /* DamageType - Fire */
     , (803412,  46,        512) /* DefaultCombatStyle - Magic */
     , (803412,  52,          1) /* ParentLocation - RightHand */
     , (803412,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803412,  94,         16) /* TargetType - Creature */
     , (803412, 106,        999) /* ItemSpellcraft */
     , (803412, 107,       8000) /* ItemCurMana */
     , (803412, 108,       8000) /* ItemMaxMana */
     , (803412, 109,          0) /* ItemDifficulty */
     , (803412, 114,          1) /* Attuned - Attuned */
     , (803412, 117,         30) /* ItemManaCost */
     , (803412, 151,          2) /* HookType - Wall */
     , (803412, 158,          7) /* WieldRequirements - Level */
     , (803412, 160,       5000) /* WieldDifficulty */
     , (803412, 169,  118162702) /* TsysMutationData */
     , (803412, 179,        512) /* ImbuedEffect - FireRending */
     , (803412, 292,          3) /* Cleaving */
     , (803412, 353,          0) /* WeaponType - Undef */
     , (803412, 370,        155) /* GearDamage */
     , (803412, 371,        155) /* GearDamageResist */
     , (803412, 374,        155) /* GearCritDamage */
     , (803412, 375,        155) /* GearCritDamageResist */
     , (803412, 376,        155) /* GearHealingBoost */
     , (803412, 379,        155) /* GearMaxHealth */
	 , (803412, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803412,  11, True ) /* IgnoreCollisions */
     , (803412,  13, True ) /* Ethereal */
     , (803412,  14, True ) /* GravityStatus */
     , (803412,  19, True ) /* Attackable */
     , (803412,  22, True ) /* Inscribable */
     , (803412, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803412,   5,   -0.05) /* ManaRate */
     , (803412,  12,    0.66) /* Shade */
     , (803412,  29,     1.5) /* WeaponDefense */
     , (803412,  39,       1) /* DefaultScale */
     , (803412,  76,     0.5) /* Translucency */
     , (803412, 136,    0.15) /* CriticalMultiplier */
     , (803412, 144,    0.45) /* ManaConversionMod */
     , (803412, 147,    0.45) /* CriticalFrequency */
     , (803412, 152,       4) /* ElementalDamageMod */
     , (803412, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803412,   1, 'Luminium Orb of Fire') /* Name */
     , (803412,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803412,   1,   33557115) /* Setup */
     , (803412,   3,  536870932) /* SoundTable */
     , (803412,   8,  100671692) /* Icon */
     , (803412,  22,  872415275) /* PhysicsEffectTable */
     , (803412,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803412,  28,       4439) /* Spell - Incantation of Flame Bolt */
     , (803412,  36,  234881042) /* MutateFilter */
     , (803412,  46,  939524146) /* TsysMutationFilter */
     , (803412,  52,  100676441) /* IconUnderlay */
     , (803412,  55,       4439) /* ProcSpell - Incantation of Flame Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803412,  3699,      2)  /* Prodigal Defender */
     , (803412,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803412,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803412,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803412,  4305,      2)  /* Incantation of Focus Self */
     , (803412,  4329,      2)  /* Incantation of Willpower Self */
     , (803412,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803412,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803412,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803412,  6091,      2)  /* Legendary Defender */
     , (803412,  6098,      2)  /* Legendary Spirit Thirst */;
