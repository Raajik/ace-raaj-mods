DELETE FROM `weenie` WHERE `class_Id` = 803936;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803936, 'Tradewind Searing Orb of the Kings', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803936,   1,      32768) /* ItemType - Caster */
     , (803936,   3,          4) /* PaletteTemplate - Brown */
     , (803936,   5,        100) /* EncumbranceVal */
     , (803936,   8,         90) /* Mass */
     , (803936,   9,   16777216) /* ValidLocations - Held */
     , (803936,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803936,  19,     500000) /* Value */
     , (803936,  33,          1) /* Bonded - Bonded */
     , (803936,  45,         16) /* DamageType - Fire */
     , (803936,  46,        512) /* DefaultCombatStyle - Magic */
     , (803936,  52,          1) /* ParentLocation - RightHand */
     , (803936,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803936,  94,         16) /* TargetType - Creature */
     , (803936, 106,        999) /* ItemSpellcraft */
     , (803936, 107,       8000) /* ItemCurMana */
     , (803936, 108,       8000) /* ItemMaxMana */
     , (803936, 109,          0) /* ItemDifficulty */
     , (803936, 114,          1) /* Attuned - Attuned */
     , (803936, 117,         30) /* ItemManaCost */
     , (803936, 151,          2) /* HookType - Wall */
     , (803936, 158,          7) /* WieldRequirements - Level */
     , (803936, 160,      10000) /* WieldDifficulty */
     , (803936, 169,  118162702) /* TsysMutationData */
     , (803936, 179,        512) /* ImbuedEffect - FireRending */
     , (803936, 292,          3) /* Cleaving */
     , (803936, 353,          0) /* WeaponType - Undef */
     , (803936, 370,        210) /* GearDamage */
     , (803936, 371,        350) /* GearDamageResist */
     , (803936, 374,        350) /* GearCritDamage */
     , (803936, 375,        350) /* GearCritDamageResist */
     , (803936, 376,        350) /* GearHealingBoost */
     , (803936, 379,       1000) /* GearMaxHealth */
	 , (803936, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803936,  11, True ) /* IgnoreCollisions */
     , (803936,  13, True ) /* Ethereal */
     , (803936,  14, True ) /* GravityStatus */
     , (803936,  19, True ) /* Attackable */
     , (803936,  22, True ) /* Inscribable */
     , (803936, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803936,   5,   -0.05) /* ManaRate */
     , (803936,  12,    0.66) /* Shade */
     , (803936,  29,     1.5) /* WeaponDefense */
     , (803936,  39,     1.5) /* DefaultScale */
     , (803936, 136,    0.15) /* CriticalMultiplier */
     , (803936, 144,    0.45) /* ManaConversionMod */
     , (803936, 147,    0.45) /* CriticalFrequency */
     , (803936, 152,     5.5) /* ElementalDamageMod */
     , (803936, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803936,   1, 'Tradewind Searing Orb of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803936,   1,   33558916) /* Setup */
     , (803936,   3,  536870932) /* SoundTable */
     , (803936,   6,   67111919) /* PaletteBase */
     , (803936,   7,  268436199) /* ClothingBase */
     , (803936,   8,  100677063) /* Icon */
     , (803936,  22,  872415275) /* PhysicsEffectTable */
     , (803936,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803936,  28,       4439) /* Spell - Incantation of Flame Bolt */
     , (803936,  36,  234881042) /* MutateFilter */
     , (803936,  46,  939524146) /* TsysMutationFilter */
     , (803936,  50,  100673176) /* IconOverlay */
     , (803936,  52,  100667892) /* IconUnderlay */
     , (803936,  55,       4439) /* ProcSpell - Incantation of Flame Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803936,  3699,      2)  /* Prodigal Defender */
     , (803936,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803936,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803936,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803936,  4305,      2)  /* Incantation of Focus Self */
     , (803936,  4329,      2)  /* Incantation of Willpower Self */
     , (803936,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803936,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803936,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803936,  6091,      2)  /* Legendary Defender */
     , (803936,  6098,      2)  /* Legendary Spirit Thirst */;
