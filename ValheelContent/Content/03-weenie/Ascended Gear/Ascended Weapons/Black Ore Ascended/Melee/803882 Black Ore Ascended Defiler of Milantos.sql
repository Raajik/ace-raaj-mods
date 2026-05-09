DELETE FROM `weenie` WHERE `class_Id` = 803882;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803882, 'Black Ore Ascended Defiler of Milantos', 6, '2023-06-05 00:31:03') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803882,   1,          1) /* ItemType - MeleeWeapon */
     , (803882,   5,        550) /* EncumbranceVal */
     , (803882,   8,         90) /* Mass */
     , (803882,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (803882,  16,          1) /* ItemUseable - No */
     , (803882,  19,    3500000) /* Value */
     , (803882,  33,          1) /* Bonded - Bonded */
     , (803882,  44,        500) /* Damage */
     , (803882,  45,       1024) /* DamageType - Force */
     , (803882,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (803882,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803882,  48,         46) /* WeaponSkill - HeavyWeapons */
     , (803882,  49,         40) /* WeaponTime */
     , (803882,  51,          1) /* CombatUse - Melee */
     , (803882,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803882, 106,        999) /* ItemSpellcraft */
     , (803882, 107,       3500) /* ItemCurMana */
     , (803882, 108,       3500) /* ItemMaxMana */
     , (803882, 109,          0) /* ItemDifficulty */
     , (803882, 114,          1) /* Attuned - Attuned */
     , (803882, 124,          2) /* Version */
     , (803882, 151,          2) /* HookType - Wall */
	 , (803882, 158,          7) /* WieldRequirements - Level */
     , (803882, 160,       10000) /* WieldDifficulty */
     , (803882, 169,  101254146) /* TsysMutationData */
     , (803882, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803882, 292,          5) /* Cleaving */
     , (803882, 353,          2) /* WeaponType - Sword */
	 , (803882, 370,         210) /* Damage */
	 , (803882, 371,         210) /* Damage Resist */
	 , (803882, 374,         210) /* Critical Damage */
	 , (803882, 375,         210) /* Critical Damage Resist */
	 , (803882, 376,         210) /* Heal Boost */
	 , (803882, 379,         210) /* Vitality */
	 , (803882, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803882,  11, True ) /* IgnoreCollisions */
     , (803882,  13, True ) /* Ethereal */
     , (803882,  14, True ) /* GravityStatus */
     , (803882,  15, True ) /* LightsStatus */
	 , (803882,  19, True ) /* Attackable */
     , (803882,  22, True ) /* Inscribable */
     , (803882,  65, True ) /* IgnoreMagicResist */
     , (803882,  66, True ) /* IgnoreMagicArmor */
     , (803882,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803882,   5,   -0.05) /* ManaRate */
     , (803882,  21,       0) /* WeaponLength */
     , (803882,  22,     0.2) /* DamageVariance */
     , (803882,  26,       0) /* MaximumVelocity */
     , (803882,  29,    1.50) /* WeaponDefense */
     , (803882,  39,     1.1) /* DefaultScale */
     , (803882,  62,    1.50) /* WeaponOffense */
     , (803882,  63,    0.20) /* DamageMod */
     , (803882, 136,   0.001) /* CriticalMultiplier */
     , (803882, 147,    0.10) /* CriticalFrequency */
     , (803882, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803882,   1, 'Black Ore Ascended Defiler of Milantos') /* Name */
     , (803882,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803882,   1,   33559396) /* Setup */
     , (803882,   3,  536870932) /* SoundTable */
     , (803882,   6,   67111919) /* PaletteBase */
     , (803882,   7,  268437600) /* ClothingBase */
     , (803882,   8,  100686769) /* Icon */
     , (803882,  22,  872415275) /* PhysicsEffectTable */
     , (803882,  36,  234881042) /* MutateFilter */
     , (803882,  46,  939524146) /* TsysMutationFilter */
     , (803882,  52,  100687395) /* IconUnderlay */
	 , (803882,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803882,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803882,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803882,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803882,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803882,  6089,      2)  /* Legendary Blood Thirst */
     , (803882,  3688,      2)  /* Prodigal Blood Drinker */
     , (803882,  6091,      2)  /* Prodigal Defender */;
