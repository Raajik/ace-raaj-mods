DELETE FROM `weenie` WHERE `class_Id` = 803170;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803170, 'Ascended Piercing Guardian of Pwyll', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803170,   1,          1) /* ItemType - MeleeWeapon */
     , (803170,   5,        500) /* EncumbranceVal */
     , (803170,   8,         90) /* Mass */
     , (803170,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803170,  16,          1) /* ItemUseable - No */
     , (803170,  19,     750000) /* Value */
     , (803170,  33,          1) /* Bonded - Bonded */
     , (803170,  44,        380) /* Damage */
     , (803170,  45,       1024) /* DamageType - Pierce */
     , (803170,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803170,  47,        160) /* AttackType - Thrust */
     , (803170,  48,         45) /* WeaponSkill - LightWeapons */
     , (803170,  49,         50) /* WeaponTime */
     , (803170,  51,          1) /* CombatUse - Melee */
     , (803170,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803170, 106,        999) /* ItemSpellcraft */
     , (803170, 107,       2200) /* ItemCurMana */
     , (803170, 108,       2200) /* ItemMaxMana */
     , (803170, 109,          0) /* ItemDifficulty */
     , (803170, 114,          1) /* Attuned - Attuned */
     , (803170, 124,          2) /* Version */
     , (803170, 151,          2) /* HookType - Wall */
	 , (803170, 158,          7) /* WieldRequirements - Level */
     , (803170, 160,       3000) /* WieldDifficulty */
     , (803170, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803170, 292,          5) /* Cleaving */
     , (803170, 353,          2) /* WeaponType - Sword */
	 , (803170, 370,         135) /* Damage */
	 , (803170, 371,         135) /* Damage Resist */
	 , (803170, 374,         135) /* Critical Damage */
	 , (803170, 375,         135) /* Critical Damage Resist */
	 , (803170, 376,         135) /* Heal Boost */
	 , (803170, 379,         135) /* Vitality */
	 , (803170, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803170,  11, True ) /* IgnoreCollisions */
     , (803170,  13, True ) /* Ethereal */
     , (803170,  14, True ) /* GravityStatus */
     , (803170,  15, True ) /* LightsStatus */
	 , (803170,  19, True ) /* Attackable */
     , (803170,  22, True ) /* Inscribable */
     , (803170,  65, True ) /* IgnoreMagicResist */
     , (803170,  66, True ) /* IgnoreMagicArmor */
     , (803170,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803170,   5,   -0.05) /* ManaRate */
     , (803170,  21,       0) /* WeaponLength */
     , (803170,  22,     0.2) /* DamageVariance */
     , (803170,  26,       0) /* MaximumVelocity */
     , (803170,  29,    1.50) /* WeaponDefense */
     , (803170,  39,     1.1) /* DefaultScale */
     , (803170,  62,    1.50) /* WeaponOffense */
     , (803170,  63,    0.20) /* DamageMod */
     , (803170, 136,   0.001) /* CriticalMultiplier */
     , (803170, 147,    0.10) /* CriticalFrequency */
     , (803170, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803170,   1, 'Ascended Guardian of Pwyll') /* Name */
     , (803170,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803170,   1,   33559396) /* Setup */
     , (803170,   3,  536870932) /* SoundTable */
     , (803170,   6,   67111919) /* PaletteBase */
     , (803170,   7,  268437600) /* ClothingBase */
     , (803170,   8,  100686775) /* Icon */
     , (803170,  22,  872415275) /* PhysicsEffectTable */
     , (803170,  36,  234881042) /* MutateFilter */
     , (803170,  46,  939524146) /* TsysMutationFilter */
     , (803170,  52,  100686604) /* IconUnderlay */
	 , (803170,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803170,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803170,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803170,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803170,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803170,  6089,      2)  /* Legendary Blood Thirst */
     , (803170,  6091,      2)  /* Legendary Defender */
     , (803170,  3699,      2)  /* Prodigal Defender */
     , (803170,  3688,      2)  /* Prodigal Blood Drinker */;
