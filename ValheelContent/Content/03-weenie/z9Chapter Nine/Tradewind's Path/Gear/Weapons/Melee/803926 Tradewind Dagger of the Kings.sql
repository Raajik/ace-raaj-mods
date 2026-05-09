DELETE FROM `weenie` WHERE `class_Id` = 803926;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803926, 'Tradewind Dagger of the Kings', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803926,   1,          1) /* ItemType - MeleeWeapon */
     , (803926,   3,         39) /* PaletteTemplate - Red */
     , (803926,   5,        550) /* EncumbranceVal */
     , (803926,   8,         90) /* Mass */
     , (803926,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803926,  16,          1) /* ItemUseable - No */
     , (803926,  19,    3500000) /* Value */
     , (803926,  33,          1) /* Bonded - Bonded */
     , (803926,  44,        580) /* Damage */
     , (803926,  45,       1024) /* DamageType - Force */
     , (803926,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803926,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803926,  48,         46) /* WeaponSkill - HeavyWeapons */
     , (803926,  49,         40) /* WeaponTime */
     , (803926,  51,          1) /* CombatUse - Melee */
     , (803926,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803926, 106,        999) /* ItemSpellcraft */
     , (803926, 107,       3500) /* ItemCurMana */
     , (803926, 108,       3500) /* ItemMaxMana */
     , (803926, 109,          0) /* ItemDifficulty */
     , (803926, 114,          1) /* Attuned - Attuned */
     , (803926, 124,          2) /* Version */
     , (803926, 151,          2) /* HookType - Wall */
	 , (803926, 158,          7) /* WieldRequirements - Level */
     , (803926, 160,       10000) /* WieldDifficulty */
     , (803926, 169,  101254146) /* TsysMutationData */
     , (803926, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803926, 292,          5) /* Cleaving */
     , (803926, 353,          6) /* WeaponType - Sword */
	 , (803926, 370,         350) /* Damage */
	 , (803926, 371,         350) /* Damage Resist */
	 , (803926, 374,         350) /* Critical Damage */
	 , (803926, 375,         350) /* Critical Damage Resist */
	 , (803926, 376,         350) /* Heal Boost */
	 , (803926, 379,         500) /* Vitality */
	 , (803926, 9041,          4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803926,  11, True ) /* IgnoreCollisions */
     , (803926,  13, True ) /* Ethereal */
     , (803926,  14, True ) /* GravityStatus */
     , (803926,  15, True ) /* LightsStatus */
	 , (803926,  19, True ) /* Attackable */
     , (803926,  22, True ) /* Inscribable */
     , (803926,  65, True ) /* IgnoreMagicResist */
     , (803926,  66, True ) /* IgnoreMagicArmor */
     , (803926,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803926,   5,   -0.05) /* ManaRate */
     , (803926,  21,       0) /* WeaponLength */
     , (803926,  22,     0.2) /* DamageVariance */
     , (803926,  26,       0) /* MaximumVelocity */
     , (803926,  29,    1.50) /* WeaponDefense */
     , (803926,  39,     1.1) /* DefaultScale */
     , (803926,  62,    1.50) /* WeaponOffense */
     , (803926,  63,    0.20) /* DamageMod */
     , (803926, 136,   0.001) /* CriticalMultiplier */
     , (803926, 147,    0.10) /* CriticalFrequency */
     , (803926, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803926,   1, 'Tradewind Dagger of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803926,   1,   33558208) /* Setup */
     , (803926,   3,  536870932) /* SoundTable */
     , (803926,   6,   67111919) /* PaletteBase */
     , (803926,   7,  268436199) /* ClothingBase */
     , (803926,   8,  100671745) /* Icon */
     , (803926,  19,         88) /* ActivationAnimation */
     , (803926,  22,  872415275) /* PhysicsEffectTable */
     , (803926,  30,         87) /* PhysicsScript - BreatheLightning */
     , (803926,  52,  100667892) /* IconUnderlay */
	 , (803926,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803926,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803926,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803926,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803926,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803926,  6089,      2)  /* Legendary Blood Thirst */
     , (803926,  3688,      2)  /* Prodigal Blood Drinker */;
