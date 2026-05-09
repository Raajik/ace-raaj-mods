DELETE FROM `weenie` WHERE `class_Id` = 804004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804004, 'Tradewind Spear of the Kings', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804004,   1,          1) /* ItemType - MeleeWeapon */
     , (804004,   3,         39) /* PaletteTemplate - Red */
     , (804004,   5,        500) /* EncumbranceVal */
     , (804004,   8,         90) /* Mass */
     , (804004,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (804004,  16,          1) /* ItemUseable - No */
     , (804004,  19,    3500000) /* Value */
     , (804004,  33,          1) /* Bonded - Bonded */
     , (804004,  44,        600) /* Damage */
     , (804004,  45,       1024) /* DamageType - Pierce */
     , (804004,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (804004,  47,        160) /* AttackType - Thrust */
     , (804004,  48,         45) /* WeaponSkill - LightWeapons */
     , (804004,  49,         50) /* WeaponTime */
     , (804004,  51,          1) /* CombatUse - Melee */
     , (804004,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804004, 106,        999) /* ItemSpellcraft */
     , (804004, 107,       2200) /* ItemCurMana */
     , (804004, 108,       2200) /* ItemMaxMana */
     , (804004, 109,          0) /* ItemDifficulty */
     , (804004, 114,          1) /* Attuned - Attuned */
     , (804004, 124,          2) /* Version */
     , (804004, 151,          2) /* HookType - Wall */
	 , (804004, 158,          7) /* WieldRequirements - Level */
     , (804004, 160,       10000) /* WieldDifficulty */
     , (804004, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (804004, 292,          5) /* Cleaving */
     , (804004, 353,          5) /* WeaponType - Sword */
	 , (804004, 370,         350) /* Damage */
	 , (804004, 371,         350) /* Damage Resist */
	 , (804004, 374,         350) /* Critical Damage */
	 , (804004, 375,         350) /* Critical Damage Resist */
	 , (804004, 376,         350) /* Heal Boost */
	 , (804004, 379,         500) /* Vitality */
	 , (804004, 9041,          4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804004,  11, True ) /* IgnoreCollisions */
     , (804004,  13, True ) /* Ethereal */
     , (804004,  14, True ) /* GravityStatus */
     , (804004,  15, True ) /* LightsStatus */
	 , (804004,  19, True ) /* Attackable */
     , (804004,  22, True ) /* Inscribable */
     , (804004,  65, True ) /* IgnoreMagicResist */
     , (804004,  66, True ) /* IgnoreMagicArmor */
     , (804004,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804004,   5,   -0.05) /* ManaRate */
     , (804004,  21,       0) /* WeaponLength */
     , (804004,  22,     0.2) /* DamageVariance */
     , (804004,  26,       0) /* MaximumVelocity */
     , (804004,  29,    1.50) /* WeaponDefense */
     , (804004,  39,     1.1) /* DefaultScale */
     , (804004,  62,    1.50) /* WeaponOffense */
     , (804004,  63,    0.50) /* DamageMod */
     , (804004, 136,   0.001) /* CriticalMultiplier */
     , (804004, 147,    0.10) /* CriticalFrequency */
     , (804004, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804004,   1, 'Tradewind Spear of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804004,   1,   33557205) /* Setup */
     , (804004,   3,  536870932) /* SoundTable */
     , (804004,   6,   67111919) /* PaletteBase */
     , (804004,   7,  268436199) /* ClothingBase */
     , (804004,   8,  100671747) /* Icon */
     , (804004,  22,  872415275) /* PhysicsEffectTable */
     , (804004,  30,         87) /* PhysicsScript - BreatheLightning */
     , (804004,  52,  100667892) /* IconUnderlay */
	 , (804004,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (804004,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (804004,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (804004,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (804004,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (804004,  6089,      2)  /* Legendary Blood Thirst */
     , (804004,  6091,      2)  /* Legendary Defender */
     , (804004,  3699,      2)  /* Prodigal Defender */
     , (804004,  3688,      2)  /* Prodigal Blood Drinker */;
