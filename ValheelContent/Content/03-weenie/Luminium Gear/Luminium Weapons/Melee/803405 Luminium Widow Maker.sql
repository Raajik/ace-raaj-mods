DELETE FROM `weenie` WHERE `class_Id` = 803405;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803405, 'Luminium Widow Maker', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803405,   1,          1) /* ItemType - MeleeWeapon */
     , (803405,   5,        550) /* EncumbranceVal */
     , (803405,   8,         90) /* Mass */
     , (803405,   9,   33554432) /* ValidLocations - TwoHanded */
     , (803405,  16,          1) /* ItemUseable - No */
     , (803405,  19,    3500000) /* Value */
     , (803405,  33,          1) /* Bonded - Bonded */
     , (803405,  44,        410) /* Damage */
     , (803405,  45,       1024) /* DamageType - Slash */
     , (803405,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (803405,  47,          4) /* AttackType - DoubleSlash, DoubleThrust */
     , (803405,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (803405,  49,         50) /* WeaponTime */
     , (803405,  51,          5) /* CombatUse - TwoHanded */
     , (803405,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803405, 106,        999) /* ItemSpellcraft */
     , (803405, 107,       2000) /* ItemCurMana */
     , (803405, 108,       2000) /* ItemMaxMana */
     , (803405, 109,          0) /* ItemDifficulty */
     , (803405, 114,          1) /* Attuned - Attuned */
     , (803405, 151,          2) /* HookType - Wall */
	 , (803405, 158,          7) /* WieldRequirements - Level */
     , (803405, 160,       5000) /* WieldDifficulty */
     , (803405, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803405, 292,          5) /* Cleaving */
     , (803405, 353,         11) /* WeaponType - TwoHanded */
	 , (803405, 370,         155) /* Damage */
	 , (803405, 371,         155) /* Damage Resist */
	 , (803405, 374,         155) /* Critical Damage */
	 , (803405, 375,         155) /* Critical Damage Resist */
	 , (803405, 376,         155) /* Heal Boost */
	 , (803405, 379,         155) /* Vitality */
	 , (803405, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803405,  15, True ) /* LightsStatus */
	 , (803405,  22, True ) /* Inscribable */
     , (803405,  65, True ) /* IgnoreMagicResist */
     , (803405,  66, True ) /* IgnoreMagicArmor */
     , (803405,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803405,   5,   -0.05) /* ManaRate */
     , (803405,  21,       0) /* WeaponLength */
     , (803405,  22,     0.2) /* DamageVariance */
     , (803405,  26,       0) /* MaximumVelocity */
     , (803405,  29,    1.50) /* WeaponDefense */
     , (803405,  39,     1.1) /* DefaultScale */
     , (803405,  62,    1.50) /* WeaponOffense */
     , (803405,  63,    0.25) /* DamageMod */
     , (803405, 136,   0.001) /* CriticalMultiplier */
     , (803405, 147,    0.10) /* CriticalFrequency */
     , (803405, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803405,   1, 'Luminium Widow Maker') /* Name */
     , (803405,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803405,   1,   33561502) /* Setup */
     , (803405,   3,  536870932) /* SoundTable */
     , (803405,   8,  100692958) /* Icon */
     , (803405,  22,  872415275) /* PhysicsEffectTable */
     , (803405,  36,  234881042) /* MutateFilter */
     , (803405,  46,  939524146) /* TsysMutationFilter */
     , (803405,  52,  100676442) /* IconUnderlay */
	 , (803405,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803405,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803405,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803405,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803405,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803405,  6089,      2)  /* Legendary Blood Thirst */
     , (803405,  6091,      2)  /* Legendary Defender */
     , (803405,  3699,      2)  /* Prodigal Defender */
     , (803405,  3688,      2)  /* Prodigal Blood Drinker */;
