DELETE FROM `weenie` WHERE `class_Id` = 803427;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803427, 'Black Ore Ascended Bludgeoning Orb of the Ironsea', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803427,   1,      32768) /* ItemType - Caster */
     , (803427,   3,          4) /* PaletteTemplate - Brown */
     , (803427,   5,        100) /* EncumbranceVal */
     , (803427,   8,         90) /* Mass */
     , (803427,   9,   16777216) /* ValidLocations - Held */
     , (803427,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803427,  19,     500000) /* Value */
     , (803427,  33,          1) /* Bonded - Bonded */
     , (803427,  45,          4) /* DamageType - Bludgeon */
     , (803427,  46,        512) /* DefaultCombatStyle - Magic */
     , (803427,  52,          1) /* ParentLocation - RightHand */
     , (803427,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803427,  94,         16) /* TargetType - Creature */
     , (803427, 106,        999) /* ItemSpellcraft */
     , (803427, 107,       8000) /* ItemCurMana */
     , (803427, 108,       8000) /* ItemMaxMana */
     , (803427, 109,          0) /* ItemDifficulty */
     , (803427, 114,          1) /* Attuned - Attuned */
     , (803427, 117,         30) /* ItemManaCost */
     , (803427, 151,          2) /* HookType - Wall */
     , (803427, 158,          7) /* WieldRequirements - Level */
     , (803427, 160,      10000) /* WieldDifficulty */
     , (803427, 169,  118162702) /* TsysMutationData */
     , (803427, 179,         32) /* ImbuedEffect - BludgeonRending */
     , (803427, 292,          3) /* Cleaving */
     , (803427, 353,          0) /* WeaponType - Undef */
     , (803427, 370,        210) /* GearDamage */
     , (803427, 371,        210) /* GearDamageResist */
     , (803427, 374,        210) /* GearCritDamage */
     , (803427, 375,        210) /* GearCritDamageResist */
     , (803427, 376,        210) /* GearHealingBoost */
     , (803427, 379,        210) /* GearMaxHealth */
	 , (803427, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803427,  11, True ) /* IgnoreCollisions */
     , (803427,  13, True ) /* Ethereal */
     , (803427,  14, True ) /* GravityStatus */
     , (803427,  19, True ) /* Attackable */
     , (803427,  22, True ) /* Inscribable */
     , (803427, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803427,   5,   -0.05) /* ManaRate */
     , (803427,  12,    0.66) /* Shade */
     , (803427,  29,     1.5) /* WeaponDefense */
     , (803427,  39,     1.5) /* DefaultScale */
     , (803427, 136,    0.15) /* CriticalMultiplier */
     , (803427, 144,    0.45) /* ManaConversionMod */
     , (803427, 147,    0.45) /* CriticalFrequency */
     , (803427, 152,       5) /* ElementalDamageMod */
     , (803427, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803427,   1, 'Black Ore Ascended Bludgeoning Orb of the Ironsea') /* Name */
     , (803427,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803427,   1,   33559424) /* Setup */
     , (803427,   3,  536870932) /* SoundTable */
     , (803427,   6,   67111919) /* PaletteBase */
     , (803427,   8,  100686851) /* Icon */
     , (803427,  22,  872415275) /* PhysicsEffectTable */
     , (803427,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803427,  28,       4455) /* Spell - Incantation of Shock Wave */
     , (803427,  36,  234881042) /* MutateFilter */
     , (803427,  46,  939524146) /* TsysMutationFilter */
     , (803427,  52,  100676442) /* IconUnderlay */
     , (803427,  55,       4455) /* ProcSpell - Incantation of Shock Wave */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803427,  3699,      2)  /* Prodigal Defender */
     , (803427,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803427,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803427,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803427,  4305,      2)  /* Incantation of Focus Self */
     , (803427,  4329,      2)  /* Incantation of Willpower Self */
     , (803427,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803427,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803427,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803427,  6091,      2)  /* Legendary Defender */
     , (803427,  6098,      2)  /* Legendary Spirit Thirst */;
