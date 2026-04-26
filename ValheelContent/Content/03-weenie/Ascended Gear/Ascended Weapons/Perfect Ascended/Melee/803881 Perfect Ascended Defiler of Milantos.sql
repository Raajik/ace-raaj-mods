DELETE FROM `weenie` WHERE `class_Id` = 803881;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803881, 'Perfect Ascended Defiler of Milantos', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803881,   1,          1) /* ItemType - MeleeWeapon */
     , (803881,   5,        550) /* EncumbranceVal */
     , (803881,   8,         90) /* Mass */
     , (803881,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803881,  16,          1) /* ItemUseable - No */
     , (803881,  19,    3500000) /* Value */
     , (803881,  33,          1) /* Bonded - Bonded */
     , (803881,  44,        430) /* Damage */
     , (803881,  45,       1024) /* DamageType - Force */
     , (803881,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803881,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803881,  48,         46) /* WeaponSkill - HeavyWeapons */
     , (803881,  49,         40) /* WeaponTime */
     , (803881,  51,          1) /* CombatUse - Melee */
     , (803881,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803881, 106,        999) /* ItemSpellcraft */
     , (803881, 107,       3500) /* ItemCurMana */
     , (803881, 108,       3500) /* ItemMaxMana */
     , (803881, 109,          0) /* ItemDifficulty */
     , (803881, 114,          1) /* Attuned - Attuned */
     , (803881, 124,          2) /* Version */
     , (803881, 151,          2) /* HookType - Wall */
	 , (803881, 158,          7) /* WieldRequirements - Level */
     , (803881, 160,       8000) /* WieldDifficulty */
     , (803881, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803881, 292,          5) /* Cleaving */
     , (803881, 353,          2) /* WeaponType - Sword */
	 , (803881, 370,         185) /* Damage */
	 , (803881, 371,         185) /* Damage Resist */
	 , (803881, 374,         185) /* Critical Damage */
	 , (803881, 375,         185) /* Critical Damage Resist */
	 , (803881, 376,         185) /* Heal Boost */
	 , (803881, 379,         185) /* Vitality */
	 , (803881, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803881,  11, True ) /* IgnoreCollisions */
     , (803881,  13, True ) /* Ethereal */
     , (803881,  14, True ) /* GravityStatus */
     , (803881,  15, True ) /* LightsStatus */
	 , (803881,  19, True ) /* Attackable */
     , (803881,  22, True ) /* Inscribable */
     , (803881,  65, True ) /* IgnoreMagicResist */
     , (803881,  66, True ) /* IgnoreMagicArmor */
     , (803881,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803881,   5,   -0.05) /* ManaRate */
     , (803881,  21,       0) /* WeaponLength */
     , (803881,  22,     0.2) /* DamageVariance */
     , (803881,  26,       0) /* MaximumVelocity */
     , (803881,  29,    1.50) /* WeaponDefense */
     , (803881,  39,     1.1) /* DefaultScale */
     , (803881,  62,    1.50) /* WeaponOffense */
     , (803881,  63,    0.20) /* DamageMod */
     , (803881, 136,   0.001) /* CriticalMultiplier */
     , (803881, 147,    0.10) /* CriticalFrequency */
     , (803881, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803881,   1, 'Perfect Ascended Defiler of Milantos') /* Name */
     , (803881,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803881,   1,   33559396) /* Setup */
     , (803881,   3,  536870932) /* SoundTable */
     , (803881,   6,   67111919) /* PaletteBase */
     , (803881,   7,  268437600) /* ClothingBase */
     , (803881,   8,  100686769) /* Icon */
     , (803881,  22,  872415275) /* PhysicsEffectTable */
     , (803881,  36,  234881042) /* MutateFilter */
     , (803881,  46,  939524146) /* TsysMutationFilter */
     , (803881,  52,  100676442) /* IconUnderlay */
	 , (803881,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803881,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803881,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803881,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803881,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803881,  6089,      2)  /* Legendary Blood Thirst */
     , (803881,  3688,      2)  /* Prodigal Blood Drinker */
     , (803881,  6091,      2)  /* Prodigal Defender */;
