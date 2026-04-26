DELETE FROM `weenie` WHERE `class_Id` = 803155;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803155, 'Ascended Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803155,   1,        256) /* ItemType - MissileWeapon */
     , (803155,   3,          4) /* PaletteTemplate - Brown */
     , (803155,   5,        900) /* EncumbranceVal */
     , (803155,   8,         90) /* Mass */
     , (803155,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803155,  16,          1) /* ItemUseable - No */
     , (803155,  18,          0) /* UiEffects - Piercing */
     , (803155,  19,     150000) /* Value */
     , (803155,  44,          0) /* Damage */
     , (803155,  45,          3) /* DamageType - Pierce */
     , (803155,  46,         16) /* DefaultCombatStyle - Bow */
     , (803155,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803155,  49,         70) /* WeaponTime */
     , (803155,  50,          1) /* AmmoType - Arrow */
     , (803155,  51,          2) /* CombatUse - Missile */
     , (803155,  52,          2) /* ParentLocation - LeftHand */
     , (803155,  53,          3) /* PlacementPosition - LeftHand */
     , (803155,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803155, 106,        999) /* ItemSpellcraft */
     , (803155, 107,       3200) /* ItemCurMana */
     , (803155, 108,       3200) /* ItemMaxMana */
     , (803155, 109,          0) /* ItemDifficulty */
     , (803155, 110,          0) /* ItemAllegianceRankLimit */
     , (803155, 151,          2) /* HookType - Wall */
	 , (803155, 158,          7) /* WieldRequirements - Level */
     , (803155, 160,       3000) /* WieldDifficulty */
     , (803155, 169,  118162702) /* TsysMutationData */
     , (803155, 179,          8) /* ImbuedEffect - PierceRending */
     /*, (803155, 204,          5) /* ElementalDamageBonus */
     , (803155, 292,          3) /* Cleaving */
     , (803155, 353,          8) /* WeaponType - Bow */
	 , (803155, 370,         135) /* Damage */
	 , (803155, 371,         135) /* Damage Resist */
	 , (803155, 374,         135) /* Critical Damage */
	 , (803155, 375,         135) /* Critical Damage Resist */
	 , (803155, 376,         135) /* Heal Boost */
	 , (803155, 379,         135) /* Vitality */
	 , (803155, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803155,  11, True ) /* IgnoreCollisions */
     , (803155,  13, True ) /* Ethereal */
     , (803155,  14, True ) /* GravityStatus */
     , (803155,  15, True ) /* LightsStatus */
     , (803155,  19, True ) /* Attackable */
     , (803155,  22, True ) /* Inscribable */
     , (803155,  65, True ) /* IgnoreMagicResist */
     , (803155,  66, True ) /* IgnoreMagicArmor */
     , (803155,  91, False) /* Retained */
     , (803155, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803155,   5,  -0.033) /* ManaRate */
     , (803155,  12,    0.66) /* Shade */
     , (803155,  21,       0) /* WeaponLength */
     , (803155,  22,       0) /* DamageVariance */
     , (803155,  26,    27.3) /* MaximumVelocity */
     , (803155,  29,    1.50) /* WeaponDefense */
     , (803155,  39,     1.3) /* DefaultScale */
     , (803155,  62,    1.50) /* WeaponOffense */
     , (803155,  63,    1.69) /* DamageMod */
     , (803155, 110,    1.67) /* BulkMod */
     , (803155, 111,    0.15) /* SizeMod */
     , (803155, 136,    0.0) /* CriticalMultiplier */
     , (803155, 147,    0.0) /* CriticalFrequency */
     , (803155, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803155,   1, 'Ascended Slashing Dragonspine Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803155,   1,   33559414) /* Setup */
     , (803155,   3,  536870932) /* SoundTable */
     , (803155,   6,   67111919) /* PaletteBase */
     , (803155,   8,  100686812) /* Icon */
     , (803155,  22,  872415275) /* PhysicsEffectTable */
     , (803155,  36,  234881042) /* MutateFilter */
     , (803155,  46,  939524146) /* TsysMutationFilter */
     , (803155,  52,  100676444) /* IconUnderlay */
	 , (803155,  55,       4457) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803155,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803155,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803155,  6089,      2)  /* Legendary Blood Thirst */
     , (803155,  6091,      2)  /* Legendary Defender */
     , (803155,  3699,      2)  /* Prodigal Defender */
     , (803155,  3739,      2)  /* Prodigal Swift Killer */
     , (803155,  3688,      2)  /* Prodigal Blood Drinker */;
