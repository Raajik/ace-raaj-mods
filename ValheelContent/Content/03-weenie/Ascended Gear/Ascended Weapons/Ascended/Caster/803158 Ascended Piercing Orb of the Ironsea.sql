DELETE FROM `weenie` WHERE `class_Id` = 803158;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803158, 'Ascended Piercing Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803158,   1,      32768) /* ItemType - Caster */
     , (803158,   3,          4) /* PaletteTemplate - Brown */
     , (803158,   5,        100) /* EncumbranceVal */
     , (803158,   8,         90) /* Mass */
     , (803158,   9,   16777216) /* ValidLocations - Held */
     , (803158,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803158,  19,     100000) /* Value */
     , (803158,  33,          1) /* Bonded - Bonded */
     , (803158,  45,          2) /* DamageType - Pierce */
     , (803158,  46,        512) /* DefaultCombatStyle - Magic */
     , (803158,  52,          1) /* ParentLocation - RightHand */
     , (803158,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803158,  94,         16) /* TargetType - Creature */
     , (803158, 106,        999) /* ItemSpellcraft */
     , (803158, 107,       8000) /* ItemCurMana */
     , (803158, 108,       8000) /* ItemMaxMana */
     , (803158, 109,          0) /* ItemDifficulty */
     , (803158, 114,          1) /* Attuned - Attuned */
     , (803158, 117,         30) /* ItemManaCost */
     , (803158, 151,          2) /* HookType - Wall */
     , (803158, 158,          7) /* WieldRequirements - Level */
     , (803158, 160,       3000) /* WieldDifficulty */
     , (803158, 169,  118162702) /* TsysMutationData */
     , (803158, 179,         16) /* ImbuedEffect - PierceRending */
     , (803158, 292,          3) /* Cleaving */
     , (803158, 353,          0) /* WeaponType - Undef */
     , (803158, 370,        135) /* GearDamage */
     , (803158, 371,        135) /* GearDamageResist */
     , (803158, 374,        135) /* GearCritDamage */
     , (803158, 375,        135) /* GearCritDamageResist */
     , (803158, 376,        135) /* GearHealingBoost */
     , (803158, 379,        135) /* GearMaxHealth */
	 , (803158, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803158,  11, True ) /* IgnoreCollisions */
     , (803158,  13, True ) /* Ethereal */
     , (803158,  14, True ) /* GravityStatus */
     , (803158,  19, True ) /* Attackable */
     , (803158,  22, True ) /* Inscribable */
     , (803158, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803158,   5,   -0.05) /* ManaRate */
     , (803158,  12,    0.66) /* Shade */
     , (803158,  29,     1.5) /* WeaponDefense */
     , (803158,  39,     1.5) /* DefaultScale */
     , (803158, 136,    0.15) /* CriticalMultiplier */
     , (803158, 144,    0.45) /* ManaConversionMod */
     , (803158, 147,    0.45) /* CriticalFrequency */
     , (803158, 152,     3.5) /* ElementalDamageMod */
     , (803158, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803158,   1, 'Ascended Piercing Orb of the Ironsea') /* Name */
     , (803158,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803158,   1,   33559424) /* Setup */
     , (803158,   3,  536870932) /* SoundTable */
     , (803158,   6,   67111919) /* PaletteBase */
     , (803158,   8,  100686851) /* Icon */
     , (803158,  22,  872415275) /* PhysicsEffectTable */
     , (803158,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803158,  28,       4443) /* Spell - Incantation of Force Bolt */
     , (803158,  36,  234881042) /* MutateFilter */
     , (803158,  46,  939524146) /* TsysMutationFilter */
     , (803158,  52,  100676443) /* IconUnderlay */
     , (803158,  55,       4443) /* ProcSpell - Incantation of Force Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803158,  3699,      2)  /* Prodigal Defender */
     , (803158,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803158,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803158,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803158,  4305,      2)  /* Incantation of Focus Self */
     , (803158,  4329,      2)  /* Incantation of Willpower Self */
     , (803158,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803158,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803158,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803158,  6091,      2)  /* Legendary Defender */
     , (803158,  6098,      2)  /* Legendary Spirit Thirst */;
