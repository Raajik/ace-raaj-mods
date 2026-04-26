DELETE FROM `weenie` WHERE `class_Id` = 803407;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803407, 'Luminium Harp', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803407,   1,        256) /* ItemType - MissileWeapon */
     , (803407,   3,          4) /* PaletteTemplate - Brown */
     , (803407,   5,        900) /* EncumbranceVal */
     , (803407,   8,         90) /* Mass */
     , (803407,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803407,  16,          1) /* ItemUseable - No */
     , (803407,  18,          0) /* UiEffects - Piercing */
     , (803407,  19,    3500000) /* Value */
     , (803407,  33,          1) /* Bonded - Bonded */
     , (803407,  44,          0) /* Damage */
     , (803407,  45,       1024) /* DamageType - Pierce */
     , (803407,  46,         32) /* DefaultCombatStyle - Bow */
     , (803407,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803407,  49,         70) /* WeaponTime */
     , (803407,  50,          2) /* AmmoType - Arrow */
     , (803407,  51,          2) /* CombatUse - Missile */
     , (803407,  52,          2) /* ParentLocation - LeftHand */
     , (803407,  53,          3) /* PlacementPosition - LeftHand */
     , (803407,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803407, 106,        999) /* ItemSpellcraft */
     , (803407, 107,       3200) /* ItemCurMana */
     , (803407, 108,       3200) /* ItemMaxMana */
     , (803407, 109,          0) /* ItemDifficulty */
     , (803407, 114,          1) /* Attuned - Attuned */
     , (803407, 151,          2) /* HookType - Wall */
	 , (803407, 158,          7) /* WieldRequirements - Level */
     , (803407, 160,       5000) /* WieldDifficulty */
     , (803407, 169,  118162702) /* TsysMutationData */
     , (803407, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803407, 204,          35) /* ElementalDamageBonus */
     , (803407, 292,          5) /* Cleaving */
     , (803407, 353,          8) /* WeaponType - Bow */
	 , (803407, 370,         155) /* Damage */
	 , (803407, 371,         155) /* Damage Resist */
	 , (803407, 374,         155) /* Critical Damage */
	 , (803407, 375,         155) /* Critical Damage Resist */
	 , (803407, 376,         155) /* Heal Boost */
	 , (803407, 379,         155) /* Vitality */
	 , (803407, 9041,          2) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803407,  11, True ) /* IgnoreCollisions */
     , (803407,  13, True ) /* Ethereal */
     , (803407,  14, True ) /* GravityStatus */
     , (803407,  15, True ) /* LightsStatus */
     , (803407,  19, True ) /* Attackable */
     , (803407,  22, True ) /* Inscribable */
     , (803407,  65, True ) /* IgnoreMagicResist */
     , (803407,  66, True ) /* IgnoreMagicArmor */
     , (803407,  91, False) /* Retained */
     , (803407, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803407,   5,  -0.033) /* ManaRate */
     , (803407,  12,    0.66) /* Shade */
     , (803407,  21,       0) /* WeaponLength */
     , (803407,  22,       0) /* DamageVariance */
     , (803407,  26,    27.3) /* MaximumVelocity */
     , (803407,  29,    1.50) /* WeaponDefense */
     , (803407,  39,     1.3) /* DefaultScale */
     , (803407,  62,    1.50) /* WeaponOffense */
     , (803407,  63,     2.5) /* DamageMod */
     , (803407,  76,     0.5) /* Translucency */
     , (803407, 110,    1.67) /* BulkMod */
     , (803407, 111,    0.15) /* SizeMod */
     , (803407, 136,   0.001) /* CriticalMultiplier */
     , (803407, 147,    0.10) /* CriticalFrequency */
     , (803407, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803407,   1, 'Luminium Harp') /* Name */
     , (803407,  16, 'Wield requires level 5000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803407,   1,   33557112) /* Setup */
     , (803407,   3,  536870932) /* SoundTable */
     , (803407,   8,  100671701) /* Icon */
     , (803407,  22,  872415275) /* PhysicsEffectTable */
     , (803407,  36,  234881042) /* MutateFilter */
     , (803407,  46,  939524146) /* TsysMutationFilter */
     , (803407,  52,  100676442) /* IconUnderlay */
	 , (803407,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803407,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803407,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803407,  6089,      2)  /* Legendary Blood Thirst */
     , (803407,  6091,      2)  /* Legendary Defender */
     , (803407,  3699,      2)  /* Prodigal Defender */
     , (803407,  3739,      2)  /* Prodigal Swift Killer */
     , (803407,  3688,      2)  /* Prodigal Blood Drinker */;
