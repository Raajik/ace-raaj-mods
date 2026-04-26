DELETE FROM `weenie` WHERE `class_Id` = 803933;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803933, 'Tradewind Stabbing Orb of the Kings', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803933,   1,      32768) /* ItemType - Caster */
     , (803933,   3,          4) /* PaletteTemplate - Brown */
     , (803933,   5,        100) /* EncumbranceVal */
     , (803933,   8,         90) /* Mass */
     , (803933,   9,   16777216) /* ValidLocations - Held */
     , (803933,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803933,  19,     500000) /* Value */
     , (803933,  33,          1) /* Bonded - Bonded */
     , (803933,  45,          2) /* DamageType - Pierce */
     , (803933,  46,        512) /* DefaultCombatStyle - Magic */
     , (803933,  52,          1) /* ParentLocation - RightHand */
     , (803933,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803933,  94,         16) /* TargetType - Creature */
     , (803933, 106,        999) /* ItemSpellcraft */
     , (803933, 107,       8000) /* ItemCurMana */
     , (803933, 108,       8000) /* ItemMaxMana */
     , (803933, 109,          0) /* ItemDifficulty */
     , (803933, 114,          1) /* Attuned - Attuned */
     , (803933, 117,         30) /* ItemManaCost */
     , (803933, 151,          2) /* HookType - Wall */
     , (803933, 158,          7) /* WieldRequirements - Level */
     , (803933, 160,      10000) /* WieldDifficulty */
     , (803933, 169,  118162702) /* TsysMutationData */
     , (803933, 179,         16) /* ImbuedEffect - PierceRending */
     , (803933, 292,          3) /* Cleaving */
     , (803933, 353,          0) /* WeaponType - Undef */
     , (803933, 370,        350) /* GearDamage */
     , (803933, 371,        350) /* GearDamageResist */
     , (803933, 374,        350) /* GearCritDamage */
     , (803933, 375,        350) /* GearCritDamageResist */
     , (803933, 376,        350) /* GearHealingBoost */
     , (803933, 379,       1000) /* GearMaxHealth */
	 , (803933, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803933,  11, True ) /* IgnoreCollisions */
     , (803933,  13, True ) /* Ethereal */
     , (803933,  14, True ) /* GravityStatus */
     , (803933,  19, True ) /* Attackable */
     , (803933,  22, True ) /* Inscribable */
     , (803933, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803933,   5,   -0.05) /* ManaRate */
     , (803933,  12,    0.66) /* Shade */
     , (803933,  29,     1.5) /* WeaponDefense */
     , (803933,  39,     1.5) /* DefaultScale */
     , (803933, 136,    0.15) /* CriticalMultiplier */
     , (803933, 144,    0.45) /* ManaConversionMod */
     , (803933, 147,    0.45) /* CriticalFrequency */
     , (803933, 152,     5.5) /* ElementalDamageMod */
     , (803933, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803933,   1, 'Tradewind Stabbing Orb of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803933,   1,   33558916) /* Setup */
     , (803933,   3,  536870932) /* SoundTable */
     , (803933,   6,   67111919) /* PaletteBase */
     , (803933,   7,  268436199) /* ClothingBase */
     , (803933,   8,  100677063) /* Icon */
     , (803933,  22,  872415275) /* PhysicsEffectTable */
     , (803933,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803933,  28,       4443) /* Spell - Incantation of Force Bolt */
     , (803933,  36,  234881042) /* MutateFilter */
     , (803933,  46,  939524146) /* TsysMutationFilter */
     , (803933,  50,  100673181) /* IconOverlay */
     , (803933,  52,  100667892) /* IconUnderlay */
     , (803933,  55,       4443) /* ProcSpell - Incantation of Force Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803933,  3699,      2)  /* Prodigal Defender */
     , (803933,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803933,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803933,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803933,  4305,      2)  /* Incantation of Focus Self */
     , (803933,  4329,      2)  /* Incantation of Willpower Self */
     , (803933,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803933,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803933,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803933,  6091,      2)  /* Legendary Defender */
     , (803933,  6098,      2)  /* Legendary Spirit Thirst */;
