DELETE FROM `weenie` WHERE `class_Id` = 803404;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803404, 'Luminium Wakazashi', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803404,   1,          1) /* ItemType - MeleeWeapon */
     , (803404,   5,        500) /* EncumbranceVal */
     , (803404,   8,         90) /* Mass */
     , (803404,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803404,  16,          1) /* ItemUseable - No */
     , (803404,  19,    3500000) /* Value */
     , (803404,  33,          1) /* Bonded - Bonded */
     , (803404,  44,        430) /* Damage */
     , (803404,  45,       1024) /* DamageType - Pierce */
     , (803404,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803404,  47,        160) /* AttackType - Thrust */
     , (803404,  48,         45) /* WeaponSkill - LightWeapons */
     , (803404,  49,         50) /* WeaponTime */
     , (803404,  51,          1) /* CombatUse - Melee */
     , (803404,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803404, 106,        999) /* ItemSpellcraft */
     , (803404, 107,       2200) /* ItemCurMana */
     , (803404, 108,       2200) /* ItemMaxMana */
     , (803404, 109,          0) /* ItemDifficulty */
     , (803404, 114,          1) /* Attuned - Attuned */
     , (803404, 124,          2) /* Version */
     , (803404, 151,          2) /* HookType - Wall */
	 , (803404, 158,          7) /* WieldRequirements - Level */
     , (803404, 160,       5000) /* WieldDifficulty */
     , (803404, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803404, 292,          5) /* Cleaving */
     , (803404, 353,          2) /* WeaponType - Sword */
	 , (803404, 370,         155) /* Damage */
	 , (803404, 371,         155) /* Damage Resist */
	 , (803404, 374,         155) /* Critical Damage */
	 , (803404, 375,         155) /* Critical Damage Resist */
	 , (803404, 376,         155) /* Heal Boost */
	 , (803404, 379,         155) /* Vitality */
	 , (803404, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803404,  11, True ) /* IgnoreCollisions */
     , (803404,  13, True ) /* Ethereal */
     , (803404,  14, True ) /* GravityStatus */
     , (803404,  15, True ) /* LightsStatus */
	 , (803404,  19, True ) /* Attackable */
     , (803404,  22, True ) /* Inscribable */
     , (803404,  65, True ) /* IgnoreMagicResist */
     , (803404,  66, True ) /* IgnoreMagicArmor */
     , (803404,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803404,   5,   -0.05) /* ManaRate */
     , (803404,  21,       0) /* WeaponLength */
     , (803404,  22,     0.2) /* DamageVariance */
     , (803404,  26,       0) /* MaximumVelocity */
     , (803404,  29,    1.50) /* WeaponDefense */
     , (803404,  39,     1.1) /* DefaultScale */
     , (803404,  62,    1.50) /* WeaponOffense */
     , (803404,  63,    0.25) /* DamageMod */
     , (803404, 136,   0.001) /* CriticalMultiplier */
     , (803404, 147,    0.10) /* CriticalFrequency */
     , (803404, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803404,   1, 'Luminium Wakazashi') /* Name */
     , (803404,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803404,   1,   33561505) /* Setup */
     , (803404,   3,  536870932) /* SoundTable */
     , (803404,   8,  100692959) /* Icon */
     , (803404,  22,  872415275) /* PhysicsEffectTable */
     , (803404,  36,  234881042) /* MutateFilter */
     , (803404,  46,  939524146) /* TsysMutationFilter */
     , (803404,  52,  100676442) /* IconUnderlay */
	 , (803404,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803404,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803404,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803404,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803404,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803404,  6089,      2)  /* Legendary Blood Thirst */
     , (803404,  6091,      2)  /* Legendary Defender */
     , (803404,  3699,      2)  /* Prodigal Defender */
     , (803404,  3688,      2)  /* Prodigal Blood Drinker */;
