DELETE FROM `weenie` WHERE `class_Id` = 803159;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803159, 'Ascended Bludgeoning Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803159,   1,      32768) /* ItemType - Caster */
     , (803159,   3,          4) /* PaletteTemplate - Brown */
     , (803159,   5,        100) /* EncumbranceVal */
     , (803159,   8,         90) /* Mass */
     , (803159,   9,   16777216) /* ValidLocations - Held */
     , (803159,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803159,  19,     100000) /* Value */
     , (803159,  33,          1) /* Bonded - Bonded */
     , (803159,  45,          4) /* DamageType - Bludgeon */
     , (803159,  46,        512) /* DefaultCombatStyle - Magic */
     , (803159,  52,          1) /* ParentLocation - RightHand */
     , (803159,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803159,  94,         16) /* TargetType - Creature */
     , (803159, 106,        999) /* ItemSpellcraft */
     , (803159, 107,       8000) /* ItemCurMana */
     , (803159, 108,       8000) /* ItemMaxMana */
     , (803159, 109,          0) /* ItemDifficulty */
     , (803159, 114,          1) /* Attuned - Attuned */
     , (803159, 117,         30) /* ItemManaCost */
     , (803159, 151,          2) /* HookType - Wall */
     , (803159, 158,          7) /* WieldRequirements - Level */
     , (803159, 160,       3000) /* WieldDifficulty */
     , (803159, 169,  118162702) /* TsysMutationData */
     , (803159, 179,         32) /* ImbuedEffect - BludgeonRending */
     , (803159, 292,          3) /* Cleaving */
     , (803159, 353,          0) /* WeaponType - Undef */
     , (803159, 370,        135) /* GearDamage */
     , (803159, 371,        135) /* GearDamageResist */
     , (803159, 374,        135) /* GearCritDamage */
     , (803159, 375,        135) /* GearCritDamageResist */
     , (803159, 376,        135) /* GearHealingBoost */
     , (803159, 379,        135) /* GearMaxHealth */
	 , (803159, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803159,  11, True ) /* IgnoreCollisions */
     , (803159,  13, True ) /* Ethereal */
     , (803159,  14, True ) /* GravityStatus */
     , (803159,  19, True ) /* Attackable */
     , (803159,  22, True ) /* Inscribable */
     , (803159, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803159,   5,   -0.05) /* ManaRate */
     , (803159,  12,    0.66) /* Shade */
     , (803159,  29,     1.5) /* WeaponDefense */
     , (803159,  39,     1.5) /* DefaultScale */
     , (803159, 136,    0.15) /* CriticalMultiplier */
     , (803159, 144,    0.45) /* ManaConversionMod */
     , (803159, 147,    0.45) /* CriticalFrequency */
     , (803159, 152,     3.5) /* ElementalDamageMod */
     , (803159, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803159,   1, 'Ascended Bludgeoning Orb of the Ironsea') /* Name */
     , (803159,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803159,   1,   33559424) /* Setup */
     , (803159,   3,  536870932) /* SoundTable */
     , (803159,   6,   67111919) /* PaletteBase */
     , (803159,   8,  100686851) /* Icon */
     , (803159,  22,  872415275) /* PhysicsEffectTable */
     , (803159,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803159,  28,       4455) /* Spell - Incantation of Shock Wave */
     , (803159,  36,  234881042) /* MutateFilter */
     , (803159,  46,  939524146) /* TsysMutationFilter */
     , (803159,  52,  100676442) /* IconUnderlay */
     , (803159,  55,       4455) /* ProcSpell - Incantation of Shock Wave */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803159,  3699,      2)  /* Prodigal Defender */
     , (803159,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803159,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803159,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803159,  4305,      2)  /* Incantation of Focus Self */
     , (803159,  4329,      2)  /* Incantation of Willpower Self */
     , (803159,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803159,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803159,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803159,  6091,      2)  /* Legendary Defender */
     , (803159,  6098,      2)  /* Legendary Spirit Thirst */;
