DELETE FROM `weenie` WHERE `class_Id` = 803925;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803925, 'Tradewind Atlatl of the Kings', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803925,   1,        256) /* ItemType - MissileWeapon */
     , (803925,   3,         39) /* PaletteTemplate - Brown */
     , (803925,   5,        900) /* EncumbranceVal */
     , (803925,   8,         90) /* Mass */
     , (803925,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803925,  16,          1) /* ItemUseable - No */
     , (803925,  18,          0) /* UiEffects - Piercing */
     , (803925,  19,    3500000) /* Value */
     , (803925,  33,          1) /* Bonded - Bonded */
     , (803925,  44,          0) /* Damage */
     , (803925,  45,       1024) /* DamageType - Pierce */
     , (803925,  46,       1024) /* DefaultCombatStyle - Atlatl */
     , (803925,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803925,  49,         40) /* WeaponTime */
     , (803925,  50,          4) /* AmmoType - Atlatl */
     , (803925,  51,          2) /* CombatUse - Missile */
     , (803925,  52,          1) /* ParentLocation - RightHand */
     , (803925,  53,          1) /* PlacementPosition - RightHandCombat */
     , (803925,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803925, 106,        999) /* ItemSpellcraft */
     , (803925, 107,       3200) /* ItemCurMana */
     , (803925, 108,       3200) /* ItemMaxMana */
     , (803925, 109,          0) /* ItemDifficulty */
     , (803925, 114,          1) /* Attuned - Attuned */
     , (803925, 151,          2) /* HookType - Wall */
	 , (803925, 158,          7) /* WieldRequirements - Level */
     , (803925, 160,      10000) /* WieldDifficulty */
     , (803925, 169,  118162702) /* TsysMutationData */
     , (803925, 179,         -2147483648) /* ImbuedEffect - PierceRending */
     , (803925, 204,         65) /* ElementalDamageBonus */
     , (803925, 292,          5) /* Cleaving */
     , (803925, 353,          8) /* WeaponType - Bow */
	 , (803925, 370,        350) /* Damage */
	 , (803925, 371,        350) /* Damage Resist */
	 , (803925, 374,        350) /* Critical Damage */
	 , (803925, 375,        350) /* Critical Damage Resist */
	 , (803925, 376,        350) /* Heal Boost */
	 , (803925, 379,       1000) /* Vitality */
	 , (803925, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803925,  11, True ) /* IgnoreCollisions */
     , (803925,  13, True ) /* Ethereal */
     , (803925,  14, True ) /* GravityStatus */
     , (803925,  15, True ) /* LightsStatus */
     , (803925,  19, True ) /* Attackable */
     , (803925,  22, True ) /* Inscribable */
     , (803925,  65, True ) /* IgnoreMagicResist */
     , (803925,  66, True ) /* IgnoreMagicArmor */
     , (803925,  91, False) /* Retained */
     , (803925, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803925,   5,  -0.033) /* ManaRate */
     , (803925,  12,    0.66) /* Shade */
     , (803925,  26,    24.9) /* MaximumVelocity */
     , (803925,  29,    1.50) /* WeaponDefense */
     , (803925,  39,     1.2) /* DefaultScale */
     , (803925,  63,     3.5) /* DamageMod */
     , (803925, 110,    1.67) /* BulkMod */
     , (803925, 136,   0.001) /* CriticalMultiplier */
     , (803925, 147,    0.10) /* CriticalFrequency */
     , (803925, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803925,   1, 'Tradewind Atlatl of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803925,   1,   33558205) /* Setup */
     , (803925,   3,  536870932) /* SoundTable */
     , (803925,   6,   67111919) /* PaletteBase */
     , (803925,   7,  268436199) /* ClothingBase */
     , (803925,   8,  100674081) /* Icon */
     , (803925,  19,         88) /* ActivationAnimation */
     , (803925,  22,  872415275) /* PhysicsEffectTable */
     , (803925,  30,         87) /* PhysicsScript - BreatheLightning */
     , (803925,  52,  100667892) /* IconUnderlay */
	 , (803925,  55,       5356) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803925,  4400,      2)  /* Aura of Incantation of Defender Self */
     , (803925,  4417,      2)  /* Aura of Incantation of Swift Killer Self */
     , (803925,  6089,      2)  /* Legendary Blood Thirst */
     , (803925,  6091,      2)  /* Legendary Defender */
     , (803925,  3699,      2)  /* Prodigal Defender */
     , (803925,  3739,      2)  /* Prodigal Swift Killer */
     , (803925,  3688,      2)  /* Prodigal Blood Drinker */;
