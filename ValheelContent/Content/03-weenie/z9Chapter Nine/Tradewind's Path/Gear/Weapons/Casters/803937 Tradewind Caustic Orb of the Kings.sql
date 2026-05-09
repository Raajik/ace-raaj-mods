DELETE FROM `weenie` WHERE `class_Id` = 803937;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803937, 'Tradewind Caustic Orb of the Kings', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803937,   1,      32768) /* ItemType - Caster */
     , (803937,   3,          4) /* PaletteTemplate - Brown */
     , (803937,   5,        100) /* EncumbranceVal */
     , (803937,   8,         90) /* Mass */
     , (803937,   9,   16777216) /* ValidLocations - Held */
     , (803937,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803937,  19,     500000) /* Value */
     , (803937,  33,          1) /* Bonded - Bonded */
     , (803937,  45,         32) /* DamageType - Acid */
     , (803937,  46,        512) /* DefaultCombatStyle - Magic */
     , (803937,  52,          1) /* ParentLocation - RightHand */
     , (803937,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803937,  94,         16) /* TargetType - Creature */
     , (803937, 106,        999) /* ItemSpellcraft */
     , (803937, 107,       8000) /* ItemCurMana */
     , (803937, 108,       8000) /* ItemMaxMana */
     , (803937, 109,          0) /* ItemDifficulty */
     , (803937, 114,          1) /* Attuned - Attuned */
     , (803937, 117,         30) /* ItemManaCost */
     , (803937, 151,          2) /* HookType - Wall */
     , (803937, 158,          7) /* WieldRequirements - Level */
     , (803937, 160,      10000) /* WieldDifficulty */
     , (803937, 169,  118162702) /* TsysMutationData */
     , (803937, 179,         64) /* ImbuedEffect - AcidRending */
     , (803937, 292,          3) /* Cleaving */
     , (803937, 353,          0) /* WeaponType - Undef */
     , (803937, 370,        350) /* GearDamage */
     , (803937, 371,        350) /* GearDamageResist */
     , (803937, 374,        350) /* GearCritDamage */
     , (803937, 375,        350) /* GearCritDamageResist */
     , (803937, 376,        350) /* GearHealingBoost */
     , (803937, 379,       1000) /* GearMaxHealth */
	 , (803937, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803937,  11, True ) /* IgnoreCollisions */
     , (803937,  13, True ) /* Ethereal */
     , (803937,  14, True ) /* GravityStatus */
     , (803937,  19, True ) /* Attackable */
     , (803937,  22, True ) /* Inscribable */
     , (803937, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803937,   5,   -0.05) /* ManaRate */
     , (803937,  12,    0.66) /* Shade */
     , (803937,  29,     1.5) /* WeaponDefense */
     , (803937,  39,     1.5) /* DefaultScale */
     , (803937, 136,    0.15) /* CriticalMultiplier */
     , (803937, 144,    0.45) /* ManaConversionMod */
     , (803937, 147,    0.45) /* CriticalFrequency */
     , (803937, 152,     5.5) /* ElementalDamageMod */
     , (803937, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803937,   1, 'Tradewind Caustic Orb of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803937,   1,   33558916) /* Setup */
     , (803937,   3,  536870932) /* SoundTable */
     , (803937,   6,   67111919) /* PaletteBase */
     , (803937,   7,  268436199) /* ClothingBase */
     , (803937,   8,  100677063) /* Icon */
     , (803937,  22,  872415275) /* PhysicsEffectTable */
     , (803937,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803937,  28,       4433) /* Spell - Incantation of Acid Stream */
     , (803937,  36,  234881042) /* MutateFilter */
     , (803937,  46,  939524146) /* TsysMutationFilter */
     , (803937,  50,  100673183) /* IconOverlay */
     , (803937,  52,  100667892) /* IconUnderlay */
     , (803937,  55,       4433) /* ProcSpell - Incantation of Acid Stream */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803937,  3699,      2)  /* Prodigal Defender */
     , (803937,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803937,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803937,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803937,  4305,      2)  /* Incantation of Focus Self */
     , (803937,  4329,      2)  /* Incantation of Willpower Self */
     , (803937,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803937,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803937,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803937,  6091,      2)  /* Legendary Defender */
     , (803937,  6098,      2)  /* Legendary Spirit Thirst */;
