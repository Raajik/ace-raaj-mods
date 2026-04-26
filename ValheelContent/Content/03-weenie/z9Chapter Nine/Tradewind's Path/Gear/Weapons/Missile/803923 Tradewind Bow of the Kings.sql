DELETE FROM `weenie` WHERE `class_Id` = 803923;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803923, 'Tradewind Bow of the Kings', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803923,   1,        256) /* ItemType - MissileWeapon */
     , (803923,   3,         39) /* PaletteTemplate - Brown */
     , (803923,   5,        900) /* EncumbranceVal */
     , (803923,   8,         90) /* Mass */
     , (803923,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803923,  16,          1) /* ItemUseable - No */
     , (803923,  18,          0) /* UiEffects - Piercing */
     , (803923,  19,    3500000) /* Value */
     , (803923,  33,          1) /* Bonded - Bonded */
     , (803923,  44,          0) /* Damage */
     , (803923,  45,       1024) /* DamageType - Pierce */
     , (803923,  46,         16) /* DefaultCombatStyle - Bow */
     , (803923,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803923,  49,         70) /* WeaponTime */
     , (803923,  50,          1) /* AmmoType - Arrow */
     , (803923,  51,          2) /* CombatUse - Missile */
     , (803923,  52,          2) /* ParentLocation - LeftHand */
     , (803923,  53,          3) /* PlacementPosition - LeftHand */
     , (803923,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803923, 106,        999) /* ItemSpellcraft */
     , (803923, 107,       3200) /* ItemCurMana */
     , (803923, 108,       3200) /* ItemMaxMana */
     , (803923, 109,          0) /* ItemDifficulty */
     , (803923, 114,          1) /* Attuned - Attuned */
     , (803923, 151,          2) /* HookType - Wall */
	 , (803923, 158,          7) /* WieldRequirements - Level */
     , (803923, 160,       10000) /* WieldDifficulty */
     , (803923, 169,   118162702) /* TsysMutationData */
     , (803923, 179, -2147483648) /* ImbuedEffect - PierceRending */
     , (803923, 204,          65) /* ElementalDamageBonus */
     , (803923, 292,           3) /* Cleaving */
     , (803923, 353,           8) /* WeaponType - Bow */
	 , (803923, 370,         350) /* Damage */
	 , (803923, 371,         350) /* Damage Resist */
	 , (803923, 374,         350) /* Critical Damage */
	 , (803923, 375,         350) /* Critical Damage Resist */
	 , (803923, 376,         350) /* Heal Boost */
	 , (803923, 379,        1000) /* Vitality */
	 , (803923, 9041,          4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803923,  11, True ) /* IgnoreCollisions */
     , (803923,  13, True ) /* Ethereal */
     , (803923,  14, True ) /* GravityStatus */
     , (803923,  15, True ) /* LightsStatus */
     , (803923,  19, True ) /* Attackable */
     , (803923,  22, True ) /* Inscribable */
     , (803923,  65, True ) /* IgnoreMagicResist */
     , (803923,  66, True ) /* IgnoreMagicArmor */
     , (803923,  91, False) /* Retained */
     , (803923, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803923,   5,  -0.033) /* ManaRate */
     , (803923,  12,    0.66) /* Shade */
     , (803923,  21,       0) /* WeaponLength */
     , (803923,  22,       0) /* DamageVariance */
     , (803923,  26,    27.3) /* MaximumVelocity */
     , (803923,  29,    1.50) /* WeaponDefense */
     , (803923,  39,     1.3) /* DefaultScale */
     , (803923,  62,    1.50) /* WeaponOffense */
     , (803923,  63,     3.5) /* DamageMod */
     , (803923, 110,    1.67) /* BulkMod */
     , (803923, 111,    0.15) /* SizeMod */
     , (803923, 136,   0.001) /* CriticalMultiplier */
     , (803923, 147,    0.10) /* CriticalFrequency */
     , (803923, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803923,   1, 'Tradewind Bow of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803923,   1,   33558206) /* Setup */
     , (803923,   3,  536870932) /* SoundTable */
     , (803923,   6,   67111919) /* PaletteBase */
     , (803923,   7,  268436199) /* ClothingBase */
     , (803923,   8,  100671743) /* Icon */
     , (803923,  19,         88) /* ActivationAnimation */
     , (803923,  22,  872415275) /* PhysicsEffectTable */
     , (803923,  30,         87) /* PhysicsScript - BreatheLightning */
     , (803923,  52,  100667892) /* IconUnderlay */
	 , (803923,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803923,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803923,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803923,  6089,      2)  /* Legendary Blood Thirst */
     , (803923,  6091,      2)  /* Legendary Defender */
     , (803923,  3699,      2)  /* Prodigal Defender */
     , (803923,  3739,      2)  /* Prodigal Swift Killer */
     , (803923,  3688,      2)  /* Prodigal Blood Drinker */;
