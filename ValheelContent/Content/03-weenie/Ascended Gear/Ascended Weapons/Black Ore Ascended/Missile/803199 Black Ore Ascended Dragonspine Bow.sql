DELETE FROM `weenie` WHERE `class_Id` = 803199;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803199, 'Black Ore Ascended Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803199,   1,        256) /* ItemType - MissileWeapon */
     , (803199,   3,          4) /* PaletteTemplate - Brown */
     , (803199,   5,        900) /* EncumbranceVal */
     , (803199,   8,         90) /* Mass */
     , (803199,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803199,  16,          1) /* ItemUseable - No */
     , (803199,  18,          0) /* UiEffects - Piercing */
     , (803199,  19,    3500000) /* Value */
     , (803199,  33,          1) /* Bonded - Bonded */
     , (803199,  44,          0) /* Damage */
     , (803199,  45,       1024) /* DamageType - Pierce */
     , (803199,  46,         16) /* DefaultCombatStyle - Bow */
     , (803199,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803199,  49,         70) /* WeaponTime */
     , (803199,  50,          1) /* AmmoType - Arrow */
     , (803199,  51,          2) /* CombatUse - Missile */
     , (803199,  52,          2) /* ParentLocation - LeftHand */
     , (803199,  53,          3) /* PlacementPosition - LeftHand */
     , (803199,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803199, 106,        999) /* ItemSpellcraft */
     , (803199, 107,       3200) /* ItemCurMana */
     , (803199, 108,       3200) /* ItemMaxMana */
     , (803199, 109,          0) /* ItemDifficulty */
     , (803199, 114,          1) /* Attuned - Attuned */
     , (803199, 151,          2) /* HookType - Wall */
	 , (803199, 158,          7) /* WieldRequirements - Level */
     , (803199, 160,       10000) /* WieldDifficulty */
     , (803199, 169,  118162702) /* TsysMutationData */
     , (803199, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803199, 204,          55) /* ElementalDamageBonus */
     , (803199, 292,          3) /* Cleaving */
     , (803199, 353,          8) /* WeaponType - Bow */
	 , (803199, 370,         210) /* Damage */
	 , (803199, 371,         210) /* Damage Resist */
	 , (803199, 374,         210) /* Critical Damage */
	 , (803199, 375,         210) /* Critical Damage Resist */
	 , (803199, 376,         210) /* Heal Boost */
	 , (803199, 379,         210) /* Vitality */
	 , (803199, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803199,  11, True ) /* IgnoreCollisions */
     , (803199,  13, True ) /* Ethereal */
     , (803199,  14, True ) /* GravityStatus */
     , (803199,  15, True ) /* LightsStatus */
     , (803199,  19, True ) /* Attackable */
     , (803199,  22, True ) /* Inscribable */
     , (803199,  65, True ) /* IgnoreMagicResist */
     , (803199,  66, True ) /* IgnoreMagicArmor */
     , (803199,  91, False) /* Retained */
     , (803199, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803199,   5,  -0.033) /* ManaRate */
     , (803199,  12,    0.66) /* Shade */
     , (803199,  21,       0) /* WeaponLength */
     , (803199,  22,       0) /* DamageVariance */
     , (803199,  26,    27.3) /* MaximumVelocity */
     , (803199,  29,    1.50) /* WeaponDefense */
     , (803199,  39,     1.3) /* DefaultScale */
     , (803199,  62,    1.50) /* WeaponOffense */
     , (803199,  63,     3.5) /* DamageMod */
     , (803199, 110,    1.67) /* BulkMod */
     , (803199, 111,    0.15) /* SizeMod */
     , (803199, 136,   0.001) /* CriticalMultiplier */
     , (803199, 147,    0.10) /* CriticalFrequency */
     , (803199, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803199,   1, 'Black Ore Ascended Dragonspine Bow') /* Name */
     , (803199,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803199,   1,   33559414) /* Setup */
     , (803199,   3,  536870932) /* SoundTable */
     , (803199,   6,   67111919) /* PaletteBase */
     , (803199,   8,  100686812) /* Icon */
     , (803199,  22,  872415275) /* PhysicsEffectTable */
     , (803199,  36,  234881042) /* MutateFilter */
     , (803199,  46,  939524146) /* TsysMutationFilter */
     , (803199,  52,  100687395) /* IconUnderlay */
	 , (803199,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803199,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803199,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803199,  6089,      2)  /* Legendary Blood Thirst */
     , (803199,  6091,      2)  /* Legendary Defender */
     , (803199,  3699,      2)  /* Prodigal Defender */
     , (803199,  3739,      2)  /* Prodigal Swift Killer */
     , (803199,  3688,      2)  /* Prodigal Blood Drinker */;
