DELETE FROM `weenie` WHERE `class_Id` = 803927;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803927, 'Tradewind Axe of the Kings', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803927,   1,          1) /* ItemType - MeleeWeapon */
     , (803927,   3,         39) /* PaletteTemplate - Red */
     , (803927,   5,        500) /* EncumbranceVal */
     , (803927,   8,         90) /* Mass */
     , (803927,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803927,  16,          1) /* ItemUseable - No */
     , (803927,  19,    3500000) /* Value */
     , (803927,  33,          1) /* Bonded - Bonded */
     , (803927,  44,        600) /* Damage */
     , (803927,  45,       1024) /* DamageType - Pierce */
     , (803927,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803927,  47,        160) /* AttackType - Thrust */
     , (803927,  48,         45) /* WeaponSkill - LightWeapons */
     , (803927,  49,         50) /* WeaponTime */
     , (803927,  51,          1) /* CombatUse - Melee */
     , (803927,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803927, 106,        999) /* ItemSpellcraft */
     , (803927, 107,       2200) /* ItemCurMana */
     , (803927, 108,       2200) /* ItemMaxMana */
     , (803927, 109,          0) /* ItemDifficulty */
     , (803927, 114,          1) /* Attuned - Attuned */
     , (803927, 124,          2) /* Version */
     , (803927, 151,          2) /* HookType - Wall */
	 , (803927, 158,          7) /* WieldRequirements - Level */
     , (803927, 160,       10000) /* WieldDifficulty */
     , (803927, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803927, 292,          5) /* Cleaving */
     , (803927, 353,          3) /* WeaponType - Sword */
	 , (803927, 370,         350) /* Damage */
	 , (803927, 371,         350) /* Damage Resist */
	 , (803927, 374,         350) /* Critical Damage */
	 , (803927, 375,         350) /* Critical Damage Resist */
	 , (803927, 376,         350) /* Heal Boost */
	 , (803927, 379,         500) /* Vitality */
	 , (803927, 9041,          4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803927,  11, True ) /* IgnoreCollisions */
     , (803927,  13, True ) /* Ethereal */
     , (803927,  14, True ) /* GravityStatus */
     , (803927,  15, True ) /* LightsStatus */
	 , (803927,  19, True ) /* Attackable */
     , (803927,  22, True ) /* Inscribable */
     , (803927,  65, True ) /* IgnoreMagicResist */
     , (803927,  66, True ) /* IgnoreMagicArmor */
     , (803927,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803927,   5,   -0.05) /* ManaRate */
     , (803927,  21,       0) /* WeaponLength */
     , (803927,  22,     0.2) /* DamageVariance */
     , (803927,  26,       0) /* MaximumVelocity */
     , (803927,  29,    1.50) /* WeaponDefense */
     , (803927,  39,     1.1) /* DefaultScale */
     , (803927,  62,    1.50) /* WeaponOffense */
     , (803927,  63,    0.50) /* DamageMod */
     , (803927, 136,   0.001) /* CriticalMultiplier */
     , (803927, 147,    0.10) /* CriticalFrequency */
     , (803927, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803927,   1, 'Tradewind Axe of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803927,   1,   33557200) /* Setup */
     , (803927,   3,  536870932) /* SoundTable */
     , (803927,   6,   67111919) /* PaletteBase */
     , (803927,   7,  268436199) /* ClothingBase */
     , (803927,   8,  100671742) /* Icon */
     , (803927,  19,         88) /* ActivationAnimation */
     , (803927,  22,  872415275) /* PhysicsEffectTable */
     , (803927,  30,         87) /* PhysicsScript - BreatheLightning */
     , (803927,  52,  100667892) /* IconUnderlay */
	 , (803927,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803927,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803927,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803927,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803927,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803927,  6089,      2)  /* Legendary Blood Thirst */
     , (803927,  6091,      2)  /* Legendary Defender */
     , (803927,  3699,      2)  /* Prodigal Defender */
     , (803927,  3688,      2)  /* Prodigal Blood Drinker */;
