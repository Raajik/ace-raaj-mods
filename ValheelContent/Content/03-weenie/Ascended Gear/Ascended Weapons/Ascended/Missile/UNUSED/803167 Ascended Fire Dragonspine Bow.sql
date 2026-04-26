DELETE FROM `weenie` WHERE `class_Id` = 803167;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803167, 'Ascended Fire Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803167,   1,        256) /* ItemType - MissileWeapon */
     , (803167,   3,          4) /* PaletteTemplate - Brown */
     , (803167,   5,        900) /* EncumbranceVal */
     , (803167,   8,         90) /* Mass */
     , (803167,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803167,  16,          1) /* ItemUseable - No */
     , (803167,  18,          0) /* UiEffects - Piercing */
     , (803167,  19,     150000) /* Value */
     , (803167,  44,          0) /* Damage */
     , (803167,  45,          17) /* DamageType - Pierce */
     , (803167,  46,         16) /* DefaultCombatStyle - Bow */
     , (803167,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803167,  49,         70) /* WeaponTime */
     , (803167,  50,          1) /* AmmoType - Arrow */
     , (803167,  51,          2) /* CombatUse - Missile */
     , (803167,  52,          2) /* ParentLocation - LeftHand */
     , (803167,  53,          3) /* PlacementPosition - LeftHand */
     , (803167,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803167, 106,        999) /* ItemSpellcraft */
     , (803167, 107,       3200) /* ItemCurMana */
     , (803167, 108,       3200) /* ItemMaxMana */
     , (803167, 109,          0) /* ItemDifficulty */
     , (803167, 110,          0) /* ItemAllegianceRankLimit */
     , (803167, 151,          2) /* HookType - Wall */
	 , (803167, 158,          7) /* WieldRequirements - Level */
     , (803167, 160,       3000) /* WieldDifficulty */
     , (803167, 169,  118162702) /* TsysMutationData */
     , (803167, 179,          512) /* ImbuedEffect - PierceRending */
     /*, (803167, 204,          5) /* ElementalDamageBonus */
     , (803167, 292,          3) /* Cleaving */
     , (803167, 353,          8) /* WeaponType - Bow */
	 , (803167, 370,         135) /* Damage */
	 , (803167, 371,         135) /* Damage Resist */
	 , (803167, 374,         135) /* Critical Damage */
	 , (803167, 375,         135) /* Critical Damage Resist */
	 , (803167, 376,         135) /* Heal Boost */
	 , (803167, 379,         135) /* Vitality */
	 , (803167, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803167,  11, True ) /* IgnoreCollisions */
     , (803167,  13, True ) /* Ethereal */
     , (803167,  14, True ) /* GravityStatus */
     , (803167,  15, True ) /* LightsStatus */
     , (803167,  19, True ) /* Attackable */
     , (803167,  22, True ) /* Inscribable */
     , (803167,  65, True ) /* IgnoreMagicResist */
     , (803167,  66, True ) /* IgnoreMagicArmor */
     , (803167,  91, False) /* Retained */
     , (803167, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803167,   5,  -0.033) /* ManaRate */
     , (803167,  12,    0.66) /* Shade */
     , (803167,  21,       0) /* WeaponLength */
     , (803167,  22,       0) /* DamageVariance */
     , (803167,  26,    27.3) /* MaximumVelocity */
     , (803167,  29,    1.50) /* WeaponDefense */
     , (803167,  39,     1.3) /* DefaultScale */
     , (803167,  62,    1.50) /* WeaponOffense */
     , (803167,  63,    1.69) /* DamageMod */
     , (803167, 110,    1.67) /* BulkMod */
     , (803167, 111,    0.15) /* SizeMod */
     , (803167, 136,    0.0) /* CriticalMultiplier */
     , (803167, 147,    0.0) /* CriticalFrequency */
     , (803167, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803167,   1, 'Ascended Fire Dragonspine Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803167,   1,   33559414) /* Setup */
     , (803167,   3,  536870932) /* SoundTable */
     , (803167,   6,   67111919) /* PaletteBase */
     , (803167,   8,  100686812) /* Icon */
     , (803167,  22,  872415275) /* PhysicsEffectTable */
     , (803167,  36,  234881042) /* MutateFilter */
     , (803167,  46,  939524146) /* TsysMutationFilter */
     , (803167,  52,  100676441) /* IconUnderlay */
	 , (803167,  55,       4439) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803167,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803167,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803167,  6089,      2)  /* Legendary Blood Thirst */
     , (803167,  6091,      2)  /* Legendary Defender */
     , (803167,  3699,      2)  /* Prodigal Defender */
     , (803167,  3739,      2)  /* Prodigal Swift Killer */
     , (803167,  3688,      2)  /* Prodigal Blood Drinker */;
