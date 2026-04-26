DELETE FROM `weenie` WHERE `class_Id` = 803930;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803930, 'Tradewind Diabolic Orb of the Kings', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803930,   1,      32768) /* ItemType - Caster */
     , (803930,   3,          4) /* PaletteTemplate - Brown */
     , (803930,   5,        100) /* EncumbranceVal */
     , (803930,   8,         90) /* Mass */
     , (803930,   9,   16777216) /* ValidLocations - Held */
     , (803930,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803930,  19,     750000) /* Value */
     , (803930,  33,          1) /* Bonded - Bonded */
     , (803930,  45,       1024) /* DamageType - Nether */
     , (803930,  46,        512) /* DefaultCombatStyle - Magic */
     , (803930,  52,          1) /* ParentLocation - RightHand */
     , (803930,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803930,  94,         16) /* TargetType - Creature */
     , (803930, 106,        999) /* ItemSpellcraft */
     , (803930, 107,       8000) /* ItemCurMana */
     , (803930, 108,       8000) /* ItemMaxMana */
     , (803930, 109,          0) /* ItemDifficulty */
     , (803930, 114,          1) /* Attuned - Attuned */
     , (803930, 117,         30) /* ItemManaCost */
     , (803930, 151,          2) /* HookType - Wall */
     , (803930, 158,          7) /* WieldRequirements - Level */
     , (803930, 160,      10000) /* WieldDifficulty */
     , (803930, 169,  118162702) /* TsysMutationData */
     , (803930, 179,      16384) /* ImbuedEffect - NetherRending */
     , (803930, 292,          4) /* Cleaving */
     , (803930, 353,          0) /* WeaponType - Undef */
     , (803930, 370,        350) /* GearDamage */
     , (803930, 371,        350) /* GearDamageResist */
     , (803930, 374,        350) /* GearCritDamage */
     , (803930, 375,        350) /* GearCritDamageResist */
     , (803930, 376,        350) /* GearHealingBoost */
     , (803930, 379,       1000) /* GearMaxHealth */
	 , (803930, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803930,  11, True ) /* IgnoreCollisions */
     , (803930,  13, True ) /* Ethereal */
     , (803930,  14, True ) /* GravityStatus */
     , (803930,  19, True ) /* Attackable */
     , (803930,  22, True ) /* Inscribable */
     , (803930, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803930,   5,   -0.05) /* ManaRate */
     , (803930,  12,    0.66) /* Shade */
     , (803930,  29,     1.5) /* WeaponDefense */
     , (803930,  39,       1) /* DefaultScale */
     , (803930, 136,    0.15) /* CriticalMultiplier */
     , (803930, 144,    0.45) /* ManaConversionMod */
     , (803930, 147,    0.45) /* CriticalFrequency */
     , (803930, 152,     5.5) /* ElementalDamageMod */
     , (803930, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803930,   1, 'Tradewind Diabolic Orb of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803930,   1,   33558916) /* Setup */
     , (803930,   3,  536870932) /* SoundTable */
     , (803930,   6,   67111919) /* PaletteBase */
     , (803930,   7,  268436199) /* ClothingBase */
     , (803930,   8,  100677063) /* Icon */
     , (803930,  22,  872415275) /* PhysicsEffectTable */
     , (803930,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803930,  28,       5356) /* Spell - Incantation of Nether Bolt */
     , (803930,  36,  234881042) /* MutateFilter */
     , (803930,  46,  939524146) /* TsysMutationFilter */
     , (803930,  50,  100673178) /* IconOverlay */
     , (803930,  52,  100667892) /* IconUnderlay */
     , (803930,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803930,  3699,      2)  /* Prodigal Defender */
     , (803930,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803930,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803930,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803930,  4305,      2)  /* Incantation of Focus Self */
     , (803930,  4329,      2)  /* Incantation of Willpower Self */
     , (803930,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803930,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803930,  5436,      2)  /* Prodigal Void Magic Mastery */
     , (803930,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803930,  6091,      2)  /* Legendary Defender */
     , (803930,  6098,      2)  /* Legendary Spirit Thirst */;
