DELETE FROM `weenie` WHERE `class_Id` = 804005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804005, 'Tradewind Cestus of the Kings', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804005,   1,          1) /* ItemType - MeleeWeapon */
     , (804005,   3,         39) /* PaletteTemplate - Red */
     , (804005,   5,        500) /* EncumbranceVal */
     , (804005,   8,         90) /* Mass */
     , (804005,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (804005,  16,          1) /* ItemUseable - No */
     , (804005,  19,    3500000) /* Value */
     , (804005,  33,          1) /* Bonded - Bonded */
     , (804005,  44,        630) /* Damage */
     , (804005,  45,       1024) /* DamageType - Pierce */
     , (804005,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (804005,  47,          2) /* AttackType - Thrust */
     , (804005,  48,         45) /* WeaponSkill - LightWeapons */
     , (804005,  49,         50) /* WeaponTime */
     , (804005,  51,          1) /* CombatUse - Melee */
     , (804005,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804005, 106,        999) /* ItemSpellcraft */
     , (804005, 107,       2200) /* ItemCurMana */
     , (804005, 108,       2200) /* ItemMaxMana */
     , (804005, 109,          0) /* ItemDifficulty */
     , (804005, 114,          1) /* Attuned - Attuned */
     , (804005, 124,          2) /* Version */
     , (804005, 151,          2) /* HookType - Wall */
	 , (804005, 158,          7) /* WieldRequirements - Level */
     , (804005, 160,      10000) /* WieldDifficulty */
     , (804005, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (804005, 292,          5) /* Cleaving */
     , (804005, 353,          1) /* WeaponType - Sword */
	 , (804005, 370,        350) /* Damage */
	 , (804005, 371,        350) /* Damage Resist */
	 , (804005, 374,        350) /* Critical Damage */
	 , (804005, 375,        350) /* Critical Damage Resist */
	 , (804005, 376,        350) /* Heal Boost */
	 , (804005, 379,        500) /* Vitality */
	 , (804005, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804005,  11, True ) /* IgnoreCollisions */
     , (804005,  13, True ) /* Ethereal */
     , (804005,  14, True ) /* GravityStatus */
     , (804005,  15, True ) /* LightsStatus */
	 , (804005,  19, True ) /* Attackable */
     , (804005,  22, True ) /* Inscribable */
     , (804005,  65, True ) /* IgnoreMagicResist */
     , (804005,  66, True ) /* IgnoreMagicArmor */
     , (804005,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804005,   5,   -0.05) /* ManaRate */
     , (804005,  21,       0) /* WeaponLength */
     , (804005,  22,     0.2) /* DamageVariance */
     , (804005,  26,       0) /* MaximumVelocity */
     , (804005,  29,    1.50) /* WeaponDefense */
     , (804005,  39,     1.1) /* DefaultScale */
     , (804005,  62,    1.50) /* WeaponOffense */
     , (804005,  63,    0.50) /* DamageMod */
     , (804005, 136,   0.001) /* CriticalMultiplier */
     , (804005, 147,    0.10) /* CriticalFrequency */
     , (804005, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804005,   1, 'Tradewind Cestus of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804005,   1,   33558207) /* Setup */
     , (804005,   3,  536870932) /* SoundTable */
     , (804005,   8,  100671744) /* Icon */
     , (804005,  19,         88) /* ActivationAnimation */
     , (804005,  22,  872415275) /* PhysicsEffectTable */
     , (804005,  30,         88) /* PhysicsScript - Create */
     , (804005,  52,  100667892) /* IconUnderlay */
	 , (804005,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (804005,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (804005,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (804005,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (804005,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (804005,  6089,      2)  /* Legendary Blood Thirst */
     , (804005,  6091,      2)  /* Legendary Defender */
     , (804005,  3699,      2)  /* Prodigal Defender */
     , (804005,  3688,      2)  /* Prodigal Blood Drinker */;
