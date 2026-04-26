DELETE FROM `weenie` WHERE `class_Id` = 803929;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803929, 'Tradewind Scythe of the Kings', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803929,   1,          1) /* ItemType - MeleeWeapon */
     , (803929,   3,         39) /* PaletteTemplate - Red */
     , (803929,   5,        550) /* EncumbranceVal */
     , (803929,   8,         90) /* Mass */
     , (803929,   9,   33554432) /* ValidLocations - TwoHanded */
     , (803929,  16,          1) /* ItemUseable - No */
     , (803929,  19,    3500000) /* Value */
     , (803929,  33,          1) /* Bonded - Bonded */
     , (803929,  44,        580) /* Damage */
     , (803929,  45,       1024) /* DamageType - Slash */
     , (803929,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (803929,  47,          4) /* AttackType - DoubleSlash, DoubleThrust */
     , (803929,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (803929,  49,         50) /* WeaponTime */
     , (803929,  51,          5) /* CombatUse - TwoHanded */
     , (803929,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803929, 106,        999) /* ItemSpellcraft */
     , (803929, 107,       2000) /* ItemCurMana */
     , (803929, 108,       2000) /* ItemMaxMana */
     , (803929, 109,          0) /* ItemDifficulty */
     , (803929, 114,          1) /* Attuned - Attuned */
     , (803929, 151,          2) /* HookType - Wall */
	 , (803929, 158,          7) /* WieldRequirements - Level */
     , (803929, 160,      10000) /* WieldDifficulty */
     , (803929, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803929, 292,          5) /* Cleaving */
     , (803929, 353,         11) /* WeaponType - TwoHanded */
	 , (803929, 370,        350) /* Damage */
	 , (803929, 371,        350) /* Damage Resist */
	 , (803929, 374,        350) /* Critical Damage */
	 , (803929, 375,        350) /* Critical Damage Resist */
	 , (803929, 376,        350) /* Heal Boost */
	 , (803929, 379,       1000) /* Vitality */
	 , (803929, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803929,  15, True ) /* LightsStatus */
	 , (803929,  22, True ) /* Inscribable */
     , (803929,  65, True ) /* IgnoreMagicResist */
     , (803929,  66, True ) /* IgnoreMagicArmor */
     , (803929,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803929,   5,   -0.05) /* ManaRate */
     , (803929,  21,       0) /* WeaponLength */
     , (803929,  22,     0.2) /* DamageVariance */
     , (803929,  26,       0) /* MaximumVelocity */
     , (803929,  29,    1.50) /* WeaponDefense */
     , (803929,  39,     1.1) /* DefaultScale */
     , (803929,  62,    1.50) /* WeaponOffense */
     , (803929,  63,    0.50) /* DamageMod */
     , (803929, 136,   0.001) /* CriticalMultiplier */
     , (803929, 147,    0.10) /* CriticalFrequency */
     , (803929, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803929,   1, 'Tradewind Greatsword of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803929,   1,   33558209) /* Setup */
     , (803929,   3,  536870932) /* SoundTable */
     , (803929,   8,  100690841) /* Icon */
     , (803929,  19,         88) /* ActivationAnimation */
     , (803929,  22,  872415275) /* PhysicsEffectTable */
     , (803929,  30,         87) /* PhysicsScript - BreatheLightning */
     , (803929,  52,  100667892) /* IconUnderlay */
	 , (803929,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803929,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803929,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803929,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803929,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803929,  6089,      2)  /* Legendary Blood Thirst */
     , (803929,  6091,      2)  /* Legendary Defender */
     , (803929,  3699,      2)  /* Prodigal Defender */
     , (803929,  3688,      2)  /* Prodigal Blood Drinker */;
