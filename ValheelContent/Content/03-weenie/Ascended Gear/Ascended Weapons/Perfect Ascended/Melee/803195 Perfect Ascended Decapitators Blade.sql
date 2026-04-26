DELETE FROM `weenie` WHERE `class_Id` = 803195;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803195, 'Perfect Ascended Decapitators Blade', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803195,   1,          1) /* ItemType - MeleeWeapon */
     , (803195,   5,        550) /* EncumbranceVal */
     , (803195,   8,         90) /* Mass */
     , (803195,   9,   33554432) /* ValidLocations - TwoHanded */
     , (803195,  16,          1) /* ItemUseable - No */
     , (803195,  19,    3500000) /* Value */
     , (803195,  33,          1) /* Bonded - Bonded */
     , (803195,  44,        440) /* Damage */
     , (803195,  45,       1024) /* DamageType - Slash/Pierce */
     , (803195,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (803195,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (803195,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (803195,  49,         50) /* WeaponTime */
     , (803195,  51,          5) /* CombatUse - TwoHanded */
     , (803195,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803195, 106,        999) /* ItemSpellcraft */
     , (803195, 107,       2000) /* ItemCurMana */
     , (803195, 108,       2000) /* ItemMaxMana */
     , (803195, 109,          0) /* ItemDifficulty */
     , (803195, 114,          1) /* Attuned - Attuned */
     , (803195, 151,          2) /* HookType - Wall */
	 , (803195, 158,          7) /* WieldRequirements - Level */
     , (803195, 160,       8000) /* WieldDifficulty */
     , (803195, 179,         -2147483648) /* ImbuedEffect - Melee Defense */
     , (803195, 292,          5) /* Cleaving */
     , (803195, 353,         11) /* WeaponType - TwoHanded */
	 , (803195, 370,         185) /* Damage */
	 , (803195, 371,         185) /* Damage Resist */
	 , (803195, 374,         185) /* Critical Damage */
	 , (803195, 375,         185) /* Critical Damage Resist */
	 , (803195, 376,         185) /* Heal Boost */
	 , (803195, 379,         185) /* Vitality */
	 , (803195, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803195,  15, True ) /* LightsStatus */
	 , (803195,  22, True ) /* Inscribable */
     , (803195,  65, True ) /* IgnoreMagicResist */
     , (803195,  66, True ) /* IgnoreMagicArmor */
     , (803195,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803195,   5,   -0.05) /* ManaRate */
     , (803195,  21,       0) /* WeaponLength */
     , (803195,  22,     0.2) /* DamageVariance */
     , (803195,  26,       0) /* MaximumVelocity */
     , (803195,  29,    1.50) /* WeaponDefense */
     , (803195,  39,     1.1) /* DefaultScale */
     , (803195,  62,    1.50) /* WeaponOffense */
     , (803195,  63,    0.35) /* DamageMod */
     , (803195, 136,   0.001) /* CriticalMultiplier */
     , (803195, 147,    0.10) /* CriticalFrequency */
     , (803195, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803195,   1, 'Perfect Ascended Decapitator''s Blade') /* Name */
     , (803195,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803195,   1,   33561148) /* Setup */
     , (803195,   3,  536870932) /* SoundTable */
     , (803195,   6,   67111919) /* PaletteBase */
     , (803195,   7,  268437600) /* ClothingBase */
     , (803195,   8,  100691765) /* Icon */
     , (803195,  22,  872415275) /* PhysicsEffectTable */
     , (803195,  36,  234881042) /* MutateFilter */
     , (803195,  46,  939524146) /* TsysMutationFilter */
     , (803195,  52,  100676442) /* IconUnderlay */
	 , (803195,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803195,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803195,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803195,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803195,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803195,  6089,      2)  /* Legendary Blood Thirst */
     , (803195,  6091,      2)  /* Legendary Defender */
     , (803195,  3699,      2)  /* Prodigal Defender */
     , (803195,  3688,      2)  /* Prodigal Blood Drinker */;
