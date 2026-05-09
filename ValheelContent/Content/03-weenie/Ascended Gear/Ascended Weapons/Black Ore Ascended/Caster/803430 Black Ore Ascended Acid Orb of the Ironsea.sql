DELETE FROM `weenie` WHERE `class_Id` = 803430;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803430, 'Black Ore Ascended Acid Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803430,   1,      32768) /* ItemType - Caster */
     , (803430,   3,          4) /* PaletteTemplate - Brown */
     , (803430,   5,        100) /* EncumbranceVal */
     , (803430,   8,         90) /* Mass */
     , (803430,   9,   16777216) /* ValidLocations - Held */
     , (803430,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803430,  19,     500000) /* Value */
     , (803430,  33,          1) /* Bonded - Bonded */
     , (803430,  45,         32) /* DamageType - Acid */
     , (803430,  46,        512) /* DefaultCombatStyle - Magic */
     , (803430,  52,          1) /* ParentLocation - RightHand */
     , (803430,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803430,  94,         16) /* TargetType - Creature */
     , (803430, 106,        999) /* ItemSpellcraft */
     , (803430, 107,       8000) /* ItemCurMana */
     , (803430, 108,       8000) /* ItemMaxMana */
     , (803430, 109,          0) /* ItemDifficulty */
     , (803430, 114,          1) /* Attuned - Attuned */
     , (803430, 117,         30) /* ItemManaCost */
     , (803430, 151,          2) /* HookType - Wall */
     , (803430, 158,          7) /* WieldRequirements - Level */
     , (803430, 160,      10000) /* WieldDifficulty */
     , (803430, 169,  118162702) /* TsysMutationData */
     , (803430, 179,         64) /* ImbuedEffect - AcidRending */
     , (803430, 292,          3) /* Cleaving */
     , (803430, 353,          0) /* WeaponType - Undef */
     , (803430, 370,        210) /* GearDamage */
     , (803430, 371,        210) /* GearDamageResist */
     , (803430, 374,        210) /* GearCritDamage */
     , (803430, 375,        210) /* GearCritDamageResist */
     , (803430, 376,        210) /* GearHealingBoost */
     , (803430, 379,        210) /* GearMaxHealth */
	 , (803430, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803430,  11, True ) /* IgnoreCollisions */
     , (803430,  13, True ) /* Ethereal */
     , (803430,  14, True ) /* GravityStatus */
     , (803430,  19, True ) /* Attackable */
     , (803430,  22, True ) /* Inscribable */
     , (803430, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803430,   5,   -0.05) /* ManaRate */
     , (803430,  12,    0.66) /* Shade */
     , (803430,  29,     1.5) /* WeaponDefense */
     , (803430,  39,     1.5) /* DefaultScale */
     , (803430, 136,    0.15) /* CriticalMultiplier */
     , (803430, 144,    0.45) /* ManaConversionMod */
     , (803430, 147,    0.45) /* CriticalFrequency */
     , (803430, 152,       5) /* ElementalDamageMod */
     , (803430, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803430,   1, 'Black Ore Ascended Acid Orb of the Ironsea') /* Name */
     , (803430,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803430,   1,   33559424) /* Setup */
     , (803430,   3,  536870932) /* SoundTable */
     , (803430,   6,   67111919) /* PaletteBase */
     , (803430,   8,  100686851) /* Icon */
     , (803430,  22,  872415275) /* PhysicsEffectTable */
     , (803430,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803430,  28,       4433) /* Spell - Incantation of Acid Stream */
     , (803430,  36,  234881042) /* MutateFilter */
     , (803430,  46,  939524146) /* TsysMutationFilter */
     , (803430,  52,  100676437) /* IconUnderlay */
     , (803430,  55,       4433) /* ProcSpell - Incantation of Acid Stream */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803430,  3699,      2)  /* Prodigal Defender */
     , (803430,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803430,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803430,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803430,  4305,      2)  /* Incantation of Focus Self */
     , (803430,  4329,      2)  /* Incantation of Willpower Self */
     , (803430,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803430,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803430,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803430,  6091,      2)  /* Legendary Defender */
     , (803430,  6098,      2)  /* Legendary Spirit Thirst */;
