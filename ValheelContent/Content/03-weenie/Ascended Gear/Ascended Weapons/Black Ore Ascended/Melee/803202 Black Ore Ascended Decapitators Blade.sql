DELETE FROM `weenie` WHERE `class_Id` = 803202;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803202, 'Black Ore Ascended Decapitators Blade', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803202,   1,          1) /* ItemType - MeleeWeapon */
     , (803202,   5,        550) /* EncumbranceVal */
     , (803202,   8,         90) /* Mass */
     , (803202,   9,   33554432) /* ValidLocations - TwoHanded */
     , (803202,  16,          1) /* ItemUseable - No */
     , (803202,  19,    3500000) /* Value */
     , (803202,  33,          1) /* Bonded - Bonded */
     , (803202,  44,        500) /* Damage */
     , (803202,  45,       1024) /* DamageType - Slash */
     , (803202,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (803202,  47,          4) /* AttackType - DoubleSlash, DoubleThrust */
     , (803202,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (803202,  49,         50) /* WeaponTime */
     , (803202,  51,          5) /* CombatUse - TwoHanded */
     , (803202,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803202, 106,        999) /* ItemSpellcraft */
     , (803202, 107,       2000) /* ItemCurMana */
     , (803202, 108,       2000) /* ItemMaxMana */
     , (803202, 109,          0) /* ItemDifficulty */
     , (803202, 114,          1) /* Attuned - Attuned */
     , (803202, 151,          2) /* HookType - Wall */
	 , (803202, 158,          7) /* WieldRequirements - Level */
     , (803202, 160,       10000) /* WieldDifficulty */
     , (803202, 179,          -2147483648) /* ImbuedEffect - Melee Defense */
     , (803202, 292,          5) /* Cleaving */
     , (803202, 353,         11) /* WeaponType - TwoHanded */
	 , (803202, 370,         210) /* Damage */
	 , (803202, 371,         210) /* Damage Resist */
	 , (803202, 374,         210) /* Critical Damage */
	 , (803202, 375,         210) /* Critical Damage Resist */
	 , (803202, 376,         210) /* Heal Boost */
	 , (803202, 379,         210) /* Vitality */
	 , (803202, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803202,  15, True ) /* LightsStatus */
	 , (803202,  22, True ) /* Inscribable */
     , (803202,  65, True ) /* IgnoreMagicResist */
     , (803202,  66, True ) /* IgnoreMagicArmor */
     , (803202,  9014, True ) /* IsGunblade */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803202,   5,   -0.05) /* ManaRate */
     , (803202,  21,       0) /* WeaponLength */
     , (803202,  22,     0.2) /* DamageVariance */
     , (803202,  26,       0) /* MaximumVelocity */
     , (803202,  29,    1.50) /* WeaponDefense */
     , (803202,  39,     1.1) /* DefaultScale */
     , (803202,  62,    1.50) /* WeaponOffense */
     , (803202,  63,    0.50) /* DamageMod */
     , (803202, 136,   0.001) /* CriticalMultiplier */
     , (803202, 147,    0.10) /* CriticalFrequency */
     , (803202, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803202,   1, 'Black Ore Ascended Decapitator''s Blade') /* Name */
     , (803202,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803202,   1,   33561148) /* Setup */
     , (803202,   3,  536870932) /* SoundTable */
     , (803202,   6,   67111919) /* PaletteBase */
     , (803202,   7,  268437600) /* ClothingBase */
     , (803202,   8,  100691765) /* Icon */
     , (803202,  22,  872415275) /* PhysicsEffectTable */
     , (803202,  36,  234881042) /* MutateFilter */
     , (803202,  46,  939524146) /* TsysMutationFilter */
     , (803202,  52,  100687395) /* IconUnderlay */
	 , (803202,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803202,  4395,      2)  /* Aura of Incantation of Blood Drinker Self */
     , (803202,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803202,  4405,      2)  /* Aura of Incantation of Heart Seeker Self */
     , (803202,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803202,  6089,      2)  /* Legendary Blood Thirst */
     , (803202,  6091,      2)  /* Legendary Defender */
     , (803202,  3699,      2)  /* Prodigal Defender */
     , (803202,  3688,      2)  /* Prodigal Blood Drinker */;
