DELETE FROM `weenie` WHERE `class_Id` = 803403;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803403, 'Luminium Sweeper', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803403,   1,          1) /* ItemType - MeleeWeapon */
     , (803403,   5,        550) /* EncumbranceVal */
     , (803403,   8,         90) /* Mass */
     , (803403,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803403,  16,          1) /* ItemUseable - No */
     , (803403,  19,    3500000) /* Value */
     , (803403,  33,          1) /* Bonded - Bonded */
     , (803403,  44,        430) /* Damage */
     , (803403,  45,       1024) /* DamageType - Force */
     , (803403,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803403,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803403,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (803403,  49,         40) /* WeaponTime */
     , (803403,  51,          1) /* CombatUse - Melee */
     , (803403,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803403, 106,        999) /* ItemSpellcraft */
     , (803403, 107,       3500) /* ItemCurMana */
     , (803403, 108,       3500) /* ItemMaxMana */
     , (803403, 109,          0) /* ItemDifficulty */
     , (803403, 114,          1) /* Attuned - Attuned */
     , (803403, 124,          2) /* Version */
     , (803403, 151,          2) /* HookType - Wall */
	 , (803403, 158,          7) /* WieldRequirements - Level */
     , (803403, 160,       5000) /* WieldDifficulty */
     , (803403, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803403, 292,          5) /* Cleaving */
     , (803403, 353,          2) /* WeaponType - Sword */
	 , (803403, 370,         155) /* Damage */
	 , (803403, 371,         155) /* Damage Resist */
	 , (803403, 374,         155) /* Critical Damage */
	 , (803403, 375,         155) /* Critical Damage Resist */
	 , (803403, 376,         155) /* Heal Boost */
	 , (803403, 379,         155) /* Vitality */
	 , (803403, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803403,  15, True ) /* LightsStatus */
	 , (803403,  22, True ) /* Inscribable */
     , (803403,  65, True ) /* IgnoreMagicResist */
     , (803403,  66, True ) /* IgnoreMagicArmor */
     , (803403,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803403,   5,   -0.05) /* ManaRate */
     , (803403,  21,       0) /* WeaponLength */
     , (803403,  22,     0.2) /* DamageVariance */
     , (803403,  26,       0) /* MaximumVelocity */
     , (803403,  29,    1.50) /* WeaponDefense */
     , (803403,  39,     1.1) /* DefaultScale */
     , (803403,  62,    1.50) /* WeaponOffense */
     , (803403,  63,    0.25) /* DamageMod */
     , (803403, 136,   0.001) /* CriticalMultiplier */
     , (803403, 147,    0.10) /* CriticalFrequency */
     , (803403, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803403,   1, 'Luminium Sweeper') /* Name */
     , (803403,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803403,   1,   33561503) /* Setup */
     , (803403,   3,  536870932) /* SoundTable */
     , (803403,   8,  100692957) /* Icon */
     , (803403,  22,  872415275) /* PhysicsEffectTable */
     , (803403,  36,  234881042) /* MutateFilter */
     , (803403,  46,  939524146) /* TsysMutationFilter */
     , (803403,  52,  100676442) /* IconUnderlay */
	 , (803403,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803403,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803403,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803403,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803403,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803403,  6089,      2)  /* Legendary Blood Thirst */
     , (803403,  6091,      2)  /* Legendary Defender */
     , (803403,  3699,      2)  /* Prodigal Defender */
     , (803403,  3688,      2)  /* Prodigal Blood Drinker */;
