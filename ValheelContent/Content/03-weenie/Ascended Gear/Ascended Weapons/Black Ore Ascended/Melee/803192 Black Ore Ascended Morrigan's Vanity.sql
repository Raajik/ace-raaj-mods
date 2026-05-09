DELETE FROM `weenie` WHERE `class_Id` = 803192;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803192, 'Blacke Ore Ascended Piercing Morrigans Vanity', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803192,   1,          1) /* ItemType - MeleeWeapon */
     , (803192,   5,        550) /* EncumbranceVal */
     , (803192,   8,         90) /* Mass */
     , (803192,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803192,  16,          1) /* ItemUseable - No */
     , (803192,  19,    3500000) /* Value */
     , (803192,  33,          1) /* Bonded - Bonded */
     , (803192,  44,        520) /* Damage */
     , (803192,  45,       1024) /* DamageType - Force */
     , (803192,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803192,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803192,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (803192,  49,         40) /* WeaponTime */
     , (803192,  51,          1) /* CombatUse - Melee */
     , (803192,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803192, 106,        999) /* ItemSpellcraft */
     , (803192, 107,       3500) /* ItemCurMana */
     , (803192, 108,       3500) /* ItemMaxMana */
     , (803192, 109,          0) /* ItemDifficulty */
     , (803192, 114,          1) /* Attuned - Attuned */
     , (803192, 124,          2) /* Version */
     , (803192, 151,          2) /* HookType - Wall */
	 , (803192, 158,          7) /* WieldRequirements - Level */
     , (803192, 160,       10000) /* WieldDifficulty */
     , (803192, 169,  101254146) /* TsysMutationData */
     , (803192, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803192, 292,          5) /* Cleaving */
     , (803192, 353,          2) /* WeaponType - Sword */
	 , (803192, 370,         210) /* Damage */
	 , (803192, 371,         210) /* Damage Resist */
	 , (803192, 374,         210) /* Critical Damage */
	 , (803192, 375,         210) /* Critical Damage Resist */
	 , (803192, 376,         210) /* Heal Boost */
	 , (803192, 379,         210) /* Vitality */
	 , (803192, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803192,  15, True ) /* LightsStatus */
	 , (803192,  22, True ) /* Inscribable */
     , (803192,  65, True ) /* IgnoreMagicResist */
     , (803192,  66, True ) /* IgnoreMagicArmor */
     , (803192,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803192,   5,   -0.05) /* ManaRate */
     , (803192,  21,       0) /* WeaponLength */
     , (803192,  22,     0.2) /* DamageVariance */
     , (803192,  26,       0) /* MaximumVelocity */
     , (803192,  29,    1.50) /* WeaponDefense */
     , (803192,  39,     1.1) /* DefaultScale */
     , (803192,  62,    1.50) /* WeaponOffense */
     , (803192,  63,    0.50) /* DamageMod */
     , (803192, 136,   0.001) /* CriticalMultiplier */
     , (803192, 147,    0.10) /* CriticalFrequency */
     , (803192, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803192,   1, 'Blacke Ore Ascended Morrigan''s Vanity') /* Name */
     , (803192,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803192,   1,   33559397) /* Setup */
     , (803192,   3,  536870932) /* SoundTable */
     , (803192,   6,   67111919) /* PaletteBase */
     , (803192,   7,  268437600) /* ClothingBase */
     , (803192,   8,  100686777) /* Icon */
     , (803192,  22,  872415275) /* PhysicsEffectTable */
     , (803192,  36,  234881042) /* MutateFilter */
     , (803192,  46,  939524146) /* TsysMutationFilter */
     , (803192,  52,  100687395) /* IconUnderlay */
	 , (803192,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803192,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803192,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803192,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803192,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803192,  6089,      2)  /* Legendary Blood Thirst */
     , (803192,  6091,      2)  /* Legendary Defender */
     , (803192,  3699,      2)  /* Prodigal Defender */
     , (803192,  3688,      2)  /* Prodigal Blood Drinker */;
