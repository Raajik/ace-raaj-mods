DELETE FROM `weenie` WHERE `class_Id` = 803182;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803182, 'Ascended Piercing Morrigans Vanity', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803182,   1,          1) /* ItemType - MeleeWeapon */
     , (803182,   5,        550) /* EncumbranceVal */
     , (803182,   8,         90) /* Mass */
     , (803182,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803182,  16,          1) /* ItemUseable - No */
     , (803182,  19,     750000) /* Value */
     , (803182,  33,          1) /* Bonded - Bonded */
     , (803182,  44,        380) /* Damage */
     , (803182,  45,       1024) /* DamageType - Force */
     , (803182,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803182,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803182,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (803182,  49,         40) /* WeaponTime */
     , (803182,  51,          1) /* CombatUse - Melee */
     , (803182,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803182, 106,        999) /* ItemSpellcraft */
     , (803182, 107,       3500) /* ItemCurMana */
     , (803182, 108,       3500) /* ItemMaxMana */
     , (803182, 109,          0) /* ItemDifficulty */
     , (803182, 114,          1) /* Attuned - Attuned */
     , (803182, 124,          2) /* Version */
     , (803182, 151,          2) /* HookType - Wall */
	 , (803182, 158,          7) /* WieldRequirements - Level */
     , (803182, 160,       3000) /* WieldDifficulty */
     , (803182, 179,         -2147483648) /* ImbuedEffect - Melee Defense */
     , (803182, 292,          5) /* Cleaving */
     , (803182, 353,          2) /* WeaponType - Sword */
	 , (803182, 370,         135) /* Damage */
	 , (803182, 371,         135) /* Damage Resist */
	 , (803182, 374,         135) /* Critical Damage */
	 , (803182, 375,         135) /* Critical Damage Resist */
	 , (803182, 376,         135) /* Heal Boost */
	 , (803182, 379,         135) /* Vitality */
	 , (803182, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803182,  15, True ) /* LightsStatus */
	 , (803182,  22, True ) /* Inscribable */
     , (803182,  65, True ) /* IgnoreMagicResist */
     , (803182,  66, True ) /* IgnoreMagicArmor */
     , (803182,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803182,   5,   -0.05) /* ManaRate */
     , (803182,  21,       0) /* WeaponLength */
     , (803182,  22,     0.2) /* DamageVariance */
     , (803182,  26,       0) /* MaximumVelocity */
     , (803182,  29,    1.50) /* WeaponDefense */
     , (803182,  39,     1.1) /* DefaultScale */
     , (803182,  62,    1.50) /* WeaponOffense */
     , (803182,  63,    0.20) /* DamageMod */
     , (803182, 136,   0.001) /* CriticalMultiplier */
     , (803182, 147,    0.10) /* CriticalFrequency */
     , (803182, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803182,   1, 'Ascended Morrigan''s Vanity') /* Name */
     , (803182,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803182,   1,   33559397) /* Setup */
     , (803182,   3,  536870932) /* SoundTable */
     , (803182,   6,   67111919) /* PaletteBase */
     , (803182,   7,  268437600) /* ClothingBase */
     , (803182,   8,  100686777) /* Icon */
     , (803182,  22,  872415275) /* PhysicsEffectTable */
     , (803182,  36,  234881042) /* MutateFilter */
     , (803182,  46,  939524146) /* TsysMutationFilter */
     , (803182,  52,  100686604) /* IconUnderlay */
	 , (803182,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803182,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803182,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803182,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803182,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803182,  6089,      2)  /* Legendary Blood Thirst */
     , (803182,  6091,      2)  /* Legendary Defender */
     , (803182,  3699,      2)  /* Prodigal Defender */
     , (803182,  3688,      2)  /* Prodigal Blood Drinker */;
