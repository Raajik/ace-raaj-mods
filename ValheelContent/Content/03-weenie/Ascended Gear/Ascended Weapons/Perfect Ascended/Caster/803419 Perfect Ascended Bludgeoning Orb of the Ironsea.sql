DELETE FROM `weenie` WHERE `class_Id` = 803419;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803419, 'Perfect Ascended Bludgeoning Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803419,   1,      32768) /* ItemType - Caster */
     , (803419,   3,          4) /* PaletteTemplate - Brown */
     , (803419,   5,        100) /* EncumbranceVal */
     , (803419,   8,         90) /* Mass */
     , (803419,   9,   16777216) /* ValidLocations - Held */
     , (803419,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803419,  19,     500000) /* Value */
     , (803419,  33,          1) /* Bonded - Bonded */
     , (803419,  45,          4) /* DamageType - Bludgeon */
     , (803419,  46,        512) /* DefaultCombatStyle - Magic */
     , (803419,  52,          1) /* ParentLocation - RightHand */
     , (803419,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803419,  94,         16) /* TargetType - Creature */
     , (803419, 106,        999) /* ItemSpellcraft */
     , (803419, 107,       8000) /* ItemCurMana */
     , (803419, 108,       8000) /* ItemMaxMana */
     , (803419, 109,          0) /* ItemDifficulty */
     , (803419, 114,          1) /* Attuned - Attuned */
     , (803419, 117,         30) /* ItemManaCost */
     , (803419, 151,          2) /* HookType - Wall */
     , (803419, 158,          7) /* WieldRequirements - Level */
     , (803419, 160,       8000) /* WieldDifficulty */
     , (803419, 169,  118162702) /* TsysMutationData */
     , (803419, 179,         32) /* ImbuedEffect - BludgeonRending */
     , (803419, 292,          3) /* Cleaving */
     , (803419, 353,          0) /* WeaponType - Undef */
     , (803419, 370,        185) /* GearDamage */
     , (803419, 371,        185) /* GearDamageResist */
     , (803419, 374,        185) /* GearCritDamage */
     , (803419, 375,        185) /* GearCritDamageResist */
     , (803419, 376,        185) /* GearHealingBoost */
     , (803419, 379,        185) /* GearMaxHealth */
	 , (803419, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803419,  11, True ) /* IgnoreCollisions */
     , (803419,  13, True ) /* Ethereal */
     , (803419,  14, True ) /* GravityStatus */
     , (803419,  19, True ) /* Attackable */
     , (803419,  22, True ) /* Inscribable */
     , (803419, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803419,   5,   -0.05) /* ManaRate */
     , (803419,  12,    0.66) /* Shade */
     , (803419,  29,     1.5) /* WeaponDefense */
     , (803419,  39,     1.5) /* DefaultScale */
     , (803419, 136,    0.15) /* CriticalMultiplier */
     , (803419, 144,    0.45) /* ManaConversionMod */
     , (803419, 147,    0.45) /* CriticalFrequency */
     , (803419, 152,     4.5) /* ElementalDamageMod */
     , (803419, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803419,   1, 'Perfect Ascended Bludgeoning Orb of the Ironsea') /* Name */
     , (803419,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803419,   1,   33559424) /* Setup */
     , (803419,   3,  536870932) /* SoundTable */
     , (803419,   6,   67111919) /* PaletteBase */
     , (803419,   8,  100686851) /* Icon */
     , (803419,  22,  872415275) /* PhysicsEffectTable */
     , (803419,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803419,  28,       4455) /* Spell - Incantation of Shock Wave */
     , (803419,  36,  234881042) /* MutateFilter */
     , (803419,  46,  939524146) /* TsysMutationFilter */
     , (803419,  52,  100676442) /* IconUnderlay */
     , (803419,  55,       4455) /* ProcSpell - Incantation of Shock Wave */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803419,  3699,      2)  /* Prodigal Defender */
     , (803419,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803419,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803419,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803419,  4305,      2)  /* Incantation of Focus Self */
     , (803419,  4329,      2)  /* Incantation of Willpower Self */
     , (803419,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803419,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803419,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803419,  6091,      2)  /* Legendary Defender */
     , (803419,  6098,      2)  /* Legendary Spirit Thirst */;
