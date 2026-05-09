DELETE FROM `weenie` WHERE `class_Id` = 803928;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803928, 'Tradewind Staff of the Kings', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803928,   1,          1) /* ItemType - MeleeWeapon */
     , (803928,   3,         39) /* PaletteTemplate - Red */
     , (803928,   5,        550) /* EncumbranceVal */
     , (803928,   8,         90) /* Mass */
     , (803928,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803928,  16,          1) /* ItemUseable - No */
     , (803928,  19,    3500000) /* Value */
     , (803928,  33,          1) /* Bonded - Bonded */
     , (803928,  44,        600) /* Damage */
     , (803928,  45,       1024) /* DamageType - Force */
     , (803928,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803928,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803928,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (803928,  49,         40) /* WeaponTime */
     , (803928,  51,          1) /* CombatUse - Melee */
     , (803928,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803928, 106,        999) /* ItemSpellcraft */
     , (803928, 107,       3500) /* ItemCurMana */
     , (803928, 108,       3500) /* ItemMaxMana */
     , (803928, 109,          0) /* ItemDifficulty */
     , (803928, 114,          1) /* Attuned - Attuned */
     , (803928, 124,          2) /* Version */
     , (803928, 151,          2) /* HookType - Wall */
	 , (803928, 158,          7) /* WieldRequirements - Level */
     , (803928, 160,       10000) /* WieldDifficulty */
     , (803928, 169,  101254146) /* TsysMutationData */
     , (803928, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803928, 292,          5) /* Cleaving */
     , (803928, 353,          7) /* WeaponType - Sword */
	 , (803928, 370,         350) /* Damage */
	 , (803928, 371,         350) /* Damage Resist */
	 , (803928, 374,         350) /* Critical Damage */
	 , (803928, 375,         350) /* Critical Damage Resist */
	 , (803928, 376,         350) /* Heal Boost */
	 , (803928, 379,         500) /* Vitality */
	 , (803928, 9041,          4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803928,  15, True ) /* LightsStatus */
	 , (803928,  22, True ) /* Inscribable */
     , (803928,  65, True ) /* IgnoreMagicResist */
     , (803928,  66, True ) /* IgnoreMagicArmor */
     , (803928,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803928,   5,   -0.05) /* ManaRate */
     , (803928,  21,       0) /* WeaponLength */
     , (803928,  22,     0.2) /* DamageVariance */
     , (803928,  26,       0) /* MaximumVelocity */
     , (803928,  29,    1.50) /* WeaponDefense */
     , (803928,  39,     1.1) /* DefaultScale */
     , (803928,  62,    1.50) /* WeaponOffense */
     , (803928,  63,    0.50) /* DamageMod */
     , (803928, 136,   0.001) /* CriticalMultiplier */
     , (803928, 147,    0.10) /* CriticalFrequency */
     , (803928, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803928,   1, 'Tradewind Staff of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803928,   1,   33557206) /* Setup */
     , (803928,   3,  536870932) /* SoundTable */
     , (803928,   6,   67111919) /* PaletteBase */
     , (803928,   7,  268436199) /* ClothingBase */
     , (803928,   8,  100671748) /* Icon */
     , (803928,  22,  872415275) /* PhysicsEffectTable */
     , (803928,  30,         87) /* PhysicsScript - BreatheLightning */
     , (803928,  52,  100667892) /* IconUnderlay */
	 , (803928,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803928,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803928,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803928,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803928,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803928,  6089,      2)  /* Legendary Blood Thirst */
     , (803928,  6091,      2)  /* Legendary Defender */
     , (803928,  3699,      2)  /* Prodigal Defender */
     , (803928,  3688,      2)  /* Prodigal Blood Drinker */;
