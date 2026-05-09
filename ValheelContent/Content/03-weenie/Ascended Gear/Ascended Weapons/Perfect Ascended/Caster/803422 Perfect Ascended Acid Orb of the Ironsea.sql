DELETE FROM `weenie` WHERE `class_Id` = 803422;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803422, 'Perfect Ascended Acid Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803422,   1,      32768) /* ItemType - Caster */
     , (803422,   3,          4) /* PaletteTemplate - Brown */
     , (803422,   5,        100) /* EncumbranceVal */
     , (803422,   8,         90) /* Mass */
     , (803422,   9,   16777216) /* ValidLocations - Held */
     , (803422,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803422,  19,     500000) /* Value */
     , (803422,  33,          1) /* Bonded - Bonded */
     , (803422,  45,         32) /* DamageType - Acid */
     , (803422,  46,        512) /* DefaultCombatStyle - Magic */
     , (803422,  52,          1) /* ParentLocation - RightHand */
     , (803422,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803422,  94,         16) /* TargetType - Creature */
     , (803422, 106,        999) /* ItemSpellcraft */
     , (803422, 107,       8000) /* ItemCurMana */
     , (803422, 108,       8000) /* ItemMaxMana */
     , (803422, 109,          0) /* ItemDifficulty */
     , (803422, 114,          1) /* Attuned - Attuned */
     , (803422, 117,         30) /* ItemManaCost */
     , (803422, 151,          2) /* HookType - Wall */
     , (803422, 158,          7) /* WieldRequirements - Level */
     , (803422, 160,       8000) /* WieldDifficulty */
     , (803422, 169,  118162702) /* TsysMutationData */
     , (803422, 179,         64) /* ImbuedEffect - AcidRending */
     , (803422, 292,          3) /* Cleaving */
     , (803422, 353,          0) /* WeaponType - Undef */
     , (803422, 370,        185) /* GearDamage */
     , (803422, 371,        185) /* GearDamageResist */
     , (803422, 374,        185) /* GearCritDamage */
     , (803422, 375,        185) /* GearCritDamageResist */
     , (803422, 376,        185) /* GearHealingBoost */
     , (803422, 379,        185) /* GearMaxHealth */
	 , (803422, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803422,  11, True ) /* IgnoreCollisions */
     , (803422,  13, True ) /* Ethereal */
     , (803422,  14, True ) /* GravityStatus */
     , (803422,  19, True ) /* Attackable */
     , (803422,  22, True ) /* Inscribable */
     , (803422, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803422,   5,   -0.05) /* ManaRate */
     , (803422,  12,    0.66) /* Shade */
     , (803422,  29,     1.5) /* WeaponDefense */
     , (803422,  39,     1.5) /* DefaultScale */
     , (803422, 136,    0.15) /* CriticalMultiplier */
     , (803422, 144,    0.45) /* ManaConversionMod */
     , (803422, 147,    0.45) /* CriticalFrequency */
     , (803422, 152,     4.5) /* ElementalDamageMod */
     , (803422, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803422,   1, 'Perfect Ascended Acid Orb of the Ironsea') /* Name */
     , (803422,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803422,   1,   33559424) /* Setup */
     , (803422,   3,  536870932) /* SoundTable */
     , (803422,   6,   67111919) /* PaletteBase */
     , (803422,   8,  100686851) /* Icon */
     , (803422,  22,  872415275) /* PhysicsEffectTable */
     , (803422,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803422,  28,       4433) /* Spell - Incantation of Acid Stream */
     , (803422,  36,  234881042) /* MutateFilter */
     , (803422,  46,  939524146) /* TsysMutationFilter */
     , (803422,  52,  100676437) /* IconUnderlay */
     , (803422,  55,       4433) /* ProcSpell - Incantation of Acid Stream */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803422,  3699,      2)  /* Prodigal Defender */
     , (803422,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803422,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803422,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803422,  4305,      2)  /* Incantation of Focus Self */
     , (803422,  4329,      2)  /* Incantation of Willpower Self */
     , (803422,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803422,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803422,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803422,  6091,      2)  /* Legendary Defender */
     , (803422,  6098,      2)  /* Legendary Spirit Thirst */;
