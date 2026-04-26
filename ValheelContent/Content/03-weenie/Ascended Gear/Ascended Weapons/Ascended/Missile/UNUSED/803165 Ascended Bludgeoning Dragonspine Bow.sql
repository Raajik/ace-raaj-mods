DELETE FROM `weenie` WHERE `class_Id` = 803165;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803165, 'Ascended Bludgeoning Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803165,   1,        256) /* ItemType - MissileWeapon */
     , (803165,   3,          4) /* PaletteTemplate - Brown */
     , (803165,   5,        900) /* EncumbranceVal */
     , (803165,   8,         90) /* Mass */
     , (803165,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803165,  16,          1) /* ItemUseable - No */
     , (803165,  18,          0) /* UiEffects - Piercing */
     , (803165,  19,     150000) /* Value */
     , (803165,  44,          0) /* Damage */
     , (803165,  45,          5) /* DamageType - Pierce */
     , (803165,  46,         16) /* DefaultCombatStyle - Bow */
     , (803165,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803165,  49,         70) /* WeaponTime */
     , (803165,  50,          1) /* AmmoType - Arrow */
     , (803165,  51,          2) /* CombatUse - Missile */
     , (803165,  52,          2) /* ParentLocation - LeftHand */
     , (803165,  53,          3) /* PlacementPosition - LeftHand */
     , (803165,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803165, 106,        999) /* ItemSpellcraft */
     , (803165, 107,       3200) /* ItemCurMana */
     , (803165, 108,       3200) /* ItemMaxMana */
     , (803165, 109,          0) /* ItemDifficulty */
     , (803165, 110,          0) /* ItemAllegianceRankLimit */
     , (803165, 151,          2) /* HookType - Wall */
	 , (803165, 158,          7) /* WieldRequirements - Level */
     , (803165, 160,       3000) /* WieldDifficulty */
     , (803165, 169,  118162702) /* TsysMutationData */
     , (803165, 179,          32) /* ImbuedEffect - PierceRending */
     /*, (803165, 204,          5) /* ElementalDamageBonus */
     , (803165, 292,          3) /* Cleaving */
     , (803165, 353,          8) /* WeaponType - Bow */
	 , (803165, 370,         135) /* Damage */
	 , (803165, 371,         135) /* Damage Resist */
	 , (803165, 374,         135) /* Critical Damage */
	 , (803165, 375,         135) /* Critical Damage Resist */
	 , (803165, 376,         135) /* Heal Boost */
	 , (803165, 379,         135) /* Vitality */
	 , (803165, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803165,  11, True ) /* IgnoreCollisions */
     , (803165,  13, True ) /* Ethereal */
     , (803165,  14, True ) /* GravityStatus */
     , (803165,  15, True ) /* LightsStatus */
     , (803165,  19, True ) /* Attackable */
     , (803165,  22, True ) /* Inscribable */
     , (803165,  65, True ) /* IgnoreMagicResist */
     , (803165,  66, True ) /* IgnoreMagicArmor */
     , (803165,  91, False) /* Retained */
     , (803165, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803165,   5,  -0.033) /* ManaRate */
     , (803165,  12,    0.66) /* Shade */
     , (803165,  21,       0) /* WeaponLength */
     , (803165,  22,       0) /* DamageVariance */
     , (803165,  26,    27.3) /* MaximumVelocity */
     , (803165,  29,    1.50) /* WeaponDefense */
     , (803165,  39,     1.3) /* DefaultScale */
     , (803165,  62,    1.50) /* WeaponOffense */
     , (803165,  63,    1.69) /* DamageMod */
     , (803165, 110,    1.67) /* BulkMod */
     , (803165, 111,    0.15) /* SizeMod */
     , (803165, 136,    0.0) /* CriticalMultiplier */
     , (803165, 147,    0.0) /* CriticalFrequency */
     , (803165, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803165,   1, 'Ascended Bludgeoning Dragonspine Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803165,   1,   33559414) /* Setup */
     , (803165,   3,  536870932) /* SoundTable */
     , (803165,   6,   67111919) /* PaletteBase */
     , (803165,   8,  100686812) /* Icon */
     , (803165,  22,  872415275) /* PhysicsEffectTable */
     , (803165,  36,  234881042) /* MutateFilter */
     , (803165,  46,  939524146) /* TsysMutationFilter */
     , (803165,  52,  100676442) /* IconUnderlay */
	 , (803165,  55,       4455) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803165,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803165,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803165,  6089,      2)  /* Legendary Blood Thirst */
     , (803165,  6091,      2)  /* Legendary Defender */
     , (803165,  3699,      2)  /* Prodigal Defender */
     , (803165,  3739,      2)  /* Prodigal Swift Killer */
     , (803165,  3688,      2)  /* Prodigal Blood Drinker */;
