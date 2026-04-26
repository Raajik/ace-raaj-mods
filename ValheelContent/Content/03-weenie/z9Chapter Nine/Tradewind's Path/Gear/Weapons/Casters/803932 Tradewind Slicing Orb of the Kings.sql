DELETE FROM `weenie` WHERE `class_Id` = 803932;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803932, 'Tradewind Slicing Orb of the Kings', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803932,   1,      32768) /* ItemType - Caster */
     , (803932,   3,          4) /* PaletteTemplate - Brown */
     , (803932,   5,        100) /* EncumbranceVal */
     , (803932,   8,         90) /* Mass */
     , (803932,   9,   16777216) /* ValidLocations - Held */
     , (803932,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803932,  19,     500000) /* Value */
     , (803932,  33,          1) /* Bonded - Bonded */
     , (803932,  45,          1) /* DamageType - Slash */
     , (803932,  46,        512) /* DefaultCombatStyle - Magic */
     , (803932,  52,          1) /* ParentLocation - RightHand */
     , (803932,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803932,  94,         16) /* TargetType - Creature */
     , (803932, 106,        999) /* ItemSpellcraft */
     , (803932, 107,       8000) /* ItemCurMana */
     , (803932, 108,       8000) /* ItemMaxMana */
     , (803932, 109,          0) /* ItemDifficulty */
     , (803932, 114,          1) /* Attuned - Attuned */
     , (803932, 117,         30) /* ItemManaCost */
     , (803932, 151,          2) /* HookType - Wall */
     , (803932, 158,          7) /* WieldRequirements - Level */
     , (803932, 160,      10000) /* WieldDifficulty */
     , (803932, 169,  118162702) /* TsysMutationData */
     , (803932, 179,          8) /* ImbuedEffect - SlashRending */
     , (803932, 292,          3) /* Cleaving */
     , (803932, 353,          0) /* WeaponType - Undef */
     , (803932, 370,        350) /* GearDamage */
     , (803932, 371,        350) /* GearDamageResist */
     , (803932, 374,        350) /* GearCritDamage */
     , (803932, 375,        350) /* GearCritDamageResist */
     , (803932, 376,        350) /* GearHealingBoost */
     , (803932, 379,       1000) /* GearMaxHealth */
	 , (803932, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803932,  11, True ) /* IgnoreCollisions */
     , (803932,  13, True ) /* Ethereal */
     , (803932,  14, True ) /* GravityStatus */
     , (803932,  19, True ) /* Attackable */
     , (803932,  22, True ) /* Inscribable */
     , (803932, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803932,   5,   -0.05) /* ManaRate */
     , (803932,  12,    0.66) /* Shade */
     , (803932,  29,     1.5) /* WeaponDefense */
     , (803932,  39,     1.5) /* DefaultScale */
     , (803932, 136,    0.15) /* CriticalMultiplier */
     , (803932, 144,    0.45) /* ManaConversionMod */
     , (803932, 147,    0.45) /* CriticalFrequency */
     , (803932, 152,     5.5) /* ElementalDamageMod */
     , (803932, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803932,   1, 'Tradewind Slicing Orb of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803932,   1,   33558916) /* Setup */
     , (803932,   3,  536870932) /* SoundTable */
     , (803932,   6,   67111919) /* PaletteBase */
     , (803932,   7,  268436199) /* ClothingBase */
     , (803932,   8,  100677063) /* Icon */
     , (803932,  22,  872415275) /* PhysicsEffectTable */
     , (803932,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803932,  28,       4457) /* Spell - Incantation of Whirling Blade */
     , (803932,  36,  234881042) /* MutateFilter */
     , (803932,  46,  939524146) /* TsysMutationFilter */
     , (803932,  50,  100673177) /* IconOverlay */
     , (803932,  52,  100667892) /* IconUnderlay */
     , (803932,  55,       4457) /* ProcSpell - Incantation of Whirling Blade */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803932,  3699,      2)  /* Prodigal Defender */
     , (803932,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803932,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803932,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803932,  4305,      2)  /* Incantation of Focus Self */
     , (803932,  4329,      2)  /* Incantation of Willpower Self */
     , (803932,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803932,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803932,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803932,  6091,      2)  /* Legendary Defender */
     , (803932,  6098,      2)  /* Legendary Spirit Thirst */;
