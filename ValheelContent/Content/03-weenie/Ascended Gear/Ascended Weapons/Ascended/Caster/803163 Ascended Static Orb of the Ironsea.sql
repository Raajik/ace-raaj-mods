DELETE FROM `weenie` WHERE `class_Id` = 803163;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803163, 'Ascended Static Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803163,   1,      32768) /* ItemType - Caster */
     , (803163,   3,          4) /* PaletteTemplate - Brown */
     , (803163,   5,        100) /* EncumbranceVal */
     , (803163,   8,         90) /* Mass */
     , (803163,   9,   16777216) /* ValidLocations - Held */
     , (803163,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803163,  19,     100000) /* Value */
     , (803163,  33,          1) /* Bonded - Bonded */
     , (803163,  45,         64) /* DamageType - Electric */
     , (803163,  46,        512) /* DefaultCombatStyle - Magic */
     , (803163,  52,          1) /* ParentLocation - RightHand */
     , (803163,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803163,  94,         16) /* TargetType - Creature */
     , (803163, 106,        999) /* ItemSpellcraft */
     , (803163, 107,       8000) /* ItemCurMana */
     , (803163, 108,       8000) /* ItemMaxMana */
     , (803163, 109,          0) /* ItemDifficulty */
     , (803163, 114,          1) /* Attuned - Attuned */
     , (803163, 117,         30) /* ItemManaCost */
     , (803163, 151,          2) /* HookType - Wall */
     , (803163, 158,          7) /* WieldRequirements - Level */
     , (803163, 160,       3000) /* WieldDifficulty */
     , (803163, 169,  118162702) /* TsysMutationData */
     , (803163, 179,        256) /* ImbuedEffect - ElectricRending */
     , (803163, 292,          3) /* Cleaving */
     , (803163, 353,          0) /* WeaponType - Undef */
     , (803163, 370,        135) /* GearDamage */
     , (803163, 371,        135) /* GearDamageResist */
     , (803163, 374,        135) /* GearCritDamage */
     , (803163, 375,        135) /* GearCritDamageResist */
     , (803163, 376,        135) /* GearHealingBoost */
     , (803163, 379,        135) /* GearMaxHealth */
	 , (803163, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803163,  11, True ) /* IgnoreCollisions */
     , (803163,  13, True ) /* Ethereal */
     , (803163,  14, True ) /* GravityStatus */
     , (803163,  19, True ) /* Attackable */
     , (803163,  22, True ) /* Inscribable */
     , (803163, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803163,   5,   -0.05) /* ManaRate */
     , (803163,  12,    0.66) /* Shade */
     , (803163,  29,     1.5) /* WeaponDefense */
     , (803163,  39,     1.5) /* DefaultScale */
     , (803163, 136,    0.15) /* CriticalMultiplier */
     , (803163, 144,    0.45) /* ManaConversionMod */
     , (803163, 147,    0.45) /* CriticalFrequency */
     , (803163, 152,     3.5) /* ElementalDamageMod */
     , (803163, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803163,   1, 'Ascended Static Orb of the Ironsea') /* Name */
     , (803163,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803163,   1,   33559424) /* Setup */
     , (803163,   3,  536870932) /* SoundTable */
     , (803163,   6,   67111919) /* PaletteBase */
     , (803163,   8,  100686851) /* Icon */
     , (803163,  22,  872415275) /* PhysicsEffectTable */
     , (803163,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803163,  28,       4451) /* Spell - Incantation of Lightning Bolt */
     , (803163,  36,  234881042) /* MutateFilter */
     , (803163,  46,  939524146) /* TsysMutationFilter */
     , (803163,  52,  100676436) /* IconUnderlay */
     , (803163,  55,       4451) /* ProcSpell - Incantation of Lightning Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803163,  3699,      2)  /* Prodigal Defender */
     , (803163,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803163,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803163,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803163,  4305,      2)  /* Incantation of Focus Self */
     , (803163,  4329,      2)  /* Incantation of Willpower Self */
     , (803163,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803163,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803163,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803163,  6091,      2)  /* Legendary Defender */
     , (803163,  6098,      2)  /* Legendary Spirit Thirst */;
