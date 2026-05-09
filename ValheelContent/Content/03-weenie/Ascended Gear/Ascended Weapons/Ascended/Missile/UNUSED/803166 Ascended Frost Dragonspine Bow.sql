DELETE FROM `weenie` WHERE `class_Id` = 803166;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803166, 'Ascended Frost Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803166,   1,        256) /* ItemType - MissileWeapon */
     , (803166,   3,          4) /* PaletteTemplate - Brown */
     , (803166,   5,        900) /* EncumbranceVal */
     , (803166,   8,         90) /* Mass */
     , (803166,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803166,  16,          1) /* ItemUseable - No */
     , (803166,  18,          0) /* UiEffects - Piercing */
     , (803166,  19,     150000) /* Value */
     , (803166,  44,          0) /* Damage */
     , (803166,  45,          9) /* DamageType - Pierce */
     , (803166,  46,         16) /* DefaultCombatStyle - Bow */
     , (803166,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803166,  49,         70) /* WeaponTime */
     , (803166,  50,          1) /* AmmoType - Arrow */
     , (803166,  51,          2) /* CombatUse - Missile */
     , (803166,  52,          2) /* ParentLocation - LeftHand */
     , (803166,  53,          3) /* PlacementPosition - LeftHand */
     , (803166,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803166, 106,        999) /* ItemSpellcraft */
     , (803166, 107,       3200) /* ItemCurMana */
     , (803166, 108,       3200) /* ItemMaxMana */
     , (803166, 109,          0) /* ItemDifficulty */
     , (803166, 110,          0) /* ItemAllegianceRankLimit */
     , (803166, 151,          2) /* HookType - Wall */
	 , (803166, 158,          7) /* WieldRequirements - Level */
     , (803166, 160,       3000) /* WieldDifficulty */
     , (803166, 169,  118162702) /* TsysMutationData */
     , (803166, 179,          128) /* ImbuedEffect - PierceRending */
     /*, (803166, 204,          5) /* ElementalDamageBonus */
     , (803166, 292,          3) /* Cleaving */
     , (803166, 353,          8) /* WeaponType - Bow */
	 , (803166, 370,         135) /* Damage */
	 , (803166, 371,         135) /* Damage Resist */
	 , (803166, 374,         135) /* Critical Damage */
	 , (803166, 375,         135) /* Critical Damage Resist */
	 , (803166, 376,         135) /* Heal Boost */
	 , (803166, 379,         135) /* Vitality */
	 , (803166, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803166,  11, True ) /* IgnoreCollisions */
     , (803166,  13, True ) /* Ethereal */
     , (803166,  14, True ) /* GravityStatus */
     , (803166,  15, True ) /* LightsStatus */
     , (803166,  19, True ) /* Attackable */
     , (803166,  22, True ) /* Inscribable */
     , (803166,  65, True ) /* IgnoreMagicResist */
     , (803166,  66, True ) /* IgnoreMagicArmor */
     , (803166,  91, False) /* Retained */
     , (803166, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803166,   5,  -0.033) /* ManaRate */
     , (803166,  12,    0.66) /* Shade */
     , (803166,  21,       0) /* WeaponLength */
     , (803166,  22,       0) /* DamageVariance */
     , (803166,  26,    27.3) /* MaximumVelocity */
     , (803166,  29,    1.50) /* WeaponDefense */
     , (803166,  39,     1.3) /* DefaultScale */
     , (803166,  62,    1.50) /* WeaponOffense */
     , (803166,  63,    1.69) /* DamageMod */
     , (803166, 110,    1.67) /* BulkMod */
     , (803166, 111,    0.15) /* SizeMod */
     , (803166, 136,    0.0) /* CriticalMultiplier */
     , (803166, 147,    0.0) /* CriticalFrequency */
     , (803166, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803166,   1, 'Ascended Frost Dragonspine Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803166,   1,   33559414) /* Setup */
     , (803166,   3,  536870932) /* SoundTable */
     , (803166,   6,   67111919) /* PaletteBase */
     , (803166,   8,  100686812) /* Icon */
     , (803166,  22,  872415275) /* PhysicsEffectTable */
     , (803166,  36,  234881042) /* MutateFilter */
     , (803166,  46,  939524146) /* TsysMutationFilter */
     , (803166,  52,  100676435) /* IconUnderlay */
	 , (803166,  55,       4447) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803166,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803166,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803166,  6089,      2)  /* Legendary Blood Thirst */
     , (803166,  6091,      2)  /* Legendary Defender */
     , (803166,  3699,      2)  /* Prodigal Defender */
     , (803166,  3739,      2)  /* Prodigal Swift Killer */
     , (803166,  3688,      2)  /* Prodigal Blood Drinker */;
