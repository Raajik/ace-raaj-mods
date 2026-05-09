DELETE FROM `weenie` WHERE `class_Id` = 803428;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803428, 'Black Ore Ascended Frost Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803428,   1,      32768) /* ItemType - Caster */
     , (803428,   3,          4) /* PaletteTemplate - Brown */
     , (803428,   5,        100) /* EncumbranceVal */
     , (803428,   8,         90) /* Mass */
     , (803428,   9,   16777216) /* ValidLocations - Held */
     , (803428,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803428,  19,     500000) /* Value */
     , (803428,  33,          1) /* Bonded - Bonded */
     , (803428,  45,          8) /* DamageType - Cold */
     , (803428,  46,        512) /* DefaultCombatStyle - Magic */
     , (803428,  52,          1) /* ParentLocation - RightHand */
     , (803428,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803428,  94,         16) /* TargetType - Creature */
     , (803428, 106,        999) /* ItemSpellcraft */
     , (803428, 107,       8000) /* ItemCurMana */
     , (803428, 108,       8000) /* ItemMaxMana */
     , (803428, 109,          0) /* ItemDifficulty */
     , (803428, 114,          1) /* Attuned - Attuned */
     , (803428, 117,         30) /* ItemManaCost */
     , (803428, 151,          2) /* HookType - Wall */
     , (803428, 158,          7) /* WieldRequirements - Level */
     , (803428, 160,      10000) /* WieldDifficulty */
     , (803428, 169,  118162702) /* TsysMutationData */
     , (803428, 179,        128) /* ImbuedEffect - ColdRending */
     , (803428, 292,          3) /* Cleaving */
     , (803428, 353,          0) /* WeaponType - Undef */
     , (803428, 370,        210) /* GearDamage */
     , (803428, 371,        210) /* GearDamageResist */
     , (803428, 374,        210) /* GearCritDamage */
     , (803428, 375,        210) /* GearCritDamageResist */
     , (803428, 376,        210) /* GearHealingBoost */
     , (803428, 379,        210) /* GearMaxHealth */
	 , (803428, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803428,  11, True ) /* IgnoreCollisions */
     , (803428,  13, True ) /* Ethereal */
     , (803428,  14, True ) /* GravityStatus */
     , (803428,  19, True ) /* Attackable */
     , (803428,  22, True ) /* Inscribable */
     , (803428, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803428,   5,   -0.05) /* ManaRate */
     , (803428,  12,    0.66) /* Shade */
     , (803428,  29,     1.5) /* WeaponDefense */
     , (803428,  39,     1.5) /* DefaultScale */
     , (803428, 136,    0.15) /* CriticalMultiplier */
     , (803428, 144,    0.45) /* ManaConversionMod */
     , (803428, 147,    0.45) /* CriticalFrequency */
     , (803428, 152,       5) /* ElementalDamageMod */
     , (803428, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803428,   1, 'Black Ore Ascended Frost Orb of the Ironsea') /* Name */
     , (803428,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803428,   1,   33559424) /* Setup */
     , (803428,   3,  536870932) /* SoundTable */
     , (803428,   6,   67111919) /* PaletteBase */
     , (803428,   8,  100686851) /* Icon */
     , (803428,  22,  872415275) /* PhysicsEffectTable */
     , (803428,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803428,  28,       4447) /* Spell - Incantation of Frost Bolt */
     , (803428,  36,  234881042) /* MutateFilter */
     , (803428,  46,  939524146) /* TsysMutationFilter */
     , (803428,  52,  100676435) /* IconUnderlay */
     , (803428,  55,       4447) /* ProcSpell - Incantation of Frost Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803428,  3699,      2)  /* Prodigal Defender */
     , (803428,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803428,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803428,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803428,  4305,      2)  /* Incantation of Focus Self */
     , (803428,  4329,      2)  /* Incantation of Willpower Self */
     , (803428,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803428,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803428,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803428,  6091,      2)  /* Legendary Defender */
     , (803428,  6098,      2)  /* Legendary Spirit Thirst */;
