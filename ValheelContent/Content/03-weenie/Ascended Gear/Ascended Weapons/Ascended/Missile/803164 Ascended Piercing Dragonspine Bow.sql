DELETE FROM `weenie` WHERE `class_Id` = 803164;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803164, 'Ascended Piercing Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803164,   1,        256) /* ItemType - MissileWeapon */
     , (803164,   3,          4) /* PaletteTemplate - Brown */
     , (803164,   5,        900) /* EncumbranceVal */
     , (803164,   8,         90) /* Mass */
     , (803164,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803164,  16,          1) /* ItemUseable - No */
     , (803164,  18,          0) /* UiEffects - Piercing */
     , (803164,  19,     750000) /* Value */
     , (803164,  33,          1) /* Bonded - Bonded */
     , (803164,  44,          0) /* Damage */
     , (803164,  45,       1024) /* DamageType - Pierce */
     , (803164,  46,         16) /* DefaultCombatStyle - Bow */
     , (803164,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803164,  49,         70) /* WeaponTime */
     , (803164,  50,          1) /* AmmoType - Arrow */
     , (803164,  51,          2) /* CombatUse - Missile */
     , (803164,  52,          2) /* ParentLocation - LeftHand */
     , (803164,  53,          3) /* PlacementPosition - LeftHand */
     , (803164,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803164, 106,        999) /* ItemSpellcraft */
     , (803164, 107,       3200) /* ItemCurMana */
     , (803164, 108,       3200) /* ItemMaxMana */
     , (803164, 109,          0) /* ItemDifficulty */
     , (803164, 114,          1) /* Attuned - Attuned */
     , (803164, 151,          2) /* HookType - Wall */
	 , (803164, 158,          7) /* WieldRequirements - Level */
     , (803164, 160,       3000) /* WieldDifficulty */
     , (803164, 169,  118162702) /* TsysMutationData */
     , (803164, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803164, 204,          25) /* ElementalDamageBonus */
     , (803164, 292,          5) /* Cleaving */
     , (803164, 353,          8) /* WeaponType - Bow */
	 , (803164, 370,         135) /* Damage */
	 , (803164, 371,         135) /* Damage Resist */
	 , (803164, 374,         135) /* Critical Damage */
	 , (803164, 375,         135) /* Critical Damage Resist */
	 , (803164, 376,         135) /* Heal Boost */
	 , (803164, 379,         135) /* Vitality */
	 , (803164, 9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803164,  11, True ) /* IgnoreCollisions */
     , (803164,  13, True ) /* Ethereal */
     , (803164,  14, True ) /* GravityStatus */
     , (803164,  15, True ) /* LightsStatus */
     , (803164,  19, True ) /* Attackable */
     , (803164,  22, True ) /* Inscribable */
     , (803164,  65, True ) /* IgnoreMagicResist */
     , (803164,  66, True ) /* IgnoreMagicArmor */
     , (803164,  91, False) /* Retained */
     , (803164, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803164,   5,  -0.033) /* ManaRate */
     , (803164,  12,    0.66) /* Shade */
     , (803164,  21,       0) /* WeaponLength */
     , (803164,  22,       0) /* DamageVariance */
     , (803164,  26,    27.3) /* MaximumVelocity */
     , (803164,  29,    1.50) /* WeaponDefense */
     , (803164,  39,     1.3) /* DefaultScale */
     , (803164,  62,    1.50) /* WeaponOffense */
     , (803164,  63,       2) /* DamageMod */
     , (803164, 110,    1.67) /* BulkMod */
     , (803164, 111,    0.15) /* SizeMod */
     , (803164, 136,   0.001) /* CriticalMultiplier */
     , (803164, 147,    0.10) /* CriticalFrequency */
     , (803164, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803164,   1, 'Ascended Dragonspine Bow') /* Name */
     , (803164,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803164,   1,   33559414) /* Setup */
     , (803164,   3,  536870932) /* SoundTable */
     , (803164,   6,   67111919) /* PaletteBase */
     , (803164,   8,  100686812) /* Icon */
     , (803164,  22,  872415275) /* PhysicsEffectTable */
     , (803164,  36,  234881042) /* MutateFilter */
     , (803164,  46,  939524146) /* TsysMutationFilter */
     , (803164,  52,  100686604) /* IconUnderlay */
	 , (803164,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803164,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803164,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803164,  6089,      2)  /* Legendary Blood Thirst */
     , (803164,  6091,      2)  /* Legendary Defender */
     , (803164,  3699,      2)  /* Prodigal Defender */
     , (803164,  3739,      2)  /* Prodigal Swift Killer */
     , (803164,  3688,      2)  /* Prodigal Blood Drinker */;
