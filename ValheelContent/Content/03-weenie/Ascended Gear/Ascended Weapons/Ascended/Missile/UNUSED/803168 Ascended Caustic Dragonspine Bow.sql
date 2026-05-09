DELETE FROM `weenie` WHERE `class_Id` = 803168;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803168, 'Ascended Caustic Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803168,   1,        256) /* ItemType - MissileWeapon */
     , (803168,   3,          4) /* PaletteTemplate - Brown */
     , (803168,   5,        900) /* EncumbranceVal */
     , (803168,   8,         90) /* Mass */
     , (803168,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803168,  16,          1) /* ItemUseable - No */
     , (803168,  18,          0) /* UiEffects - Piercing */
     , (803168,  19,     150000) /* Value */
     , (803168,  44,          0) /* Damage */
     , (803168,  45,          33) /* DamageType - Pierce */
     , (803168,  46,         16) /* DefaultCombatStyle - Bow */
     , (803168,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803168,  49,         70) /* WeaponTime */
     , (803168,  50,          1) /* AmmoType - Arrow */
     , (803168,  51,          2) /* CombatUse - Missile */
     , (803168,  52,          2) /* ParentLocation - LeftHand */
     , (803168,  53,          3) /* PlacementPosition - LeftHand */
     , (803168,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803168, 106,        999) /* ItemSpellcraft */
     , (803168, 107,       3200) /* ItemCurMana */
     , (803168, 108,       3200) /* ItemMaxMana */
     , (803168, 109,          0) /* ItemDifficulty */
     , (803168, 110,          0) /* ItemAllegianceRankLimit */
     , (803168, 151,          2) /* HookType - Wall */
	 , (803168, 158,          7) /* WieldRequirements - Level */
     , (803168, 160,       3000) /* WieldDifficulty */
     , (803168, 169,  118162702) /* TsysMutationData */
     , (803168, 179,          64) /* ImbuedEffect - PierceRending */
     /*, (803168, 204,          5) /* ElementalDamageBonus */
     , (803168, 292,          3) /* Cleaving */
     , (803168, 353,          8) /* WeaponType - Bow */
	 , (803168, 370,         135) /* Damage */
	 , (803168, 371,         135) /* Damage Resist */
	 , (803168, 374,         135) /* Critical Damage */
	 , (803168, 375,         135) /* Critical Damage Resist */
	 , (803168, 376,         135) /* Heal Boost */
	 , (803168, 379,         135) /* Vitality */
	 , (803168, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803168,  11, True ) /* IgnoreCollisions */
     , (803168,  13, True ) /* Ethereal */
     , (803168,  14, True ) /* GravityStatus */
     , (803168,  15, True ) /* LightsStatus */
     , (803168,  19, True ) /* Attackable */
     , (803168,  22, True ) /* Inscribable */
     , (803168,  65, True ) /* IgnoreMagicResist */
     , (803168,  66, True ) /* IgnoreMagicArmor */
     , (803168,  91, False) /* Retained */
     , (803168, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803168,   5,  -0.033) /* ManaRate */
     , (803168,  12,    0.66) /* Shade */
     , (803168,  21,       0) /* WeaponLength */
     , (803168,  22,       0) /* DamageVariance */
     , (803168,  26,    27.3) /* MaximumVelocity */
     , (803168,  29,    1.50) /* WeaponDefense */
     , (803168,  39,     1.3) /* DefaultScale */
     , (803168,  62,    1.50) /* WeaponOffense */
     , (803168,  63,    1.69) /* DamageMod */
     , (803168, 110,    1.67) /* BulkMod */
     , (803168, 111,    0.15) /* SizeMod */
     , (803168, 136,    0.0) /* CriticalMultiplier */
     , (803168, 147,    0.0) /* CriticalFrequency */
     , (803168, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803168,   1, 'Ascended Caustic Dragonspine Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803168,   1,   33559414) /* Setup */
     , (803168,   3,  536870932) /* SoundTable */
     , (803168,   6,   67111919) /* PaletteBase */
     , (803168,   8,  100686812) /* Icon */
     , (803168,  22,  872415275) /* PhysicsEffectTable */
     , (803168,  36,  234881042) /* MutateFilter */
     , (803168,  46,  939524146) /* TsysMutationFilter */
     , (803168,  52,  100676437) /* IconUnderlay */
	 , (803168,  55,       4433) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803168,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803168,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803168,  6089,      2)  /* Legendary Blood Thirst */
     , (803168,  6091,      2)  /* Legendary Defender */
     , (803168,  3699,      2)  /* Prodigal Defender */
     , (803168,  3739,      2)  /* Prodigal Swift Killer */
     , (803168,  3688,      2)  /* Prodigal Blood Drinker */;
