DELETE FROM `weenie` WHERE `class_Id` = 803197;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803197, 'Perfect Ascended Dragonspine Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803197,   1,        256) /* ItemType - MissileWeapon */
     , (803197,   3,          4) /* PaletteTemplate - Brown */
     , (803197,   5,        900) /* EncumbranceVal */
     , (803197,   8,         90) /* Mass */
     , (803197,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803197,  16,          1) /* ItemUseable - No */
     , (803197,  18,          0) /* UiEffects - Piercing */
     , (803197,  19,    3500000) /* Value */
     , (803197,  33,          1) /* Bonded - Bonded */
     , (803197,  44,          0) /* Damage */
     , (803197,  45,       1024) /* DamageType - Pierce */
     , (803197,  46,         16) /* DefaultCombatStyle - Bow */
     , (803197,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803197,  49,         70) /* WeaponTime */
     , (803197,  50,          1) /* AmmoType - Arrow */
     , (803197,  51,          2) /* CombatUse - Missile */
     , (803197,  52,          2) /* ParentLocation - LeftHand */
     , (803197,  53,          3) /* PlacementPosition - LeftHand */
     , (803197,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803197, 106,        999) /* ItemSpellcraft */
     , (803197, 107,       3200) /* ItemCurMana */
     , (803197, 108,       3200) /* ItemMaxMana */
     , (803197, 109,          0) /* ItemDifficulty */
     , (803197, 114,          1) /* Attuned - Attuned */
     , (803197, 151,          2) /* HookType - Wall */
	 , (803197, 158,          7) /* WieldRequirements - Level */
     , (803197, 160,       8000) /* WieldDifficulty */
     , (803197, 169,  118162702) /* TsysMutationData */
     , (803197, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803197, 204,          45) /* ElementalDamageBonus */
     , (803197, 292,          5) /* Cleaving */
     , (803197, 353,          8) /* WeaponType - Bow */
	 , (803197, 370,         185) /* Damage */
	 , (803197, 371,         185) /* Damage Resist */
	 , (803197, 374,         185) /* Critical Damage */
	 , (803197, 375,         185) /* Critical Damage Resist */
	 , (803197, 376,         185) /* Heal Boost */
	 , (803197, 379,         185) /* Vitality */
	 , (803197, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803197,  11, True ) /* IgnoreCollisions */
     , (803197,  13, True ) /* Ethereal */
     , (803197,  14, True ) /* GravityStatus */
     , (803197,  15, True ) /* LightsStatus */
     , (803197,  19, True ) /* Attackable */
     , (803197,  22, True ) /* Inscribable */
     , (803197,  65, True ) /* IgnoreMagicResist */
     , (803197,  66, True ) /* IgnoreMagicArmor */
     , (803197,  91, False) /* Retained */
     , (803197, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803197,   5,  -0.033) /* ManaRate */
     , (803197,  12,    0.66) /* Shade */
     , (803197,  21,       0) /* WeaponLength */
     , (803197,  22,       0) /* DamageVariance */
     , (803197,  26,    27.3) /* MaximumVelocity */
     , (803197,  29,    1.50) /* WeaponDefense */
     , (803197,  39,     1.3) /* DefaultScale */
     , (803197,  62,    1.50) /* WeaponOffense */
     , (803197,  63,       3) /* DamageMod */
     , (803197, 110,    1.67) /* BulkMod */
     , (803197, 111,    0.15) /* SizeMod */
     , (803197, 136,   0.001) /* CriticalMultiplier */
     , (803197, 147,    0.10) /* CriticalFrequency */
     , (803197, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803197,   1, 'Perfect Ascended Dragonspine Bow') /* Name */
     , (803197,  16, 'Wield requires level 8000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803197,   1,   33559414) /* Setup */
     , (803197,   3,  536870932) /* SoundTable */
     , (803197,   6,   67111919) /* PaletteBase */
     , (803197,   8,  100686812) /* Icon */
     , (803197,  22,  872415275) /* PhysicsEffectTable */
     , (803197,  36,  234881042) /* MutateFilter */
     , (803197,  46,  939524146) /* TsysMutationFilter */
     , (803197,  52,  100676442) /* IconUnderlay */
	 , (803197,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803197,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803197,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803197,  6089,      2)  /* Legendary Blood Thirst */
     , (803197,  6091,      2)  /* Legendary Defender */
     , (803197,  3699,      2)  /* Prodigal Defender */
     , (803197,  3739,      2)  /* Prodigal Swift Killer */
     , (803197,  3688,      2)  /* Prodigal Blood Drinker */;
