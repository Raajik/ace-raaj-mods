DELETE FROM `weenie` WHERE `class_Id` = 803934;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803934, 'Tradewind Bashing Orb of the Kings', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803934,   1,      32768) /* ItemType - Caster */
     , (803934,   3,          4) /* PaletteTemplate - Brown */
     , (803934,   5,        100) /* EncumbranceVal */
     , (803934,   8,         90) /* Mass */
     , (803934,   9,   16777216) /* ValidLocations - Held */
     , (803934,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803934,  19,     500000) /* Value */
     , (803934,  33,          1) /* Bonded - Bonded */
     , (803934,  45,          4) /* DamageType - Bludgeon */
     , (803934,  46,        512) /* DefaultCombatStyle - Magic */
     , (803934,  52,          1) /* ParentLocation - RightHand */
     , (803934,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803934,  94,         16) /* TargetType - Creature */
     , (803934, 106,        999) /* ItemSpellcraft */
     , (803934, 107,       8000) /* ItemCurMana */
     , (803934, 108,       8000) /* ItemMaxMana */
     , (803934, 109,          0) /* ItemDifficulty */
     , (803934, 114,          1) /* Attuned - Attuned */
     , (803934, 117,         30) /* ItemManaCost */
     , (803934, 151,          2) /* HookType - Wall */
     , (803934, 158,          7) /* WieldRequirements - Level */
     , (803934, 160,      10000) /* WieldDifficulty */
     , (803934, 169,  118162702) /* TsysMutationData */
     , (803934, 179,         32) /* ImbuedEffect - BludgeonRending */
     , (803934, 292,          3) /* Cleaving */
     , (803934, 353,          0) /* WeaponType - Undef */
     , (803934, 370,        350) /* GearDamage */
     , (803934, 371,        350) /* GearDamageResist */
     , (803934, 374,        350) /* GearCritDamage */
     , (803934, 375,        350) /* GearCritDamageResist */
     , (803934, 376,        350) /* GearHealingBoost */
     , (803934, 379,       1000) /* GearMaxHealth */
	 , (803934, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803934,  11, True ) /* IgnoreCollisions */
     , (803934,  13, True ) /* Ethereal */
     , (803934,  14, True ) /* GravityStatus */
     , (803934,  19, True ) /* Attackable */
     , (803934,  22, True ) /* Inscribable */
     , (803934, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803934,   5,   -0.05) /* ManaRate */
     , (803934,  12,    0.66) /* Shade */
     , (803934,  29,     1.5) /* WeaponDefense */
     , (803934,  39,     1.5) /* DefaultScale */
     , (803934, 136,    0.15) /* CriticalMultiplier */
     , (803934, 144,    0.45) /* ManaConversionMod */
     , (803934, 147,    0.45) /* CriticalFrequency */
     , (803934, 152,     5.5) /* ElementalDamageMod */
     , (803934, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803934,   1, 'Tradewind Bashing Orb of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803934,   1,   33558916) /* Setup */
     , (803934,   3,  536870932) /* SoundTable */
     , (803934,   6,   67111919) /* PaletteBase */
     , (803934,   7,  268436199) /* ClothingBase */
     , (803934,   8,  100677063) /* Icon */
     , (803934,  22,  872415275) /* PhysicsEffectTable */
     , (803934,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803934,  28,       4455) /* Spell - Incantation of Shock Wave */
     , (803934,  36,  234881042) /* MutateFilter */
     , (803934,  46,  939524146) /* TsysMutationFilter */
     , (803934,  50,  100673184) /* IconOverlay */
     , (803934,  52,  100667892) /* IconUnderlay */
     , (803934,  55,       4455) /* ProcSpell - Incantation of Shock Wave */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803934,  3699,      2)  /* Prodigal Defender */
     , (803934,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803934,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803934,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803934,  4305,      2)  /* Incantation of Focus Self */
     , (803934,  4329,      2)  /* Incantation of Willpower Self */
     , (803934,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803934,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803934,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803934,  6091,      2)  /* Legendary Defender */
     , (803934,  6098,      2)  /* Legendary Spirit Thirst */;
