DELETE FROM `weenie` WHERE `class_Id` = 803410;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803410, 'Luminium Orb of Bludgeoning', 35, '2019-08-11 06:52:23') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803410,   1,      32768) /* ItemType - Caster */
     , (803410,   3,          4) /* PaletteTemplate - Brown */
     , (803410,   5,        100) /* EncumbranceVal */
     , (803410,   8,         90) /* Mass */
     , (803410,   9,   16777216) /* ValidLocations - Held */
     , (803410,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803410,  19,     500000) /* Value */
     , (803410,  33,          1) /* Bonded - Bonded */
     , (803410,  45,          4) /* DamageType - Bludgeon */
     , (803410,  46,        512) /* DefaultCombatStyle - Magic */
     , (803410,  52,          1) /* ParentLocation - RightHand */
     , (803410,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803410,  94,         16) /* TargetType - Creature */
     , (803410, 106,        999) /* ItemSpellcraft */
     , (803410, 107,       8000) /* ItemCurMana */
     , (803410, 108,       8000) /* ItemMaxMana */
     , (803410, 109,          0) /* ItemDifficulty */
     , (803410, 114,          1) /* Attuned - Attuned */
     , (803410, 117,         30) /* ItemManaCost */
     , (803410, 151,          2) /* HookType - Wall */
     , (803410, 158,          7) /* WieldRequirements - Level */
     , (803410, 160,       5000) /* WieldDifficulty */
     , (803410, 169,  118162702) /* TsysMutationData */
     , (803410, 179,         32) /* ImbuedEffect - BludgeonRending */
     , (803410, 292,          3) /* Cleaving */
     , (803410, 353,          0) /* WeaponType - Undef */
     , (803410, 370,        155) /* GearDamage */
     , (803410, 371,        155) /* GearDamageResist */
     , (803410, 374,        155) /* GearCritDamage */
     , (803410, 375,        155) /* GearCritDamageResist */
     , (803410, 376,        155) /* GearHealingBoost */
     , (803410, 379,        155) /* GearMaxHealth */
	 , (803410, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803410,  11, True ) /* IgnoreCollisions */
     , (803410,  13, True ) /* Ethereal */
     , (803410,  14, True ) /* GravityStatus */
     , (803410,  19, True ) /* Attackable */
     , (803410,  22, True ) /* Inscribable */
     , (803410, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803410,   5,   -0.05) /* ManaRate */
     , (803410,  12,    0.66) /* Shade */
     , (803410,  29,     1.5) /* WeaponDefense */
     , (803410,  39,       1) /* DefaultScale */
     , (803410,  76,     0.5) /* Translucency */
     , (803410, 136,    0.15) /* CriticalMultiplier */
     , (803410, 144,    0.45) /* ManaConversionMod */
     , (803410, 147,    0.45) /* CriticalFrequency */
     , (803410, 152,       4) /* ElementalDamageMod */
     , (803410, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803410,   1, 'Luminium Orb of Bludgeoning') /* Name */
     , (803410,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803410,   1,   33557115) /* Setup */
     , (803410,   3,  536870932) /* SoundTable */
     , (803410,   8,  100671692) /* Icon */
     , (803410,  22,  872415275) /* PhysicsEffectTable */
     , (803410,  27, 1073742049) /* UseUserAnimation - UseMagicWand */
     , (803410,  28,       4455) /* Spell - Incantation of Shock Wave */
     , (803410,  36,  234881042) /* MutateFilter */
     , (803410,  46,  939524146) /* TsysMutationFilter */
     , (803410,  52,  100676442) /* IconUnderlay */
     , (803410,  55,       4455) /* ProcSpell - Incantation of Shock Wave */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803410,  3699,      2)  /* Prodigal Defender */
     , (803410,  3724,      2)  /* Prodigal Mana Conversion Mastery */
     , (803410,  3735,      2)  /* Prodigal Spirit Drinker */
     , (803410,  3743,      2)  /* Prodigal War Magic Mastery */
     , (803410,  4305,      2)  /* Incantation of Focus Self */
     , (803410,  4329,      2)  /* Incantation of Willpower Self */
     , (803410,  4638,      2)  /* Incantation of War Magic Mastery Self */
     , (803410,  5418,      2)  /* Incantation of Void Magic Mastery Self */
     , (803410,  6064,      2)  /* Legendary Mana Conversion Prowess */
     , (803410,  6091,      2)  /* Legendary Defender */
     , (803410,  6098,      2)  /* Legendary Spirit Thirst */;
