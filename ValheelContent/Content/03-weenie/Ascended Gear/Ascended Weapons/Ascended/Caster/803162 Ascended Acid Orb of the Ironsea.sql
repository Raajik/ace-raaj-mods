DELETE FROM `weenie` WHERE `class_Id` = 803162;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803162, 'Ascended Acid Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803162,   1,      32768) /* ItemType - Caster */
     , (803162,   3,          4) /* PaletteTemplate - Brown */
     , (803162,   5,        100) /* EncumbranceVal */
     , (803162,   8,         90) /* Mass */
     , (803162,   9,   16777216) /* ValidLocations - Held */
     , (803162,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803162,  19,     100000) /* Value */
     , (803162,  33,          1) /* Bonded - Bonded */
     , (803162,  45,         32) /* DamageType - Acid */
     , (803162,  46,        512) /* DefaultCombatStyle - Magic */
     , (803162,  52,          1) /* ParentLocation - RightHand */
     , (803162,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803162,  94,         16) /* TargetType - Creature */
     , (803162, 106,        999) /* ItemSpellcraft */
     , (803162, 107,       8000) /* ItemCurMana */
     , (803162, 108,       8000) /* ItemMaxMana */
     , (803162, 109,          0) /* ItemDifficulty */
     , (803162, 114,          1) /* Attuned - Attuned */
     , (803162, 117,         30) /* ItemManaCost */
     , (803162, 151,          2) /* HookType - Wall */
     , (803162, 158,          7) /* WieldRequirements - Level */
     , (803162, 160,       3000) /* WieldDifficulty */
     , (803162, 169,  118162702) /* TsysMutationData */
     , (803162, 179,         64) /* ImbuedEffect - AcidRending */
     , (803162, 292,          3) /* Cleaving */
     , (803162, 353,          0) /* WeaponType - Undef */
     , (803162, 370,        135) /* GearDamage */
     , (803162, 371,        135) /* GearDamageResist */
     , (803162, 374,        135) /* GearCritDamage */
     , (803162, 375,        135) /* GearCritDamageResist */
     , (803162, 376,        135) /* GearHealingBoost */
     , (803162, 379,        135) /* GearMaxHealth */
	 , (803162, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803162,  11, True ) /* IgnoreCollisions */
     , (803162,  13, True ) /* Ethereal */
     , (803162,  14, True ) /* GravityStatus */
     , (803162,  19, True ) /* Attackable */
     , (803162,  22, True ) /* Inscribable */
     , (803162, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803162,   5,   -0.05) /* ManaRate */
     , (803162,  12,    0.66) /* Shade */
     , (803162,  29,     1.5) /* WeaponDefense */
     , (803162,  39,     1.5) /* DefaultScale */
     , (803162, 136,    0.15) /* CriticalMultiplier */
     , (803162, 144,    0.45) /* ManaConversionMod */
     , (803162, 147,    0.45) /* CriticalFrequency */
     , (803162, 152,     3.5) /* ElementalDamageMod */
     , (803162, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803162,   1, 'Ascended Acid Orb of the Ironsea') /* Name */
     , (803162,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803162,   1,   33559424) /* Setup */
     , (803162,   3,  536870932) /* SoundTable */
     , (803162,   6,   67111919) /* PaletteBase */
     , (803162,   8,  100686851) /* Icon */
     , (803162,  22,  872415275) /* PhysicsEffectTable */
     , (803162,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803162,  28,       4433) /* Spell - Incantation of Acid Stream */
     , (803162,  36,  234881042) /* MutateFilter */
     , (803162,  46,  939524146) /* TsysMutationFilter */
     , (803162,  52,  100676437) /* IconUnderlay */
     , (803162,  55,       4433) /* ProcSpell - Incantation of Acid Stream */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803162,  3699,      2)  /* Prodigal Defender */
     , (803162,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803162,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803162,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803162,  4305,      2)  /* Incantation of Focus Self */
     , (803162,  4329,      2)  /* Incantation of Willpower Self */
     , (803162,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803162,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803162,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803162,  6091,      2)  /* Legendary Defender */
     , (803162,  6098,      2)  /* Legendary Spirit Thirst */;
