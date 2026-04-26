DELETE FROM `weenie` WHERE `class_Id` = 803415;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803415, 'Luminium Black Hole', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803415,   1,      32768) /* ItemType - Caster */
     , (803415,   3,          4) /* PaletteTemplate - Brown */
     , (803415,   5,        100) /* EncumbranceVal */
     , (803415,   8,         90) /* Mass */
     , (803415,   9,   16777216) /* ValidLocations - Held */
     , (803415,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803415,  19,     750000) /* Value */
     , (803415,  33,          1) /* Bonded - Bonded */
     , (803415,  45,       1024) /* DamageType - Nether */
     , (803415,  46,        512) /* DefaultCombatStyle - Magic */
     , (803415,  52,          1) /* ParentLocation - RightHand */
     , (803415,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803415,  94,         16) /* TargetType - Creature */
     , (803415, 106,        999) /* ItemSpellcraft */
     , (803415, 107,       8000) /* ItemCurMana */
     , (803415, 108,       8000) /* ItemMaxMana */
     , (803415, 109,          0) /* ItemDifficulty */
     , (803415, 114,          1) /* Attuned - Attuned */
     , (803415, 117,         30) /* ItemManaCost */
     , (803415, 151,          2) /* HookType - Wall */
     , (803415, 158,          7) /* WieldRequirements - Level */
     , (803415, 160,       5000) /* WieldDifficulty */
     , (803415, 169,  118162702) /* TsysMutationData */
     , (803415, 179,      16384) /* ImbuedEffect - NetherRending */
     , (803415, 292,          4) /* Cleaving */
     , (803415, 353,          0) /* WeaponType - Undef */
     , (803415, 370,        155) /* GearDamage */
     , (803415, 371,        155) /* GearDamageResist */
     , (803415, 374,        155) /* GearCritDamage */
     , (803415, 375,        155) /* GearCritDamageResist */
     , (803415, 376,        155) /* GearHealingBoost */
     , (803415, 379,        155) /* GearMaxHealth */
	 , (803415, 9041,         2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803415,  11, True ) /* IgnoreCollisions */
     , (803415,  13, True ) /* Ethereal */
     , (803415,  14, True ) /* GravityStatus */
     , (803415,  19, True ) /* Attackable */
     , (803415,  22, True ) /* Inscribable */
     , (803415, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803415,   5,   -0.05) /* ManaRate */
     , (803415,  12,    0.66) /* Shade */
     , (803415,  29,     1.5) /* WeaponDefense */
     , (803415,  39,       1) /* DefaultScale */
     , (803415,  76,     0.5) /* Transluscency */
     , (803415, 136,    0.15) /* CriticalMultiplier */
     , (803415, 144,    0.45) /* ManaConversionMod */
     , (803415, 147,    0.45) /* CriticalFrequency */
     , (803415, 152,       4) /* ElementalDamageMod */
     , (803415, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803415,   1, 'Luminium Black Hole') /* Name */
     , (803415,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO`weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803415,   1,   33556934) /* Setup */
     , (803415,   3,  536870932) /* SoundTable */
     , (803415,   6,   67111928) /* PaletteBase */
     , (803415,   7,  268436041) /* ClothingBase */
     , (803415,   8,  100671240) /* Icon */
     , (803415,  22,  872415275) /* PhysicsEffectTable */
     , (803415,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803415,  28,       5356) /* Spell - Incantation of Nether Bolt */
     , (803415,  36,  234881042) /* MutateFilter */
     , (803415,  46,  939524146) /* TsysMutationFilter */
     , (803415,  52,  100686604) /* IconUnderlay */
     , (803415,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803415,  3699,      2)  /* Prodigal Defender */
     , (803415,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803415,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803415,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803415,  4305,      2)  /* Incantation of Focus Self */
     , (803415,  4329,      2)  /* Incantation of Willpower Self */
     , (803415,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803415,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803415,  5436,      2)  /* Prodigal Void Magic Mastery */
     , (803415,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803415,  6091,      2)  /* Legendary Defender */
     , (803415,  6098,      2)  /* Legendary Spirit Thirst */;
