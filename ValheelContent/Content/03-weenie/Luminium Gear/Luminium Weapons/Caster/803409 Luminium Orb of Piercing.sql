DELETE FROM `weenie` WHERE `class_Id` = 803409;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803409, 'Luminium Orb of Piercing', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803409,   1,      32768) /* ItemType - Caster */
     , (803409,   3,          4) /* PaletteTemplate - Brown */
     , (803409,   5,        100) /* EncumbranceVal */
     , (803409,   8,         90) /* Mass */
     , (803409,   9,   16777216) /* ValidLocations - Held */
     , (803409,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803409,  19,     500000) /* Value */
     , (803409,  33,          1) /* Bonded - Bonded */
     , (803409,  45,          2) /* DamageType - Pierce */
     , (803409,  46,        512) /* DefaultCombatStyle - Magic */
     , (803409,  52,          1) /* ParentLocation - RightHand */
     , (803409,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803409,  94,         16) /* TargetType - Creature */
     , (803409, 106,        999) /* ItemSpellcraft */
     , (803409, 107,       8000) /* ItemCurMana */
     , (803409, 108,       8000) /* ItemMaxMana */
     , (803409, 109,          0) /* ItemDifficulty */
     , (803409, 114,          1) /* Attuned - Attuned */
     , (803409, 117,         30) /* ItemManaCost */
     , (803409, 151,          2) /* HookType - Wall */
     , (803409, 158,          7) /* WieldRequirements - Level */
     , (803409, 160,       5000) /* WieldDifficulty */
     , (803409, 169,  118162702) /* TsysMutationData */
     , (803409, 179,         16) /* ImbuedEffect - PierceRending */
     , (803409, 292,          3) /* Cleaving */
     , (803409, 353,          0) /* WeaponType - Undef */
     , (803409, 370,        155) /* GearDamage */
     , (803409, 371,        155) /* GearDamageResist */
     , (803409, 374,        155) /* GearCritDamage */
     , (803409, 375,        155) /* GearCritDamageResist */
     , (803409, 376,        155) /* GearHealingBoost */
     , (803409, 379,        155) /* GearMaxHealth */
	 , (803409, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803409,  11, True ) /* IgnoreCollisions */
     , (803409,  13, True ) /* Ethereal */
     , (803409,  14, True ) /* GravityStatus */
     , (803409,  19, True ) /* Attackable */
     , (803409,  22, True ) /* Inscribable */
     , (803409, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803409,   5,   -0.05) /* ManaRate */
     , (803409,  12,    0.66) /* Shade */
     , (803409,  29,     1.5) /* WeaponDefense */
     , (803409,  39,       1) /* DefaultScale */
     , (803409,  76,     0.5) /* Translucency */
     , (803409, 136,    0.15) /* CriticalMultiplier */
     , (803409, 144,    0.45) /* ManaConversionMod */
     , (803409, 147,    0.45) /* CriticalFrequency */
     , (803409, 152,       4) /* ElementalDamageMod */
     , (803409, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803409,   1, 'Luminium Orb of Piercing') /* Name */
     , (803409,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803409,   1,   33557115) /* Setup */
     , (803409,   3,  536870932) /* SoundTable */
     , (803409,   8,  100671692) /* Icon */
     , (803409,  22,  872415275) /* PhysicsEffectTable */
     , (803409,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803409,  28,       4443) /* Spell - Incantation of Force Bolt */
     , (803409,  36,  234881042) /* MutateFilter */
     , (803409,  46,  939524146) /* TsysMutationFilter */
     , (803409,  52,  100676443) /* IconUnderlay */
     , (803409,  55,       4443) /* ProcSpell - Incantation of Force Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803409,  3699,      2)  /* Prodigal Defender */
     , (803409,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803409,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803409,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803409,  4305,      2)  /* Incantation of Focus Self */
     , (803409,  4329,      2)  /* Incantation of Willpower Self */
     , (803409,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803409,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803409,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803409,  6091,      2)  /* Legendary Defender */
     , (803409,  6098,      2)  /* Legendary Spirit Thirst */;
