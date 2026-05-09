DELETE FROM `weenie` WHERE `class_Id` = 803200;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803200, 'Black Ore Ascended Assassins Whisper', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803200,   1,        256) /* ItemType - MissileWeapon */
     , (803200,   3,          4) /* PaletteTemplate - Brown */
     , (803200,   5,        900) /* EncumbranceVal */
     , (803200,   8,         90) /* Mass */
     , (803200,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803200,  16,          1) /* ItemUseable - No */
     , (803200,  18,          0) /* UiEffects - Piercing */
     , (803200,  19,    3500000) /* Value */
     , (803200,  33,          1) /* Bonded - Bonded */
     , (803200,  44,          0) /* Damage */
     , (803200,  45,       1024) /* DamageType - Pierce */
     , (803200,  46,         32) /* DefaultCombatStyle - Bow */
     , (803200,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803200,  49,         70) /* WeaponTime */
     , (803200,  50,          2) /* AmmoType - Arrow */
     , (803200,  51,          2) /* CombatUse - Missile */
     , (803200,  52,          2) /* ParentLocation - LeftHand */
     , (803200,  53,          3) /* PlacementPosition - LeftHand */
     , (803200,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803200, 106,        999) /* ItemSpellcraft */
     , (803200, 107,       3200) /* ItemCurMana */
     , (803200, 108,       3200) /* ItemMaxMana */
     , (803200, 109,          0) /* ItemDifficulty */
     , (803200, 114,          1) /* Attuned - Attuned */
     , (803200, 151,          2) /* HookType - Wall */
	 , (803200, 158,          7) /* WieldRequirements - Level */
     , (803200, 160,      10000) /* WieldDifficulty */
     , (803200, 169,  118162702) /* TsysMutationData */
     , (803200, 179,          -2147483648) /* ImbuedEffect - PierceRending */
     , (803200, 204,          60) /* ElementalDamageBonus */
     , (803200, 292,          3) /* Cleaving */
     , (803200, 353,          8) /* WeaponType - Bow */
	 , (803200, 370,         210) /* Damage */
	 , (803200, 371,         210) /* Damage Resist */
	 , (803200, 374,         210) /* Critical Damage */
	 , (803200, 375,         210) /* Critical Damage Resist */
	 , (803200, 376,         210) /* Heal Boost */
	 , (803200, 379,         210) /* Vitality */
	 , (803200, 9041,          3) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803200,  11, True ) /* IgnoreCollisions */
     , (803200,  13, True ) /* Ethereal */
     , (803200,  14, True ) /* GravityStatus */
     , (803200,  15, True ) /* LightsStatus */
     , (803200,  19, True ) /* Attackable */
     , (803200,  22, True ) /* Inscribable */
     , (803200,  65, True ) /* IgnoreMagicResist */
     , (803200,  66, True ) /* IgnoreMagicArmor */
     , (803200,  91, False) /* Retained */
     , (803200, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803200,   5,  -0.033) /* ManaRate */
     , (803200,  12,    0.66) /* Shade */
     , (803200,  21,       0) /* WeaponLength */
     , (803200,  22,       0) /* DamageVariance */
     , (803200,  26,    27.3) /* MaximumVelocity */
     , (803200,  29,    1.50) /* WeaponDefense */
     , (803200,  39,     1.3) /* DefaultScale */
     , (803200,  62,    1.50) /* WeaponOffense */
     , (803200,  63,     3.5) /* DamageMod */
     , (803200, 110,    1.67) /* BulkMod */
     , (803200, 111,    0.15) /* SizeMod */
     , (803200, 136,   0.001) /* CriticalMultiplier */
     , (803200, 147,    0.10) /* CriticalFrequency */
     , (803200, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803200,   1, 'Black Ore Ascended Assassin''s Whisper') /* Name */
     , (803200,  16, 'Wield requires level 10000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803200,   1,   33559373) /* Setup */
     , (803200,   3,  536870932) /* SoundTable */
     , (803200,   6,   67111919) /* PaletteBase */
     , (803200,   8,  100686729) /* Icon */
     , (803200,  22,  872415275) /* PhysicsEffectTable */
     , (803200,  36,  234881042) /* MutateFilter */
     , (803200,  46,  939524146) /* TsysMutationFilter */
     , (803200,  52,  100687395) /* IconUnderlay */
	 , (803200,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803200,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803200,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803200,  6089,      2)  /* Legendary Blood Thirst */
     , (803200,  6091,      2)  /* Legendary Defender */
     , (803200,  3699,      2)  /* Prodigal Defender */
     , (803200,  3739,      2)  /* Prodigal Swift Killer */
     , (803200,  3688,      2)  /* Prodigal Blood Drinker */;
