DELETE FROM `weenie` WHERE `class_Id` = 803161;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803161, 'Ascended Fire Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803161,   1,      32768) /* ItemType - Caster */
     , (803161,   3,          4) /* PaletteTemplate - Brown */
     , (803161,   5,        100) /* EncumbranceVal */
     , (803161,   8,         90) /* Mass */
     , (803161,   9,   16777216) /* ValidLocations - Held */
     , (803161,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803161,  19,     100000) /* Value */
     , (803161,  33,          1) /* Bonded - Bonded */
     , (803161,  45,         16) /* DamageType - Fire */
     , (803161,  46,        512) /* DefaultCombatStyle - Magic */
     , (803161,  52,          1) /* ParentLocation - RightHand */
     , (803161,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803161,  94,         16) /* TargetType - Creature */
     , (803161, 106,        999) /* ItemSpellcraft */
     , (803161, 107,       8000) /* ItemCurMana */
     , (803161, 108,       8000) /* ItemMaxMana */
     , (803161, 109,          0) /* ItemDifficulty */
     , (803161, 114,          1) /* Attuned - Attuned */
     , (803161, 117,         30) /* ItemManaCost */
     , (803161, 151,          2) /* HookType - Wall */
     , (803161, 158,          7) /* WieldRequirements - Level */
     , (803161, 160,       3000) /* WieldDifficulty */
     , (803161, 169,  118162702) /* TsysMutationData */
     , (803161, 179,        512) /* ImbuedEffect - FireRending */
     , (803161, 292,          3) /* Cleaving */
     , (803161, 353,          0) /* WeaponType - Undef */
     , (803161, 370,        135) /* GearDamage */
     , (803161, 371,        135) /* GearDamageResist */
     , (803161, 374,        135) /* GearCritDamage */
     , (803161, 375,        135) /* GearCritDamageResist */
     , (803161, 376,        135) /* GearHealingBoost */
     , (803161, 379,        135) /* GearMaxHealth */
	 , (803161, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803161,  11, True ) /* IgnoreCollisions */
     , (803161,  13, True ) /* Ethereal */
     , (803161,  14, True ) /* GravityStatus */
     , (803161,  19, True ) /* Attackable */
     , (803161,  22, True ) /* Inscribable */
     , (803161, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803161,   5,   -0.05) /* ManaRate */
     , (803161,  12,    0.66) /* Shade */
     , (803161,  29,     1.5) /* WeaponDefense */
     , (803161,  39,     1.5) /* DefaultScale */
     , (803161, 136,    0.15) /* CriticalMultiplier */
     , (803161, 144,    0.45) /* ManaConversionMod */
     , (803161, 147,    0.45) /* CriticalFrequency */
     , (803161, 152,     3.5) /* ElementalDamageMod */
     , (803161, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803161,   1, 'Ascended Fire Orb of the Ironsea') /* Name */
     , (803161,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803161,   1,   33559424) /* Setup */
     , (803161,   3,  536870932) /* SoundTable */
     , (803161,   6,   67111919) /* PaletteBase */
     , (803161,   8,  100686851) /* Icon */
     , (803161,  22,  872415275) /* PhysicsEffectTable */
     , (803161,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803161,  28,       4439) /* Spell - Incantation of Flame Bolt */
     , (803161,  36,  234881042) /* MutateFilter */
     , (803161,  46,  939524146) /* TsysMutationFilter */
     , (803161,  52,  100676441) /* IconUnderlay */
     , (803161,  55,       4439) /* ProcSpell - Incantation of Flame Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803161,  3699,      2)  /* Prodigal Defender */
     , (803161,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803161,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803161,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803161,  4305,      2)  /* Incantation of Focus Self */
     , (803161,  4329,      2)  /* Incantation of Willpower Self */
     , (803161,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803161,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803161,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803161,  6091,      2)  /* Legendary Defender */
     , (803161,  6098,      2)  /* Legendary Spirit Thirst */;
