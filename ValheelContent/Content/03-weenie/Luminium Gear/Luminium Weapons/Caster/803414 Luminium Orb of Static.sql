DELETE FROM `weenie` WHERE `class_Id` = 803414;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803414, 'Luminium Orb of Static', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803414,   1,      32768) /* ItemType - Caster */
     , (803414,   3,          4) /* PaletteTemplate - Brown */
     , (803414,   5,        100) /* EncumbranceVal */
     , (803414,   8,         90) /* Mass */
     , (803414,   9,   16777216) /* ValidLocations - Held */
     , (803414,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803414,  19,     500000) /* Value */
     , (803414,  33,          1) /* Bonded - Bonded */
     , (803414,  45,         64) /* DamageType - Electric */
     , (803414,  46,        512) /* DefaultCombatStyle - Magic */
     , (803414,  52,          1) /* ParentLocation - RightHand */
     , (803414,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803414,  94,         16) /* TargetType - Creature */
     , (803414, 106,        999) /* ItemSpellcraft */
     , (803414, 107,       8000) /* ItemCurMana */
     , (803414, 108,       8000) /* ItemMaxMana */
     , (803414, 109,          0) /* ItemDifficulty */
     , (803414, 114,          1) /* Attuned - Attuned */
     , (803414, 117,         30) /* ItemManaCost */
     , (803414, 151,          2) /* HookType - Wall */
     , (803414, 158,          7) /* WieldRequirements - Level */
     , (803414, 160,       5000) /* WieldDifficulty */
     , (803414, 169,  118162702) /* TsysMutationData */
     , (803414, 179,        256) /* ImbuedEffect - ElectricRending */
     , (803414, 292,          3) /* Cleaving */
     , (803414, 353,          0) /* WeaponType - Undef */
     , (803414, 370,        155) /* GearDamage */
     , (803414, 371,        155) /* GearDamageResist */
     , (803414, 374,        155) /* GearCritDamage */
     , (803414, 375,        155) /* GearCritDamageResist */
     , (803414, 376,        155) /* GearHealingBoost */
     , (803414, 379,        155) /* GearMaxHealth */
	 , (803414, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803414,  11, True ) /* IgnoreCollisions */
     , (803414,  13, True ) /* Ethereal */
     , (803414,  14, True ) /* GravityStatus */
     , (803414,  19, True ) /* Attackable */
     , (803414,  22, True ) /* Inscribable */
     , (803414, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803414,   5,   -0.05) /* ManaRate */
     , (803414,  12,    0.66) /* Shade */
     , (803414,  29,     1.5) /* WeaponDefense */
     , (803414,  39,       1) /* DefaultScale */
     , (803414,  76,     0.5) /* Translucency */
     , (803414, 136,    0.15) /* CriticalMultiplier */
     , (803414, 144,    0.45) /* ManaConversionMod */
     , (803414, 147,    0.45) /* CriticalFrequency */
     , (803414, 152,       4) /* ElementalDamageMod */
     , (803414, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803414,   1, 'Luminium Orb of Static') /* Name */
     , (803414,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803414,   1,   33557115) /* Setup */
     , (803414,   3,  536870932) /* SoundTable */
     , (803414,   8,  100671692) /* Icon */
     , (803414,  22,  872415275) /* PhysicsEffectTable */
     , (803414,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803414,  28,       4451) /* Spell - Incantation of Lightning Bolt */
     , (803414,  36,  234881042) /* MutateFilter */
     , (803414,  46,  939524146) /* TsysMutationFilter */
     , (803414,  52,  100676436) /* IconUnderlay */
     , (803414,  55,       4451) /* ProcSpell - Incantation of Lightning Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803414,  3699,      2)  /* Prodigal Defender */
     , (803414,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803414,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803414,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803414,  4305,      2)  /* Incantation of Focus Self */
     , (803414,  4329,      2)  /* Incantation of Willpower Self */
     , (803414,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803414,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803414,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803414,  6091,      2)  /* Legendary Defender */
     , (803414,  6098,      2)  /* Legendary Spirit Thirst */;
