DELETE FROM `weenie` WHERE `class_Id` = 803421;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803421, 'Perfect Ascended Fire Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803421,   1,      32768) /* ItemType - Caster */
     , (803421,   3,          4) /* PaletteTemplate - Brown */
     , (803421,   5,        100) /* EncumbranceVal */
     , (803421,   8,         90) /* Mass */
     , (803421,   9,   16777216) /* ValidLocations - Held */
     , (803421,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803421,  19,     500000) /* Value */
     , (803421,  33,          1) /* Bonded - Bonded */
     , (803421,  45,         16) /* DamageType - Fire */
     , (803421,  46,        512) /* DefaultCombatStyle - Magic */
     , (803421,  52,          1) /* ParentLocation - RightHand */
     , (803421,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803421,  94,         16) /* TargetType - Creature */
     , (803421, 106,        999) /* ItemSpellcraft */
     , (803421, 107,       8000) /* ItemCurMana */
     , (803421, 108,       8000) /* ItemMaxMana */
     , (803421, 109,          0) /* ItemDifficulty */
     , (803421, 114,          1) /* Attuned - Attuned */
     , (803421, 117,         30) /* ItemManaCost */
     , (803421, 151,          2) /* HookType - Wall */
     , (803421, 158,          7) /* WieldRequirements - Level */
     , (803421, 160,       8000) /* WieldDifficulty */
     , (803421, 169,  118162702) /* TsysMutationData */
     , (803421, 179,        512) /* ImbuedEffect - FireRending */
     , (803421, 292,          3) /* Cleaving */
     , (803421, 353,          0) /* WeaponType - Undef */
     , (803421, 370,        185) /* GearDamage */
     , (803421, 371,        185) /* GearDamageResist */
     , (803421, 374,        185) /* GearCritDamage */
     , (803421, 375,        185) /* GearCritDamageResist */
     , (803421, 376,        185) /* GearHealingBoost */
     , (803421, 379,        185) /* GearMaxHealth */
	 , (803421, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803421,  11, True ) /* IgnoreCollisions */
     , (803421,  13, True ) /* Ethereal */
     , (803421,  14, True ) /* GravityStatus */
     , (803421,  19, True ) /* Attackable */
     , (803421,  22, True ) /* Inscribable */
     , (803421, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803421,   5,   -0.05) /* ManaRate */
     , (803421,  12,    0.66) /* Shade */
     , (803421,  29,     1.5) /* WeaponDefense */
     , (803421,  39,     1.5) /* DefaultScale */
     , (803421, 136,    0.15) /* CriticalMultiplier */
     , (803421, 144,    0.45) /* ManaConversionMod */
     , (803421, 147,    0.45) /* CriticalFrequency */
     , (803421, 152,     4.5) /* ElementalDamageMod */
     , (803421, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803421,   1, 'Perfect Ascended Fire Orb of the Ironsea') /* Name */
     , (803421,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803421,   1,   33559424) /* Setup */
     , (803421,   3,  536870932) /* SoundTable */
     , (803421,   6,   67111919) /* PaletteBase */
     , (803421,   8,  100686851) /* Icon */
     , (803421,  22,  872415275) /* PhysicsEffectTable */
     , (803421,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803421,  28,       4439) /* Spell - Incantation of Flame Bolt */
     , (803421,  36,  234881042) /* MutateFilter */
     , (803421,  46,  939524146) /* TsysMutationFilter */
     , (803421,  52,  100676441) /* IconUnderlay */
     , (803421,  55,       4439) /* ProcSpell - Incantation of Flame Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803421,  3699,      2)  /* Prodigal Defender */
     , (803421,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803421,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803421,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803421,  4305,      2)  /* Incantation of Focus Self */
     , (803421,  4329,      2)  /* Incantation of Willpower Self */
     , (803421,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803421,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803421,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803421,  6091,      2)  /* Legendary Defender */
     , (803421,  6098,      2)  /* Legendary Spirit Thirst */;
