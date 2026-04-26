DELETE FROM `weenie` WHERE `class_Id` = 803924;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803924, 'Tradewind Crossbow of the Kings', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803924,   1,        256) /* ItemType - MissileWeapon */
     , (803924,   3,         39) /* PaletteTemplate - Brown */
     , (803924,   5,        900) /* EncumbranceVal */
     , (803924,   8,         90) /* Mass */
     , (803924,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803924,  16,          1) /* ItemUseable - No */
     , (803924,  18,          0) /* UiEffects - Piercing */
     , (803924,  19,    3500000) /* Value */
     , (803924,  33,          1) /* Bonded - Bonded */
     , (803924,  44,          0) /* Damage */
     , (803924,  45,       1024) /* DamageType - Pierce */
     , (803924,  46,         32) /* DefaultCombatStyle - Bow */
     , (803924,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803924,  49,         70) /* WeaponTime */
     , (803924,  50,          2) /* AmmoType - Arrow */
     , (803924,  51,          2) /* CombatUse - Missile */
     , (803924,  52,          2) /* ParentLocation - LeftHand */
     , (803924,  53,          3) /* PlacementPosition - LeftHand */
     , (803924,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803924, 106,        999) /* ItemSpellcraft */
     , (803924, 107,       3200) /* ItemCurMana */
     , (803924, 108,       3200) /* ItemMaxMana */
     , (803924, 109,          0) /* ItemDifficulty */
     , (803924, 114,          1) /* Attuned - Attuned */
     , (803924, 151,          2) /* HookType - Wall */
	 , (803924, 158,           7) /* WieldRequirements - Level */
     , (803924, 160,       10000) /* WieldDifficulty */
     , (803924, 169,   118162702) /* TsysMutationData */
     , (803924, 179, -2147483648) /* ImbuedEffect - PierceRending */
     , (803924, 204,          65) /* ElementalDamageBonus */
     , (803924, 292,           3) /* Cleaving */
     , (803924, 353,           8) /* WeaponType - Bow */
	 , (803924, 370,         350) /* Damage */
	 , (803924, 371,         350) /* Damage Resist */
	 , (803924, 374,         350) /* Critical Damage */
	 , (803924, 375,         350) /* Critical Damage Resist */
	 , (803924, 376,         350) /* Heal Boost */
	 , (803924, 379,        1000) /* Vitality */
	 , (803924, 9041,          4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803924,  11, True ) /* IgnoreCollisions */
     , (803924,  13, True ) /* Ethereal */
     , (803924,  14, True ) /* GravityStatus */
     , (803924,  15, True ) /* LightsStatus */
     , (803924,  19, True ) /* Attackable */
     , (803924,  22, True ) /* Inscribable */
     , (803924,  65, True ) /* IgnoreMagicResist */
     , (803924,  66, True ) /* IgnoreMagicArmor */
     , (803924,  91, False) /* Retained */
     , (803924, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803924,   5,  -0.033) /* ManaRate */
     , (803924,  12,    0.66) /* Shade */
     , (803924,  21,       0) /* WeaponLength */
     , (803924,  22,       0) /* DamageVariance */
     , (803924,  26,    27.3) /* MaximumVelocity */
     , (803924,  29,    1.50) /* WeaponDefense */
     , (803924,  39,     1.3) /* DefaultScale */
     , (803924,  62,    1.50) /* WeaponOffense */
     , (803924,  63,     3.5) /* DamageMod */
     , (803924, 110,    1.67) /* BulkMod */
     , (803924, 111,    0.15) /* SizeMod */
     , (803924, 136,   0.001) /* CriticalMultiplier */
     , (803924, 147,    0.10) /* CriticalFrequency */
     , (803924, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803924,   1, 'radewind Crossbow of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803924,   1,   33558210) /* Setup */
     , (803924,   3,  536870932) /* SoundTable */
     , (803924,   6,   67111919) /* PaletteBase */
     , (803924,   7,  268436199) /* ClothingBase */
     , (803924,   8,  100671750) /* Icon */
     , (803924,  19,         88) /* ActivationAnimation */
     , (803924,  22,  872415275) /* PhysicsEffectTable */
     , (803924,  30,         87) /* PhysicsScript - BreatheLightning */
     , (803924,  52,  100667892) /* IconUnderlay */
	 , (803924,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803924,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803924,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803924,  6089,      2)  /* Legendary Blood Thirst */
     , (803924,  6091,      2)  /* Legendary Defender */
     , (803924,  3699,      2)  /* Prodigal Defender */
     , (803924,  3739,      2)  /* Prodigal Swift Killer */
     , (803924,  3688,      2)  /* Prodigal Blood Drinker */;
