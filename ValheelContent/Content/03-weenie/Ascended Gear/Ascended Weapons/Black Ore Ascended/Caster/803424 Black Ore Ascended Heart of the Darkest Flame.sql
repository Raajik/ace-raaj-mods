DELETE FROM `weenie` WHERE `class_Id` = 803424;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803424, 'Black Ore Ascended Heart of Darkest Flame', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803424,   1,      32768) /* ItemType - Caster */
     , (803424,   3,          4) /* PaletteTemplate - Brown */
     , (803424,   5,        100) /* EncumbranceVal */
     , (803424,   8,         90) /* Mass */
     , (803424,   9,   16777216) /* ValidLocations - Held */
     , (803424,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803424,  19,     750000) /* Value */
     , (803424,  33,          1) /* Bonded - Bonded */
     , (803424,  45,       1024) /* DamageType - Nether */
     , (803424,  46,        512) /* DefaultCombatStyle - Magic */
     , (803424,  52,          1) /* ParentLocation - RightHand */
     , (803424,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803424,  94,         16) /* TargetType - Creature */
     , (803424, 106,        999) /* ItemSpellcraft */
     , (803424, 107,       8000) /* ItemCurMana */
     , (803424, 108,       8000) /* ItemMaxMana */
     , (803424, 109,          0) /* ItemDifficulty */
     , (803424, 114,          1) /* Attuned - Attuned */
     , (803424, 117,         30) /* ItemManaCost */
     , (803424, 151,          2) /* HookType - Wall */
     , (803424, 158,          7) /* WieldRequirements - Level */
     , (803424, 160,      10000) /* WieldDifficulty */
     , (803424, 169,  118162702) /* TsysMutationData */
     , (803424, 179,      16384) /* ImbuedEffect - NetherRending */
     , (803424, 292,          4) /* Cleaving */
     , (803424, 353,          0) /* WeaponType - Undef */
     , (803424, 370,        210) /* GearDamage */
     , (803424, 371,        210) /* GearDamageResist */
     , (803424, 374,        210) /* GearCritDamage */
     , (803424, 375,        210) /* GearCritDamageResist */
     , (803424, 376,        210) /* GearHealingBoost */
     , (803424, 379,        210) /* GearMaxHealth */
	 , (803424, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803424,  11, True ) /* IgnoreCollisions */
     , (803424,  13, True ) /* Ethereal */
     , (803424,  14, True ) /* GravityStatus */
     , (803424,  19, True ) /* Attackable */
     , (803424,  22, True ) /* Inscribable */
     , (803424, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803424,   5,   -0.05) /* ManaRate */
     , (803424,  12,    0.66) /* Shade */
     , (803424,  29,     1.5) /* WeaponDefense */
     , (803424,  39,       1) /* DefaultScale */
     , (803424, 136,    0.15) /* CriticalMultiplier */
     , (803424, 144,    0.45) /* ManaConversionMod */
     , (803424, 147,    0.45) /* CriticalFrequency */
     , (803424, 152,       5) /* ElementalDamageMod */
     , (803424, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803424,   1, 'Black Ore Ascended Heart of Darkest Flame') /* Name */
     , (803424,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803424,   1,   33561171) /* Setup */
     , (803424,   3,  536870932) /* SoundTable */
     , (803424,   6,   67111919) /* PaletteBase */
     , (803424,   8,  100691783) /* Icon */
     , (803424,  22,  872415275) /* PhysicsEffectTable */
     , (803424,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803424,  28,       5356) /* Spell - Incantation of Nether Bolt */
     , (803424,  36,  234881042) /* MutateFilter */
     , (803424,  46,  939524146) /* TsysMutationFilter */
     , (803424,  52,  100686604) /* IconUnderlay */
     , (803424,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803424,  3699,      2)  /* Prodigal Defender */
     , (803424,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803424,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803424,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803424,  4305,      2)  /* Incantation of Focus Self */
     , (803424,  4329,      2)  /* Incantation of Willpower Self */
     , (803424,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803424,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803424,  5436,      2)  /* Prodigal Void Magic Mastery */
     , (803424,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803424,  6091,      2)  /* Legendary Defender */
     , (803424,  6098,      2)  /* Legendary Spirit Thirst */;
