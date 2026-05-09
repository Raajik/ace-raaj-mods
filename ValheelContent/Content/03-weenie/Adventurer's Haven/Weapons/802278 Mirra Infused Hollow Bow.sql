DELETE FROM `weenie` WHERE `class_Id` = 802278;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802278, 'Mirra Infused Hollow Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802278,   1,        256) /* ItemType - MissileWeapon */
     , (802278,   3,         82) /* PaletteTemplate - PinkPurple */
     , (802278,   5,        450) /* EncumbranceVal */
     , (802278,   8,        140) /* Mass */
     , (802278,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (802278,  16,          1) /* ItemUseable - No */
     , (802278,  18,          1) /* UiEffects - Magical */
     , (802278,  19,       4000) /* Value */
     , (802278,  33,          1) /* Bonded - Bonded */
     , (802278,  36,       9999) /* ResistMagic */
     , (802278,  44,         75) /* Damage */
     , (802278,  45,       1024) /* DamageType - Nether */
     , (802278,  46,         16) /* DefaultCombatStyle - Bow */
     , (802278,  48,         47) /* WeaponSkill - MissileWeapons */
     , (802278,  49,         30) /* WeaponTime */
     , (802278,  50,          1) /* AmmoType - ArrowChorizite */
     , (802278,  51,          2) /* CombatUse - Missile */
     , (802278,  52,          2) /* ParentLocation - LeftHand */
     , (802278,  53,          3) /* PlacementPosition - LeftHand */
     , (802278,  60,        175) /* WeaponRange */
     , (802278,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802278, 114,          1) /* Attuned - Attuned */
     , (802278, 150,        103) /* HookPlacement - Hook */
     , (802278, 151,          2) /* HookType - Wall */
     , (802278, 158,          7) /* WieldRequirements - RawSkill */
     , (802278, 160,        1000) /* WieldDifficulty */
	 , (802278, 179,          16384) /* Imbued Effect - Nether */
     , (802278, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802278,  11, True ) /* IgnoreCollisions */
     , (802278,  13, True ) /* Ethereal */
     , (802278,  14, True ) /* GravityStatus */
     , (802278,  15, True ) /* LightsStatus */
     , (802278,  19, True ) /* Attackable */
     , (802278,  22, True ) /* Inscribable */
     , (802278,  23, True ) /* DestroyOnSell */
     , (802278,  65, True ) /* IgnoreMagicResist */
     , (802278,  66, True ) /* IgnoreMagicArmor */
     , (802278,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802278,  21,       0) /* WeaponLength */
     , (802278,  22,       0) /* DamageVariance */
     , (802278,  26,      50) /* MaximumVelocity */
     , (802278,  29,    1.35) /* WeaponDefense */
     , (802278,  62,    1.15) /* WeaponOffense */
     , (802278,  63,       5) /* DamageMod */
     , (802278,  76,     0.5) /* Translucency */
     , (802278,  77,       1) /* PhysicsScriptIntensity */
     , (802278, 136,    0.25) /* CriticalMultiplier */
     , (802278, 147,     0.3) /* CriticalFrequency */
     , (802278, 152,     1.4) /* ElementalDamageMod */
     , (802278, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802278,   1, 'Mirra Infused Hollow Bow') /* Name */
     , (802278,  16, 'A bow crafted from high-quality chorizite and infused with Mirra dust, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802278,   1,   33558059) /* Setup */
     , (802278,   3,  536870932) /* SoundTable */
     , (802278,   6,   67111919) /* PaletteBase */
     , (802278,   7,  268435759) /* ClothingBase */
     , (802278,   8,  100668815) /* Icon */
     , (802278,  19,         88) /* ActivationAnimation */
     , (802278,  22,  872415275) /* PhysicsEffectTable */
     , (802278,  30,         87) /* PhysicsScript - BreatheLightning */
	 , (802278,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
