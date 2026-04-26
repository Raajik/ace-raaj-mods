DELETE FROM `weenie` WHERE `class_Id` = 803154;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803154, 'Ascended Defiler of Milantos', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803154,   1,          1) /* ItemType - MeleeWeapon */
     , (803154,   5,        550) /* EncumbranceVal */
     , (803154,   8,         90) /* Mass */
     , (803154,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803154,  16,          1) /* ItemUseable - No */
     , (803154,  19,     750000) /* Value */
     , (803154,  33,          1) /* Bonded - Bonded */
     , (803154,  44,        350) /* Damage */
     , (803154,  45,       1024) /* DamageType - Force */
     , (803154,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803154,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803154,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (803154,  49,         40) /* WeaponTime */
     , (803154,  51,          1) /* CombatUse - Melee */
     , (803154,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803154, 106,        999) /* ItemSpellcraft */
     , (803154, 107,       3500) /* ItemCurMana */
     , (803154, 108,       3500) /* ItemMaxMana */
     , (803154, 109,          0) /* ItemDifficulty */
     , (803154, 114,          1) /* Attuned - Attuned */
     , (803154, 124,          2) /* Version */
     , (803154, 151,          2) /* HookType - Wall */
	 , (803154, 158,          7) /* WieldRequirements - Level */
     , (803154, 160,       3000) /* WieldDifficulty */
     , (803154, 179,         -2147483648) /* ImbuedEffect - Melee Defense */
     , (803154, 292,          5) /* Cleaving */
     , (803154, 353,          2) /* WeaponType - Sword */
	 , (803154, 370,         135) /* Damage */
	 , (803154, 371,         135) /* Damage Resist */
	 , (803154, 374,         135) /* Critical Damage */
	 , (803154, 375,         135) /* Critical Damage Resist */
	 , (803154, 376,         135) /* Heal Boost */
	 , (803154, 379,         135) /* Vitality */
	 , (803154, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803154,  11, True ) /* IgnoreCollisions */
     , (803154,  13, True ) /* Ethereal */
     , (803154,  14, True ) /* GravityStatus */
     , (803154,  15, True ) /* LightsStatus */
	 , (803154,  19, True ) /* Attackable */
     , (803154,  22, True ) /* Inscribable */
     , (803154,  65, True ) /* IgnoreMagicResist */
     , (803154,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803154,   5,   -0.05) /* ManaRate */
     , (803154,  21,       0) /* WeaponLength */
     , (803154,  22,     0.2) /* DamageVariance */
     , (803154,  26,       0) /* MaximumVelocity */
     , (803154,  29,    1.50) /* WeaponDefense */
     , (803154,  39,     1.1) /* DefaultScale */
     , (803154,  62,    1.50) /* WeaponOffense */
     , (803154,  63,    0.20) /* DamageMod */
     , (803154, 136,   0.001) /* CriticalMultiplier */
     , (803154, 147,    0.10) /* CriticalFrequency */
     , (803154, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803154,   1, 'Ascended Defiler of Milantos') /* Name */
     , (803154,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803154,   1,   33559396) /* Setup */
     , (803154,   3,  536870932) /* SoundTable */
     , (803154,   6,   67111919) /* PaletteBase */
     , (803154,   7,  268437600) /* ClothingBase */
     , (803154,   8,  100686769) /* Icon */
     , (803154,  22,  872415275) /* PhysicsEffectTable */
     , (803154,  36,  234881042) /* MutateFilter */
     , (803154,  46,  939524146) /* TsysMutationFilter */
     , (803154,  52,  100686604) /* IconUnderlay */
	 , (803154,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803154,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803154,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803154,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803154,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803154,  6089,      2)  /* Legendary Blood Thirst */
     , (803154,  3688,      2)  /* Prodigal Blood Drinker */
     , (803154,  6091,      2)  /* Prodigal Defender */;
