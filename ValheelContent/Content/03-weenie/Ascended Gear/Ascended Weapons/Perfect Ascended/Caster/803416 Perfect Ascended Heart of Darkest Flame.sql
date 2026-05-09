DELETE FROM `weenie` WHERE `class_Id` = 803416;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803416, 'Perfect Ascended Heart of Darkest Flame', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803416,   1,      32768) /* ItemType - Caster */
     , (803416,   3,          4) /* PaletteTemplate - Brown */
     , (803416,   5,        100) /* EncumbranceVal */
     , (803416,   8,         90) /* Mass */
     , (803416,   9,   16777216) /* ValidLocations - Held */
     , (803416,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803416,  19,     750000) /* Value */
     , (803416,  33,          1) /* Bonded - Bonded */
     , (803416,  45,       1024) /* DamageType - Nether */
     , (803416,  46,        512) /* DefaultCombatStyle - Magic */
     , (803416,  52,          1) /* ParentLocation - RightHand */
     , (803416,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803416,  94,         16) /* TargetType - Creature */
     , (803416, 106,        999) /* ItemSpellcraft */
     , (803416, 107,       8000) /* ItemCurMana */
     , (803416, 108,       8000) /* ItemMaxMana */
     , (803416, 109,          0) /* ItemDifficulty */
     , (803416, 114,          1) /* Attuned - Attuned */
     , (803416, 117,         30) /* ItemManaCost */
     , (803416, 151,          2) /* HookType - Wall */
     , (803416, 158,          7) /* WieldRequirements - Level */
     , (803416, 160,       8000) /* WieldDifficulty */
     , (803416, 169,  118162702) /* TsysMutationData */
     , (803416, 179,      16384) /* ImbuedEffect - NetherRending */
     , (803416, 292,          4) /* Cleaving */
     , (803416, 353,          0) /* WeaponType - Undef */
     , (803416, 370,        185) /* GearDamage */
     , (803416, 371,        185) /* GearDamageResist */
     , (803416, 374,        185) /* GearCritDamage */
     , (803416, 375,        185) /* GearCritDamageResist */
     , (803416, 376,        185) /* GearHealingBoost */
     , (803416, 379,        185) /* GearMaxHealth */
	 , (803416, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803416,  11, True ) /* IgnoreCollisions */
     , (803416,  13, True ) /* Ethereal */
     , (803416,  14, True ) /* GravityStatus */
     , (803416,  19, True ) /* Attackable */
     , (803416,  22, True ) /* Inscribable */
     , (803416, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803416,   5,   -0.05) /* ManaRate */
     , (803416,  12,    0.66) /* Shade */
     , (803416,  29,     1.5) /* WeaponDefense */
     , (803416,  39,       1) /* DefaultScale */
     , (803416, 136,    0.15) /* CriticalMultiplier */
     , (803416, 144,    0.45) /* ManaConversionMod */
     , (803416, 147,    0.45) /* CriticalFrequency */
     , (803416, 152,     4.5) /* ElementalDamageMod */
     , (803416, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803416,   1, 'Perfect Ascended Heart of Darkest Flame') /* Name */
     , (803416,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803416,   1,   33561171) /* Setup */
     , (803416,   3,  536870932) /* SoundTable */
     , (803416,   6,   67111919) /* PaletteBase */
     , (803416,   8,  100691783) /* Icon */
     , (803416,  22,  872415275) /* PhysicsEffectTable */
     , (803416,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803416,  28,       5356) /* Spell - Incantation of Nether Bolt */
     , (803416,  36,  234881042) /* MutateFilter */
     , (803416,  46,  939524146) /* TsysMutationFilter */
     , (803416,  52,  100686604) /* IconUnderlay */
     , (803416,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803416,  3699,      2)  /* Prodigal Defender */
     , (803416,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803416,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803416,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803416,  4305,      2)  /* Incantation of Focus Self */
     , (803416,  4329,      2)  /* Incantation of Willpower Self */
     , (803416,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803416,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803416,  5436,      2)  /* Prodigal Void Magic Mastery */
     , (803416,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803416,  6091,      2)  /* Legendary Defender */
     , (803416,  6098,      2)  /* Legendary Spirit Thirst */;
