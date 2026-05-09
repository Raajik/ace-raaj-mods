DELETE FROM `weenie` WHERE `class_Id` = 803169;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803169, 'Ascended Static Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803169,   1,        256) /* ItemType - MissileWeapon */
     , (803169,   3,          4) /* PaletteTemplate - Brown */
     , (803169,   5,        900) /* EncumbranceVal */
     , (803169,   8,         90) /* Mass */
     , (803169,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803169,  16,          1) /* ItemUseable - No */
     , (803169,  18,          0) /* UiEffects - Piercing */
     , (803169,  19,     150000) /* Value */
     , (803169,  44,          0) /* Damage */
     , (803169,  45,          65) /* DamageType - Pierce */
     , (803169,  46,         16) /* DefaultCombatStyle - Bow */
     , (803169,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803169,  49,         70) /* WeaponTime */
     , (803169,  50,          1) /* AmmoType - Arrow */
     , (803169,  51,          2) /* CombatUse - Missile */
     , (803169,  52,          2) /* ParentLocation - LeftHand */
     , (803169,  53,          3) /* PlacementPosition - LeftHand */
     , (803169,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803169, 106,        999) /* ItemSpellcraft */
     , (803169, 107,       3200) /* ItemCurMana */
     , (803169, 108,       3200) /* ItemMaxMana */
     , (803169, 109,          0) /* ItemDifficulty */
     , (803169, 110,          0) /* ItemAllegianceRankLimit */
     , (803169, 151,          2) /* HookType - Wall */
	 , (803169, 158,          7) /* WieldRequirements - Level */
     , (803169, 160,       3000) /* WieldDifficulty */
     , (803169, 169,  118162702) /* TsysMutationData */
     , (803169, 179,          256) /* ImbuedEffect - PierceRending */
     /*, (803169, 204,          5) /* ElementalDamageBonus */
     , (803169, 292,          3) /* Cleaving */
     , (803169, 353,          32) /* WeaponType - Bow */
	 , (803169, 370,         135) /* Damage */
	 , (803169, 371,         135) /* Damage Resist */
	 , (803169, 374,         135) /* Critical Damage */
	 , (803169, 375,         135) /* Critical Damage Resist */
	 , (803169, 376,         135) /* Heal Boost */
	 , (803169, 379,         135) /* Vitality */
	 , (803169, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803169,  11, True ) /* IgnoreCollisions */
     , (803169,  13, True ) /* Ethereal */
     , (803169,  14, True ) /* GravityStatus */
     , (803169,  15, True ) /* LightsStatus */
     , (803169,  19, True ) /* Attackable */
     , (803169,  22, True ) /* Inscribable */
     , (803169,  65, True ) /* IgnoreMagicResist */
     , (803169,  66, True ) /* IgnoreMagicArmor */
     , (803169,  91, False) /* Retained */
     , (803169, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803169,   5,  -0.033) /* ManaRate */
     , (803169,  12,    0.66) /* Shade */
     , (803169,  21,       0) /* WeaponLength */
     , (803169,  22,       0) /* DamageVariance */
     , (803169,  26,    27.3) /* MaximumVelocity */
     , (803169,  29,    1.50) /* WeaponDefense */
     , (803169,  39,     1.3) /* DefaultScale */
     , (803169,  62,    1.50) /* WeaponOffense */
     , (803169,  63,    1.69) /* DamageMod */
     , (803169, 110,    1.67) /* BulkMod */
     , (803169, 111,    0.15) /* SizeMod */
     , (803169, 136,    0.0) /* CriticalMultiplier */
     , (803169, 147,    0.0) /* CriticalFrequency */
     , (803169, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803169,   1, 'Ascended Static Dragonspine Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803169,   1,   33559414) /* Setup */
     , (803169,   3,  536870932) /* SoundTable */
     , (803169,   6,   67111919) /* PaletteBase */
     , (803169,   8,  100686812) /* Icon */
     , (803169,  22,  872415275) /* PhysicsEffectTable */
     , (803169,  36,  234881042) /* MutateFilter */
     , (803169,  46,  939524146) /* TsysMutationFilter */
     , (803169,  52,  100676436) /* IconUnderlay */
	 , (803169,  55,       4451) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803169,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803169,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803169,  6089,      2)  /* Legendary Blood Thirst */
     , (803169,  6091,      2)  /* Legendary Defender */
     , (803169,  3699,      2)  /* Prodigal Defender */
     , (803169,  3739,      2)  /* Prodigal Swift Killer */
     , (803169,  3688,      2)  /* Prodigal Blood Drinker */;
