DELETE FROM `weenie` WHERE `class_Id` = 803176;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803176, 'Ascended Piercing Decapitators Blade', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803176,   1,          1) /* ItemType - MeleeWeapon */
     , (803176,   5,        550) /* EncumbranceVal */
     , (803176,   8,         90) /* Mass */
     , (803176,   9,   33554432) /* ValidLocations - TwoHanded */
     , (803176,  16,          1) /* ItemUseable - No */
     , (803176,  19,     750000) /* Value */
     , (803176,  33,          1) /* Bonded - Bonded */
     , (803176,  44,         360) /* Damage */
     , (803176,  45,       1024) /* DamageType - Slash */
     , (803176,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (803176,  47,          4) /* AttackType - DoubleSlash, DoubleThrust */
     , (803176,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (803176,  49,         50) /* WeaponTime */
     , (803176,  51,          5) /* CombatUse - TwoHanded */
     , (803176,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803176, 106,        999) /* ItemSpellcraft */
     , (803176, 107,       2000) /* ItemCurMana */
     , (803176, 108,       2000) /* ItemMaxMana */
     , (803176, 109,          0) /* ItemDifficulty */
     , (803176, 114,          1) /* Attuned - Attuned */
     , (803176, 151,          2) /* HookType - Wall */
	 , (803176, 158,          7) /* WieldRequirements - Level */
     , (803176, 160,       3000) /* WieldDifficulty */
     , (803176, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803176, 292,          5) /* Cleaving */
     , (803176, 353,         11) /* WeaponType - TwoHanded */
	 , (803176, 370,         135) /* Damage */
	 , (803176, 371,         135) /* Damage Resist */
	 , (803176, 374,         135) /* Critical Damage */
	 , (803176, 375,         135) /* Critical Damage Resist */
	 , (803176, 376,         135) /* Heal Boost */
	 , (803176, 379,         135) /* Vitality */
	 , (803176, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803176,  15, True ) /* LightsStatus */
	 , (803176,  22, True ) /* Inscribable */
     , (803176,  65, True ) /* IgnoreMagicResist */
     , (803176,  66, True ) /* IgnoreMagicArmor */
     , (803176,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803176,   5,   -0.05) /* ManaRate */
     , (803176,  21,       0) /* WeaponLength */
     , (803176,  22,     0.2) /* DamageVariance */
     , (803176,  26,       0) /* MaximumVelocity */
     , (803176,  29,    1.50) /* WeaponDefense */
     , (803176,  39,     1.1) /* DefaultScale */
     , (803176,  62,    1.50) /* WeaponOffense */
     , (803176,  63,    0.20) /* DamageMod */
     , (803176, 136,   0.001) /* CriticalMultiplier */
     , (803176, 147,    0.10) /* CriticalFrequency */
     , (803176, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803176,   1, 'Ascended Decapitator''s Blade') /* Name */
     , (803176,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803176,   1,   33561148) /* Setup */
     , (803176,   3,  536870932) /* SoundTable */
     , (803176,   6,   67111919) /* PaletteBase */
     , (803176,   7,  268437600) /* ClothingBase */
     , (803176,   8,  100691765) /* Icon */
     , (803176,  22,  872415275) /* PhysicsEffectTable */
     , (803176,  36,  234881042) /* MutateFilter */
     , (803176,  46,  939524146) /* TsysMutationFilter */
     , (803176,  52,  100686604) /* IconUnderlay */
	 , (803176,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803176,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803176,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803176,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803176,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803176,  6089,      2)  /* Legendary Blood Thirst */
     , (803176,  6091,      2)  /* Legendary Defender */
     , (803176,  3699,      2)  /* Prodigal Defender */
     , (803176,  3688,      2)  /* Prodigal Blood Drinker */;
