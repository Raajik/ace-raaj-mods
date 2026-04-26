DELETE FROM `weenie` WHERE `class_Id` = 803196;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803196, 'Perfect Ascended Guardian of Pwyll', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803196,   1,          1) /* ItemType - MeleeWeapon */
     , (803196,   5,        500) /* EncumbranceVal */
     , (803196,   8,         90) /* Mass */
     , (803196,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803196,  16,          1) /* ItemUseable - No */
     , (803196,  19,    3500000) /* Value */
     , (803196,  33,          1) /* Bonded - Bonded */
     , (803196,  44,        450) /* Damage */
     , (803196,  45,       1024) /* DamageType - Pierce */
     , (803196,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803196,  47,        160) /* AttackType - Thrust */
     , (803196,  48,         45) /* WeaponSkill - LightWeapons */
     , (803196,  49,         50) /* WeaponTime */
     , (803196,  51,          1) /* CombatUse - Melee */
     , (803196,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803196, 106,        999) /* ItemSpellcraft */
     , (803196, 107,       2200) /* ItemCurMana */
     , (803196, 108,       2200) /* ItemMaxMana */
     , (803196, 109,          0) /* ItemDifficulty */
     , (803196, 114,          1) /* Attuned - Attuned */
     , (803196, 124,          2) /* Version */
     , (803196, 151,          2) /* HookType - Wall */
	 , (803196, 158,          7) /* WieldRequirements - Level */
     , (803196, 160,       8000) /* WieldDifficulty */
     , (803196, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803196, 292,          5) /* Cleaving */
     , (803196, 353,          2) /* WeaponType - Sword */
	 , (803196, 370,         185) /* Damage */
	 , (803196, 371,         185) /* Damage Resist */
	 , (803196, 374,         185) /* Critical Damage */
	 , (803196, 375,         185) /* Critical Damage Resist */
	 , (803196, 376,         185) /* Heal Boost */
	 , (803196, 379,         185) /* Vitality */
	 , (803196, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803196,  11, True ) /* IgnoreCollisions */
     , (803196,  13, True ) /* Ethereal */
     , (803196,  14, True ) /* GravityStatus */
     , (803196,  15, True ) /* LightsStatus */
	 , (803196,  19, True ) /* Attackable */
     , (803196,  22, True ) /* Inscribable */
     , (803196,  65, True ) /* IgnoreMagicResist */
     , (803196,  66, True ) /* IgnoreMagicArmor */
     , (803196,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803196,   5,   -0.05) /* ManaRate */
     , (803196,  21,       0) /* WeaponLength */
     , (803196,  22,     0.2) /* DamageVariance */
     , (803196,  26,       0) /* MaximumVelocity */
     , (803196,  29,    1.50) /* WeaponDefense */
     , (803196,  39,     1.1) /* DefaultScale */
     , (803196,  62,    1.50) /* WeaponOffense */
     , (803196,  63,    0.35) /* DamageMod */
     , (803196, 136,   0.001) /* CriticalMultiplier */
     , (803196, 147,    0.10) /* CriticalFrequency */
     , (803196, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803196,   1, 'Perfect Ascended Guardian of Pwyll') /* Name */
     , (803196,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803196,   1,   33559396) /* Setup */
     , (803196,   3,  536870932) /* SoundTable */
     , (803196,   6,   67111919) /* PaletteBase */
     , (803196,   7,  268437600) /* ClothingBase */
     , (803196,   8,  100686775) /* Icon */
     , (803196,  22,  872415275) /* PhysicsEffectTable */
     , (803196,  36,  234881042) /* MutateFilter */
     , (803196,  46,  939524146) /* TsysMutationFilter */
     , (803196,  52,  100676442) /* IconUnderlay */
	 , (803196,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803196,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803196,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803196,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803196,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803196,  6089,      2)  /* Legendary Blood Thirst */
     , (803196,  6091,      2)  /* Legendary Defender */
     , (803196,  3699,      2)  /* Prodigal Defender */
     , (803196,  3688,      2)  /* Prodigal Blood Drinker */;
