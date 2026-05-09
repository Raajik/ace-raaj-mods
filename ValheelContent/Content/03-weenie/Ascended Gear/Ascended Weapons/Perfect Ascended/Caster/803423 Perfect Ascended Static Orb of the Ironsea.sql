DELETE FROM `weenie` WHERE `class_Id` = 803423;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803423, 'Perfect Ascended Static Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803423,   1,      32768) /* ItemType - Caster */
     , (803423,   3,          4) /* PaletteTemplate - Brown */
     , (803423,   5,        100) /* EncumbranceVal */
     , (803423,   8,         90) /* Mass */
     , (803423,   9,   16777216) /* ValidLocations - Held */
     , (803423,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803423,  19,     500000) /* Value */
     , (803423,  33,          1) /* Bonded - Bonded */
     , (803423,  45,         64) /* DamageType - Electric */
     , (803423,  46,        512) /* DefaultCombatStyle - Magic */
     , (803423,  52,          1) /* ParentLocation - RightHand */
     , (803423,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803423,  94,         16) /* TargetType - Creature */
     , (803423, 106,        999) /* ItemSpellcraft */
     , (803423, 107,       8000) /* ItemCurMana */
     , (803423, 108,       8000) /* ItemMaxMana */
     , (803423, 109,          0) /* ItemDifficulty */
     , (803423, 114,          1) /* Attuned - Attuned */
     , (803423, 117,         30) /* ItemManaCost */
     , (803423, 151,          2) /* HookType - Wall */
     , (803423, 158,          7) /* WieldRequirements - Level */
     , (803423, 160,       8000) /* WieldDifficulty */
     , (803423, 169,  118162702) /* TsysMutationData */
     , (803423, 179,        256) /* ImbuedEffect - ElectricRending */
     , (803423, 292,          3) /* Cleaving */
     , (803423, 353,          0) /* WeaponType - Undef */
     , (803423, 370,        185) /* GearDamage */
     , (803423, 371,        185) /* GearDamageResist */
     , (803423, 374,        185) /* GearCritDamage */
     , (803423, 375,        185) /* GearCritDamageResist */
     , (803423, 376,        185) /* GearHealingBoost */
     , (803423, 379,        185) /* GearMaxHealth */
	 , (803423, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803423,  11, True ) /* IgnoreCollisions */
     , (803423,  13, True ) /* Ethereal */
     , (803423,  14, True ) /* GravityStatus */
     , (803423,  19, True ) /* Attackable */
     , (803423,  22, True ) /* Inscribable */
     , (803423, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803423,   5,   -0.05) /* ManaRate */
     , (803423,  12,    0.66) /* Shade */
     , (803423,  29,     1.5) /* WeaponDefense */
     , (803423,  39,     1.5) /* DefaultScale */
     , (803423, 136,    0.15) /* CriticalMultiplier */
     , (803423, 144,    0.45) /* ManaConversionMod */
     , (803423, 147,    0.45) /* CriticalFrequency */
     , (803423, 152,     4.5) /* ElementalDamageMod */
     , (803423, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803423,   1, 'Perfect Ascended Static Orb of the Ironsea') /* Name */
     , (803423,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803423,   1,   33559424) /* Setup */
     , (803423,   3,  536870932) /* SoundTable */
     , (803423,   6,   67111919) /* PaletteBase */
     , (803423,   8,  100686851) /* Icon */
     , (803423,  22,  872415275) /* PhysicsEffectTable */
     , (803423,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803423,  28,       4451) /* Spell - Incantation of Lightning Bolt */
     , (803423,  36,  234881042) /* MutateFilter */
     , (803423,  46,  939524146) /* TsysMutationFilter */
     , (803423,  52,  100676436) /* IconUnderlay */
     , (803423,  55,       4451) /* ProcSpell - Incantation of Lightning Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803423,  3699,      2)  /* Prodigal Defender */
     , (803423,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803423,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803423,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803423,  4305,      2)  /* Incantation of Focus Self */
     , (803423,  4329,      2)  /* Incantation of Willpower Self */
     , (803423,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803423,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803423,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803423,  6091,      2)  /* Legendary Defender */
     , (803423,  6098,      2)  /* Legendary Spirit Thirst */;
