DELETE FROM `weenie` WHERE `class_Id` = 803201;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803201, 'Black Ore Ascended Guardian of Pwyll', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803201,   1,          1) /* ItemType - MeleeWeapon */
     , (803201,   5,        500) /* EncumbranceVal */
     , (803201,   8,         90) /* Mass */
     , (803201,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803201,  16,          1) /* ItemUseable - No */
     , (803201,  19,    3500000) /* Value */
     , (803201,  33,          1) /* Bonded - Bonded */
     , (803201,  44,        520) /* Damage */
     , (803201,  45,       1024) /* DamageType - Pierce */
     , (803201,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803201,  47,        160) /* AttackType - Thrust */
     , (803201,  48,         45) /* WeaponSkill - LightWeapons */
     , (803201,  49,         50) /* WeaponTime */
     , (803201,  51,          1) /* CombatUse - Melee */
     , (803201,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803201, 106,        999) /* ItemSpellcraft */
     , (803201, 107,       2200) /* ItemCurMana */
     , (803201, 108,       2200) /* ItemMaxMana */
     , (803201, 109,          0) /* ItemDifficulty */
     , (803201, 114,          1) /* Attuned - Attuned */
     , (803201, 124,          2) /* Version */
     , (803201, 151,          2) /* HookType - Wall */
	 , (803201, 158,          7) /* WieldRequirements - Level */
     , (803201, 160,       10000) /* WieldDifficulty */
     , (803201, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803201, 292,          5) /* Cleaving */
     , (803201, 353,          2) /* WeaponType - Sword */
	 , (803201, 370,         210) /* Damage */
	 , (803201, 371,         210) /* Damage Resist */
	 , (803201, 374,         210) /* Critical Damage */
	 , (803201, 375,         210) /* Critical Damage Resist */
	 , (803201, 376,         210) /* Heal Boost */
	 , (803201, 379,         210) /* Vitality */
	 , (803201, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803201,  11, True ) /* IgnoreCollisions */
     , (803201,  13, True ) /* Ethereal */
     , (803201,  14, True ) /* GravityStatus */
     , (803201,  15, True ) /* LightsStatus */
	 , (803201,  19, True ) /* Attackable */
     , (803201,  22, True ) /* Inscribable */
     , (803201,  65, True ) /* IgnoreMagicResist */
     , (803201,  66, True ) /* IgnoreMagicArmor */
     , (803201,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803201,   5,   -0.05) /* ManaRate */
     , (803201,  21,       0) /* WeaponLength */
     , (803201,  22,     0.2) /* DamageVariance */
     , (803201,  26,       0) /* MaximumVelocity */
     , (803201,  29,    1.50) /* WeaponDefense */
     , (803201,  39,     1.1) /* DefaultScale */
     , (803201,  62,    1.50) /* WeaponOffense */
     , (803201,  63,    0.50) /* DamageMod */
     , (803201, 136,   0.001) /* CriticalMultiplier */
     , (803201, 147,    0.10) /* CriticalFrequency */
     , (803201, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803201,   1, 'Black Ore Ascended Guardian of Pwyll') /* Name */
     , (803201,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803201,   1,   33559396) /* Setup */
     , (803201,   3,  536870932) /* SoundTable */
     , (803201,   6,   67111919) /* PaletteBase */
     , (803201,   7,  268437600) /* ClothingBase */
     , (803201,   8,  100686775) /* Icon */
     , (803201,  22,  872415275) /* PhysicsEffectTable */
     , (803201,  36,  234881042) /* MutateFilter */
     , (803201,  46,  939524146) /* TsysMutationFilter */
     , (803201,  52,  100687395) /* IconUnderlay */
	 , (803201,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803201,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803201,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803201,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803201,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803201,  6089,      2)  /* Legendary Blood Thirst */
     , (803201,  6091,      2)  /* Legendary Defender */
     , (803201,  3699,      2)  /* Prodigal Defender */
     , (803201,  3688,      2)  /* Prodigal Blood Drinker */;
