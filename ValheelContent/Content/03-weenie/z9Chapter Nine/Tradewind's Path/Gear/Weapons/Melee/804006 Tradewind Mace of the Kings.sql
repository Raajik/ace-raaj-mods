DELETE FROM `weenie` WHERE `class_Id` = 804006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804006, 'Tradewind Mace of the Kings', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804006,   1,          1) /* ItemType - MeleeWeapon */
     , (804006,   3,         39) /* PaletteTemplate - Red */
     , (804006,   5,        550) /* EncumbranceVal */
     , (804006,   8,         90) /* Mass */
     , (804006,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (804006,  16,          1) /* ItemUseable - No */
     , (804006,  19,    3500000) /* Value */
     , (804006,  33,          1) /* Bonded - Bonded */
     , (804006,  44,        600) /* Damage */
     , (804006,  45,       1024) /* DamageType - Force */
     , (804006,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (804006,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (804006,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (804006,  49,         40) /* WeaponTime */
     , (804006,  51,          1) /* CombatUse - Melee */
     , (804006,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804006, 106,        999) /* ItemSpellcraft */
     , (804006, 107,       3500) /* ItemCurMana */
     , (804006, 108,       3500) /* ItemMaxMana */
     , (804006, 109,          0) /* ItemDifficulty */
     , (804006, 114,          1) /* Attuned - Attuned */
     , (804006, 124,          2) /* Version */
     , (804006, 151,          2) /* HookType - Wall */
	 , (804006, 158,          7) /* WieldRequirements - Level */
     , (804006, 160,       10000) /* WieldDifficulty */
     , (804006, 169,  101254146) /* TsysMutationData */
     , (804006, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (804006, 292,          5) /* Cleaving */
     , (804006, 353,          4) /* WeaponType - Sword */
	 , (804006, 370,         350) /* Damage */
	 , (804006, 371,         350) /* Damage Resist */
	 , (804006, 374,         350) /* Critical Damage */
	 , (804006, 375,         350) /* Critical Damage Resist */
	 , (804006, 376,         350) /* Heal Boost */
	 , (804006, 379,         500) /* Vitality */
	 , (804006, 9041,          4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804006,  15, True ) /* LightsStatus */
	 , (804006,  22, True ) /* Inscribable */
     , (804006,  65, True ) /* IgnoreMagicResist */
     , (804006,  66, True ) /* IgnoreMagicArmor */
     , (804006,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804006,   5,   -0.05) /* ManaRate */
     , (804006,  21,       0) /* WeaponLength */
     , (804006,  22,     0.2) /* DamageVariance */
     , (804006,  26,       0) /* MaximumVelocity */
     , (804006,  29,    1.50) /* WeaponDefense */
     , (804006,  39,     1.1) /* DefaultScale */
     , (804006,  62,    1.50) /* WeaponOffense */
     , (804006,  63,    0.50) /* DamageMod */
     , (804006, 136,   0.001) /* CriticalMultiplier */
     , (804006, 147,    0.10) /* CriticalFrequency */
     , (804006, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804006,   1, 'Tradewind Mace of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804006,   1,   33557204) /* Setup */
     , (804006,   3,  536870932) /* SoundTable */
     , (804006,   6,   67111919) /* PaletteBase */
     , (804006,   7,  268436199) /* ClothingBase */
     , (804006,   8,  100671746) /* Icon */
     , (804006,  22,  872415275) /* PhysicsEffectTable */
     , (804006,  30,         87) /* PhysicsScript - BreatheLightning */
     , (804006,  52,  100667892) /* IconUnderlay */
	 , (804006,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (804006,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (804006,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (804006,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (804006,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (804006,  6089,      2)  /* Legendary Blood Thirst */
     , (804006,  6091,      2)  /* Legendary Defender */
     , (804006,  3699,      2)  /* Prodigal Defender */
     , (804006,  3688,      2)  /* Prodigal Blood Drinker */;
