DELETE FROM `weenie` WHERE `class_Id` = 803418;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803418, 'Perfect Ascended Piercing Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803418,   1,      32768) /* ItemType - Caster */
     , (803418,   3,          4) /* PaletteTemplate - Brown */
     , (803418,   5,        100) /* EncumbranceVal */
     , (803418,   8,         90) /* Mass */
     , (803418,   9,   16777216) /* ValidLocations - Held */
     , (803418,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803418,  19,     500000) /* Value */
     , (803418,  33,          1) /* Bonded - Bonded */
     , (803418,  45,          2) /* DamageType - Pierce */
     , (803418,  46,        512) /* DefaultCombatStyle - Magic */
     , (803418,  52,          1) /* ParentLocation - RightHand */
     , (803418,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803418,  94,         16) /* TargetType - Creature */
     , (803418, 106,        999) /* ItemSpellcraft */
     , (803418, 107,       8000) /* ItemCurMana */
     , (803418, 108,       8000) /* ItemMaxMana */
     , (803418, 109,          0) /* ItemDifficulty */
     , (803418, 114,          1) /* Attuned - Attuned */
     , (803418, 117,         30) /* ItemManaCost */
     , (803418, 151,          2) /* HookType - Wall */
     , (803418, 158,          7) /* WieldRequirements - Level */
     , (803418, 160,       8000) /* WieldDifficulty */
     , (803418, 169,  118162702) /* TsysMutationData */
     , (803418, 179,         16) /* ImbuedEffect - PierceRending */
     , (803418, 292,          3) /* Cleaving */
     , (803418, 353,          0) /* WeaponType - Undef */
     , (803418, 370,        185) /* GearDamage */
     , (803418, 371,        185) /* GearDamageResist */
     , (803418, 374,        185) /* GearCritDamage */
     , (803418, 375,        185) /* GearCritDamageResist */
     , (803418, 376,        185) /* GearHealingBoost */
     , (803418, 379,        185) /* GearMaxHealth */
	 , (803418, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803418,  11, True ) /* IgnoreCollisions */
     , (803418,  13, True ) /* Ethereal */
     , (803418,  14, True ) /* GravityStatus */
     , (803418,  19, True ) /* Attackable */
     , (803418,  22, True ) /* Inscribable */
     , (803418, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803418,   5,   -0.05) /* ManaRate */
     , (803418,  12,    0.66) /* Shade */
     , (803418,  29,     1.5) /* WeaponDefense */
     , (803418,  39,     1.5) /* DefaultScale */
     , (803418, 136,    0.15) /* CriticalMultiplier */
     , (803418, 144,    0.45) /* ManaConversionMod */
     , (803418, 147,    0.45) /* CriticalFrequency */
     , (803418, 152,     4.5) /* ElementalDamageMod */
     , (803418, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803418,   1, 'Perfect Ascended Piercing Orb of the Ironsea') /* Name */
     , (803418,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803418,   1,   33559424) /* Setup */
     , (803418,   3,  536870932) /* SoundTable */
     , (803418,   6,   67111919) /* PaletteBase */
     , (803418,   8,  100686851) /* Icon */
     , (803418,  22,  872415275) /* PhysicsEffectTable */
     , (803418,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803418,  28,       4443) /* Spell - Incantation of Force Bolt */
     , (803418,  36,  234881042) /* MutateFilter */
     , (803418,  46,  939524146) /* TsysMutationFilter */
     , (803418,  52,  100676443) /* IconUnderlay */
     , (803418,  55,       4443) /* ProcSpell - Incantation of Force Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803418,  3699,      2)  /* Prodigal Defender */
     , (803418,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803418,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803418,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803418,  4305,      2)  /* Incantation of Focus Self */
     , (803418,  4329,      2)  /* Incantation of Willpower Self */
     , (803418,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803418,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803418,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803418,  6091,      2)  /* Legendary Defender */
     , (803418,  6098,      2)  /* Legendary Spirit Thirst */;
