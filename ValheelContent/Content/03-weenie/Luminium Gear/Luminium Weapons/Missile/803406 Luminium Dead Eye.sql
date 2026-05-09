DELETE FROM `weenie` WHERE `class_Id` = 803406;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803406, 'Luminium Dead Eye', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803406,   1,        256) /* ItemType - MissileWeapon */
     , (803406,   3,          4) /* PaletteTemplate - Brown */
     , (803406,   5,        900) /* EncumbranceVal */
     , (803406,   8,         90) /* Mass */
     , (803406,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803406,  16,          1) /* ItemUseable - No */
     , (803406,  18,          0) /* UiEffects - Piercing */
     , (803406,  19,    3500000) /* Value */
     , (803406,  33,          1) /* Bonded - Bonded */
     , (803406,  44,          0) /* Damage */
     , (803406,  45,       1024) /* DamageType - Pierce */
     , (803406,  46,         16) /* DefaultCombatStyle - Bow */
     , (803406,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803406,  49,         70) /* WeaponTime */
     , (803406,  50,          1) /* AmmoType - Arrow */
     , (803406,  51,          2) /* CombatUse - Missile */
     , (803406,  52,          2) /* ParentLocation - LeftHand */
     , (803406,  53,          3) /* PlacementPosition - LeftHand */
     , (803406,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803406, 106,        999) /* ItemSpellcraft */
     , (803406, 107,       3200) /* ItemCurMana */
     , (803406, 108,       3200) /* ItemMaxMana */
     , (803406, 109,          0) /* ItemDifficulty */
     , (803406, 114,          1) /* Attuned - Attuned */
     , (803406, 151,          2) /* HookType - Wall */
	 , (803406, 158,          7) /* WieldRequirements - Level */
     , (803406, 160,       5000) /* WieldDifficulty */
     , (803406, 169,  118162702) /* TsysMutationData */
     , (803406, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803406, 204,          35) /* ElementalDamageBonus */
     , (803406, 292,          5) /* Cleaving */
     , (803406, 353,          8) /* WeaponType - Bow */
	 , (803406, 370,         155) /* Damage */
	 , (803406, 371,         155) /* Damage Resist */
	 , (803406, 374,         155) /* Critical Damage */
	 , (803406, 375,         155) /* Critical Damage Resist */
	 , (803406, 376,         155) /* Heal Boost */
	 , (803406, 379,         155) /* Vitality */
	 , (803406, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803406,  11, True ) /* IgnoreCollisions */
     , (803406,  13, True ) /* Ethereal */
     , (803406,  14, True ) /* GravityStatus */
     , (803406,  15, True ) /* LightsStatus */
     , (803406,  19, True ) /* Attackable */
     , (803406,  22, True ) /* Inscribable */
     , (803406,  65, True ) /* IgnoreMagicResist */
     , (803406,  66, True ) /* IgnoreMagicArmor */
     , (803406,  91, False) /* Retained */
     , (803406, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803406,   5,  -0.033) /* ManaRate */
     , (803406,  12,    0.66) /* Shade */
     , (803406,  21,       0) /* WeaponLength */
     , (803406,  22,       0) /* DamageVariance */
     , (803406,  26,    27.3) /* MaximumVelocity */
     , (803406,  29,    1.50) /* WeaponDefense */
     , (803406,  39,     1.3) /* DefaultScale */
     , (803406,  62,    1.50) /* WeaponOffense */
     , (803406,  63,     2.5) /* DamageMod */
     , (803406,  76,     0.5) /* Translucency */
     , (803406, 110,    1.67) /* BulkMod */
     , (803406, 111,    0.15) /* SizeMod */
     , (803406, 136,   0.001) /* CriticalMultiplier */
     , (803406, 147,    0.10) /* CriticalFrequency */
     , (803406, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803406,   1, 'Luminium Dead Eye') /* Name */
     , (803406,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803406,   1,   33557111) /* Setup */
     , (803406,   3,  536870932) /* SoundTable */
     , (803406,   8,  100671694) /* Icon */
     , (803406,  22,  872415275) /* PhysicsEffectTable */
     , (803406,  36,  234881042) /* MutateFilter */
     , (803406,  46,  939524146) /* TsysMutationFilter */
     , (803406,  52,  100676442) /* IconUnderlay */
	 , (803406,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803406,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803406,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803406,  6089,      2)  /* Legendary Blood Thirst */
     , (803406,  6091,      2)  /* Legendary Defender */
     , (803406,  3699,      2)  /* Prodigal Defender */
     , (803406,  3739,      2)  /* Prodigal Swift Killer */
     , (803406,  3688,      2)  /* Prodigal Blood Drinker */;
