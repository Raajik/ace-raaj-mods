DELETE FROM `weenie` WHERE `class_Id` = 803431;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803431, 'Black Ore Ascended Static Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803431,   1,      32768) /* ItemType - Caster */
     , (803431,   3,          4) /* PaletteTemplate - Brown */
     , (803431,   5,        100) /* EncumbranceVal */
     , (803431,   8,         90) /* Mass */
     , (803431,   9,   16777216) /* ValidLocations - Held */
     , (803431,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803431,  19,     500000) /* Value */
     , (803431,  33,          1) /* Bonded - Bonded */
     , (803431,  45,         64) /* DamageType - Electric */
     , (803431,  46,        512) /* DefaultCombatStyle - Magic */
     , (803431,  52,          1) /* ParentLocation - RightHand */
     , (803431,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803431,  94,         16) /* TargetType - Creature */
     , (803431, 106,        999) /* ItemSpellcraft */
     , (803431, 107,       8000) /* ItemCurMana */
     , (803431, 108,       8000) /* ItemMaxMana */
     , (803431, 109,          0) /* ItemDifficulty */
     , (803431, 114,          1) /* Attuned - Attuned */
     , (803431, 117,         30) /* ItemManaCost */
     , (803431, 151,          2) /* HookType - Wall */
     , (803431, 158,          7) /* WieldRequirements - Level */
     , (803431, 160,      10000) /* WieldDifficulty */
     , (803431, 169,  118162702) /* TsysMutationData */
     , (803431, 179,        256) /* ImbuedEffect - ElectricRending */
     , (803431, 292,          3) /* Cleaving */
     , (803431, 353,          0) /* WeaponType - Undef */
     , (803431, 370,        210) /* GearDamage */
     , (803431, 371,        210) /* GearDamageResist */
     , (803431, 374,        210) /* GearCritDamage */
     , (803431, 375,        210) /* GearCritDamageResist */
     , (803431, 376,        210) /* GearHealingBoost */
     , (803431, 379,        210) /* GearMaxHealth */
	 , (803431, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803431,  11, True ) /* IgnoreCollisions */
     , (803431,  13, True ) /* Ethereal */
     , (803431,  14, True ) /* GravityStatus */
     , (803431,  19, True ) /* Attackable */
     , (803431,  22, True ) /* Inscribable */
     , (803431, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803431,   5,   -0.05) /* ManaRate */
     , (803431,  12,    0.66) /* Shade */
     , (803431,  29,     1.5) /* WeaponDefense */
     , (803431,  39,     1.5) /* DefaultScale */
     , (803431, 136,    0.15) /* CriticalMultiplier */
     , (803431, 144,    0.45) /* ManaConversionMod */
     , (803431, 147,    0.45) /* CriticalFrequency */
     , (803431, 152,       5) /* ElementalDamageMod */
     , (803431, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803431,   1, 'Black Ore Ascended Static Orb of the Ironsea') /* Name */
     , (803431,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803431,   1,   33559424) /* Setup */
     , (803431,   3,  536870932) /* SoundTable */
     , (803431,   6,   67111919) /* PaletteBase */
     , (803431,   8,  100686851) /* Icon */
     , (803431,  22,  872415275) /* PhysicsEffectTable */
     , (803431,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803431,  28,       4451) /* Spell - Incantation of Lightning Bolt */
     , (803431,  36,  234881042) /* MutateFilter */
     , (803431,  46,  939524146) /* TsysMutationFilter */
     , (803431,  52,  100676436) /* IconUnderlay */
     , (803431,  55,       4451) /* ProcSpell - Incantation of Lightning Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803431,  3699,      2)  /* Prodigal Defender */
     , (803431,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803431,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803431,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803431,  4305,      2)  /* Incantation of Focus Self */
     , (803431,  4329,      2)  /* Incantation of Willpower Self */
     , (803431,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803431,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803431,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803431,  6091,      2)  /* Legendary Defender */
     , (803431,  6098,      2)  /* Legendary Spirit Thirst */;
