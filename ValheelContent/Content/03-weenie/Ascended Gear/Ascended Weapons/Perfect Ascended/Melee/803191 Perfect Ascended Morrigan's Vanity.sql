DELETE FROM `weenie` WHERE `class_Id` = 803191;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803191, 'Perfect Ascended Piercing Morrigans Vanity', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803191,   1,          1) /* ItemType - MeleeWeapon */
     , (803191,   5,        550) /* EncumbranceVal */
     , (803191,   8,         90) /* Mass */
     , (803191,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803191,  16,          1) /* ItemUseable - No */
     , (803191,  19,    3500000) /* Value */
     , (803191,  33,          1) /* Bonded - Bonded */
     , (803191,  44,        450) /* Damage */
     , (803191,  45,       1024) /* DamageType - Force */
     , (803191,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803191,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803191,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (803191,  49,         40) /* WeaponTime */
     , (803191,  51,          1) /* CombatUse - Melee */
     , (803191,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803191, 106,        999) /* ItemSpellcraft */
     , (803191, 107,       3500) /* ItemCurMana */
     , (803191, 108,       3500) /* ItemMaxMana */
     , (803191, 109,          0) /* ItemDifficulty */
     , (803191, 114,          1) /* Attuned - Attuned */
     , (803191, 124,          2) /* Version */
     , (803191, 151,          2) /* HookType - Wall */
	 , (803191, 158,          7) /* WieldRequirements - Level */
     , (803191, 160,       8000) /* WieldDifficulty */
     , (803191, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803191, 292,          5) /* Cleaving */
     , (803191, 353,          2) /* WeaponType - Sword */
	 , (803191, 370,         185) /* Damage */
	 , (803191, 371,         185) /* Damage Resist */
	 , (803191, 374,         185) /* Critical Damage */
	 , (803191, 375,         185) /* Critical Damage Resist */
	 , (803191, 376,         185) /* Heal Boost */
	 , (803191, 379,         185) /* Vitality */
	 , (803191, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803191,  15, True ) /* LightsStatus */
	 , (803191,  22, True ) /* Inscribable */
     , (803191,  65, True ) /* IgnoreMagicResist */
     , (803191,  66, True ) /* IgnoreMagicArmor */
     , (803191,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803191,   5,   -0.05) /* ManaRate */
     , (803191,  21,       0) /* WeaponLength */
     , (803191,  22,     0.2) /* DamageVariance */
     , (803191,  26,       0) /* MaximumVelocity */
     , (803191,  29,    1.50) /* WeaponDefense */
     , (803191,  39,     1.1) /* DefaultScale */
     , (803191,  62,    1.50) /* WeaponOffense */
     , (803191,  63,    0.35) /* DamageMod */
     , (803191, 136,   0.001) /* CriticalMultiplier */
     , (803191, 147,    0.10) /* CriticalFrequency */
     , (803191, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803191,   1, 'Perfect Ascended Morrigan''s Vanity') /* Name */
     , (803191,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803191,   1,   33559397) /* Setup */
     , (803191,   3,  536870932) /* SoundTable */
     , (803191,   6,   67111919) /* PaletteBase */
     , (803191,   7,  268437600) /* ClothingBase */
     , (803191,   8,  100686777) /* Icon */
     , (803191,  22,  872415275) /* PhysicsEffectTable */
     , (803191,  36,  234881042) /* MutateFilter */
     , (803191,  46,  939524146) /* TsysMutationFilter */
     , (803191,  52,  100676442) /* IconUnderlay */
	 , (803191,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803191,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803191,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803191,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803191,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803191,  6089,      2)  /* Legendary Blood Thirst */
     , (803191,  6091,      2)  /* Legendary Defender */
     , (803191,  3699,      2)  /* Prodigal Defender */
     , (803191,  3688,      2)  /* Prodigal Blood Drinker */;
