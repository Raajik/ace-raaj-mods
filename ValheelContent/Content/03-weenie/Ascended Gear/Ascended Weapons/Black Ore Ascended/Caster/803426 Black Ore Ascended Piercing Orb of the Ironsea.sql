DELETE FROM `weenie` WHERE `class_Id` = 803426;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803426, 'Black Ore Ascended Piercing Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803426,   1,      32768) /* ItemType - Caster */
     , (803426,   3,          4) /* PaletteTemplate - Brown */
     , (803426,   5,        100) /* EncumbranceVal */
     , (803426,   8,         90) /* Mass */
     , (803426,   9,   16777216) /* ValidLocations - Held */
     , (803426,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803426,  19,     500000) /* Value */
     , (803426,  33,          1) /* Bonded - Bonded */
     , (803426,  45,          2) /* DamageType - Pierce */
     , (803426,  46,        512) /* DefaultCombatStyle - Magic */
     , (803426,  52,          1) /* ParentLocation - RightHand */
     , (803426,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803426,  94,         16) /* TargetType - Creature */
     , (803426, 106,        999) /* ItemSpellcraft */
     , (803426, 107,       8000) /* ItemCurMana */
     , (803426, 108,       8000) /* ItemMaxMana */
     , (803426, 109,          0) /* ItemDifficulty */
     , (803426, 114,          1) /* Attuned - Attuned */
     , (803426, 117,         30) /* ItemManaCost */
     , (803426, 151,          2) /* HookType - Wall */
     , (803426, 158,          7) /* WieldRequirements - Level */
     , (803426, 160,      10000) /* WieldDifficulty */
     , (803426, 169,  118162702) /* TsysMutationData */
     , (803426, 179,         16) /* ImbuedEffect - PierceRending */
     , (803426, 292,          3) /* Cleaving */
     , (803426, 353,          0) /* WeaponType - Undef */
     , (803426, 370,        210) /* GearDamage */
     , (803426, 371,        210) /* GearDamageResist */
     , (803426, 374,        210) /* GearCritDamage */
     , (803426, 375,        210) /* GearCritDamageResist */
     , (803426, 376,        210) /* GearHealingBoost */
     , (803426, 379,        210) /* GearMaxHealth */
	 , (803426, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803426,  11, True ) /* IgnoreCollisions */
     , (803426,  13, True ) /* Ethereal */
     , (803426,  14, True ) /* GravityStatus */
     , (803426,  19, True ) /* Attackable */
     , (803426,  22, True ) /* Inscribable */
     , (803426, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803426,   5,   -0.05) /* ManaRate */
     , (803426,  12,    0.66) /* Shade */
     , (803426,  29,     1.5) /* WeaponDefense */
     , (803426,  39,     1.5) /* DefaultScale */
     , (803426, 136,    0.15) /* CriticalMultiplier */
     , (803426, 144,    0.45) /* ManaConversionMod */
     , (803426, 147,    0.45) /* CriticalFrequency */
     , (803426, 152,       5) /* ElementalDamageMod */
     , (803426, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803426,   1, 'Black Ore Ascended Piercing Orb of the Ironsea') /* Name */
     , (803426,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803426,   1,   33559424) /* Setup */
     , (803426,   3,  536870932) /* SoundTable */
     , (803426,   6,   67111919) /* PaletteBase */
     , (803426,   8,  100686851) /* Icon */
     , (803426,  22,  872415275) /* PhysicsEffectTable */
     , (803426,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803426,  28,       4443) /* Spell - Incantation of Force Bolt */
     , (803426,  36,  234881042) /* MutateFilter */
     , (803426,  46,  939524146) /* TsysMutationFilter */
     , (803426,  52,  100676443) /* IconUnderlay */
     , (803426,  55,       4443) /* ProcSpell - Incantation of Force Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803426,  3699,      2)  /* Prodigal Defender */
     , (803426,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803426,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803426,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803426,  4305,      2)  /* Incantation of Focus Self */
     , (803426,  4329,      2)  /* Incantation of Willpower Self */
     , (803426,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803426,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803426,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803426,  6091,      2)  /* Legendary Defender */
     , (803426,  6098,      2)  /* Legendary Spirit Thirst */;
