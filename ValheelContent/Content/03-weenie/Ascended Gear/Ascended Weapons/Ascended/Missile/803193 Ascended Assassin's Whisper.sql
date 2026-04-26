DELETE FROM `weenie` WHERE `class_Id` = 803193;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803193, 'Ascended Assassins Whisper', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803193,   1,        256) /* ItemType - MissileWeapon */
     , (803193,   3,          4) /* PaletteTemplate - Brown */
     , (803193,   5,        900) /* EncumbranceVal */
     , (803193,   8,         90) /* Mass */
     , (803193,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803193,  16,          1) /* ItemUseable - No */
     , (803193,  18,          0) /* UiEffects - Piercing */
     , (803193,  19,     750000) /* Value */
     , (803193,  33,          1) /* Bonded - Bonded */
     , (803193,  44,          0) /* Damage */
     , (803193,  45,       1024) /* DamageType - Pierce */
     , (803193,  46,         32) /* DefaultCombatStyle - Bow */
     , (803193,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803193,  49,         70) /* WeaponTime */
     , (803193,  50,          2) /* AmmoType - Arrow */
     , (803193,  51,          2) /* CombatUse - Missile */
     , (803193,  52,          2) /* ParentLocation - LeftHand */
     , (803193,  53,          3) /* PlacementPosition - LeftHand */
     , (803193,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803193, 106,        999) /* ItemSpellcraft */
     , (803193, 107,       3200) /* ItemCurMana */
     , (803193, 108,       3200) /* ItemMaxMana */
     , (803193, 109,          0) /* ItemDifficulty */
     , (803193, 114,          1) /* Attuned - Attuned */
     , (803193, 151,          2) /* HookType - Wall */
	 , (803193, 158,          7) /* WieldRequirements - Level */
     , (803193, 160,       3000) /* WieldDifficulty */
     , (803193, 169,  118162702) /* TsysMutationData */
     , (803193, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803193, 204,          30) /* ElementalDamageBonus */
     , (803193, 292,          5) /* Cleaving */
     , (803193, 353,          8) /* WeaponType - Bow */
	 , (803193, 370,         135) /* Damage */
	 , (803193, 371,         135) /* Damage Resist */
	 , (803193, 374,         135) /* Critical Damage */
	 , (803193, 375,         135) /* Critical Damage Resist */
	 , (803193, 376,         135) /* Heal Boost */
	 , (803193, 379,         135) /* Vitality */
	 , (803193, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803193,  11, True ) /* IgnoreCollisions */
     , (803193,  13, True ) /* Ethereal */
     , (803193,  14, True ) /* GravityStatus */
     , (803193,  15, True ) /* LightsStatus */
     , (803193,  19, True ) /* Attackable */
     , (803193,  22, True ) /* Inscribable */
     , (803193,  65, True ) /* IgnoreMagicResist */
     , (803193,  66, True ) /* IgnoreMagicArmor */
     , (803193,  91, False) /* Retained */
     , (803193, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803193,   5,  -0.033) /* ManaRate */
     , (803193,  12,    0.66) /* Shade */
     , (803193,  21,       0) /* WeaponLength */
     , (803193,  22,       0) /* DamageVariance */
     , (803193,  26,    27.3) /* MaximumVelocity */
     , (803193,  29,    1.50) /* WeaponDefense */
     , (803193,  39,     1.3) /* DefaultScale */
     , (803193,  62,    1.50) /* WeaponOffense */
     , (803193,  63,       2) /* DamageMod */
     , (803193, 110,    1.67) /* BulkMod */
     , (803193, 111,    0.15) /* SizeMod */
     , (803193, 136,   0.001) /* CriticalMultiplier */
     , (803193, 147,    0.10) /* CriticalFrequency */
     , (803193, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803193,   1, 'Ascended Assassin''s Whisper') /* Name */
     , (803193,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803193,   1,   33559373) /* Setup */
     , (803193,   3,  536870932) /* SoundTable */
     , (803193,   6,   67111919) /* PaletteBase */
     , (803193,   8,  100686729) /* Icon */
     , (803193,  22,  872415275) /* PhysicsEffectTable */
     , (803193,  36,  234881042) /* MutateFilter */
     , (803193,  46,  939524146) /* TsysMutationFilter */
     , (803193,  52,  100686604) /* IconUnderlay */
	 , (803193,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803193,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803193,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803193,  6089,      2)  /* Legendary Blood Thirst */
     , (803193,  6091,      2)  /* Legendary Defender */
     , (803193,  3699,      2)  /* Prodigal Defender */
     , (803193,  3739,      2)  /* Prodigal Swift Killer */
     , (803193,  3688,      2)  /* Prodigal Blood Drinker */;
