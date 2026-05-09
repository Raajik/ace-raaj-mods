DELETE FROM `weenie` WHERE `class_Id` = 803429;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803429, 'Black Ore Ascended Fire Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803429,   1,      32768) /* ItemType - Caster */
     , (803429,   3,          4) /* PaletteTemplate - Brown */
     , (803429,   5,        100) /* EncumbranceVal */
     , (803429,   8,         90) /* Mass */
     , (803429,   9,   16777216) /* ValidLocations - Held */
     , (803429,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803429,  19,     500000) /* Value */
     , (803429,  33,          1) /* Bonded - Bonded */
     , (803429,  45,         16) /* DamageType - Fire */
     , (803429,  46,        512) /* DefaultCombatStyle - Magic */
     , (803429,  52,          1) /* ParentLocation - RightHand */
     , (803429,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803429,  94,         16) /* TargetType - Creature */
     , (803429, 106,        999) /* ItemSpellcraft */
     , (803429, 107,       8000) /* ItemCurMana */
     , (803429, 108,       8000) /* ItemMaxMana */
     , (803429, 109,          0) /* ItemDifficulty */
     , (803429, 114,          1) /* Attuned - Attuned */
     , (803429, 117,         30) /* ItemManaCost */
     , (803429, 151,          2) /* HookType - Wall */
     , (803429, 158,          7) /* WieldRequirements - Level */
     , (803429, 160,      10000) /* WieldDifficulty */
     , (803429, 169,  118162702) /* TsysMutationData */
     , (803429, 179,        512) /* ImbuedEffect - FireRending */
     , (803429, 292,          3) /* Cleaving */
     , (803429, 353,          0) /* WeaponType - Undef */
     , (803429, 370,        210) /* GearDamage */
     , (803429, 371,        210) /* GearDamageResist */
     , (803429, 374,        210) /* GearCritDamage */
     , (803429, 375,        210) /* GearCritDamageResist */
     , (803429, 376,        210) /* GearHealingBoost */
     , (803429, 379,        210) /* GearMaxHealth */
	 , (803429, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803429,  11, True ) /* IgnoreCollisions */
     , (803429,  13, True ) /* Ethereal */
     , (803429,  14, True ) /* GravityStatus */
     , (803429,  19, True ) /* Attackable */
     , (803429,  22, True ) /* Inscribable */
     , (803429, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803429,   5,   -0.05) /* ManaRate */
     , (803429,  12,    0.66) /* Shade */
     , (803429,  29,     1.5) /* WeaponDefense */
     , (803429,  39,     1.5) /* DefaultScale */
     , (803429, 136,    0.15) /* CriticalMultiplier */
     , (803429, 144,    0.45) /* ManaConversionMod */
     , (803429, 147,    0.45) /* CriticalFrequency */
     , (803429, 152,       5) /* ElementalDamageMod */
     , (803429, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803429,   1, 'Black Ore Ascended Fire Orb of the Ironsea') /* Name */
     , (803429,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803429,   1,   33559424) /* Setup */
     , (803429,   3,  536870932) /* SoundTable */
     , (803429,   6,   67111919) /* PaletteBase */
     , (803429,   8,  100686851) /* Icon */
     , (803429,  22,  872415275) /* PhysicsEffectTable */
     , (803429,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803429,  28,       4439) /* Spell - Incantation of Flame Bolt */
     , (803429,  36,  234881042) /* MutateFilter */
     , (803429,  46,  939524146) /* TsysMutationFilter */
     , (803429,  52,  100676441) /* IconUnderlay */
     , (803429,  55,       4439) /* ProcSpell - Incantation of Flame Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803429,  3699,      2)  /* Prodigal Defender */
     , (803429,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803429,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803429,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803429,  4305,      2)  /* Incantation of Focus Self */
     , (803429,  4329,      2)  /* Incantation of Willpower Self */
     , (803429,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803429,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803429,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803429,  6091,      2)  /* Legendary Defender */
     , (803429,  6098,      2)  /* Legendary Spirit Thirst */;
