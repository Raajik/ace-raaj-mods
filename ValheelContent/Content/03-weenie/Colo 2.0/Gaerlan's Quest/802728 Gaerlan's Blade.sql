DELETE FROM `weenie` WHERE `class_Id` = 802728;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802728, 'GaerlansBlade', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802728,   1,          1) /* ItemType - MeleeWeapon */
     , (802728,   3,         20) /* PaletteTemplate - Silver */
     , (802728,   5,        450) /* EncumbranceVal */
     , (802728,   8,        180) /* Mass */
     , (802728,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802728,  16,          1) /* ItemUseable - No */
     , (802728,  18,          1) /* UiEffects - Magical */
     , (802728,  19,       4000) /* Value */
     , (802728,  33,          1) /* Bonded - Bonded */
     , (802728,  36,       9999) /* ResistMagic */
     , (802728,  44,       2750) /* Damage */
     , (802728,  45,       2147483647) /* DamageType - Nether */
     , (802728,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802728,  47,          6) /* AttackType - Thrust, Slash */
     , (802728,  48,         45) /* WeaponSkill - LightWeapons */
     , (802728,  49,         30) /* WeaponTime */
     , (802728,  51,          1) /* CombatUse - Melee */
     , (802728,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802728, 114,          1) /* Attuned - Attuned */
     , (802728, 150,        103) /* HookPlacement - Hook */
     , (802728, 151,          2) /* HookType - Wall */
     , (802728, 158,          7) /* WieldRequirements - RawSkill */
     , (802728, 159,         45) /* WieldSkillType - LightWeapons */
     , (802728, 160,       1000) /* WieldDifficulty */
     , (802728, 166,         31) /* SlayerCreatureType - Human */
	 , (802728, 179,       2147483647) /* Imbued Effect - Nether */
     , (802728, 292,          3) /* Cleaving */
     , (802728, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802728,  11, True ) /* IgnoreCollisions */
     , (802728,  13, True ) /* Ethereal */
     , (802728,  15, True ) /* LightsStatus */
     , (802728,  22, True ) /* Inscribable */
     , (802728,  23, True ) /* DestroyOnSell */
     , (802728,  65, True ) /* IgnoreMagicResist */
     , (802728,  66, True ) /* IgnoreMagicArmor */
     , (802728,  69, False) /* IsSellable */
     , (802728,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802728,  21,     1.1) /* WeaponLength */
     , (802728,  22,     0.3) /* DamageVariance */
     , (802728,  26,       0) /* MaximumVelocity */
     , (802728,  29,    1.50) /* WeaponDefense */
     , (802728,  39,       2) /* DefaultScale */
     , (802728,  62,    1.50) /* WeaponOffense */
     , (802728,  63,       5) /* DamageMod */
     , (802728,  76,     0.7) /* Translucency */
     , (802728, 136,     1.3) /* CriticalMultiplier */
     , (802728, 138,       2) /* SlayerDamageBonus */
     , (802728, 147,     0.6) /* CriticalFrequency */
     , (802728, 152,       5) /* ElementalDamageMod */
     , (802728, 156,    0.75) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802728,   1, 'Great Colosseum Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802728,   1,   33559394) /* Setup */
     , (802728,   3,  536870932) /* SoundTable */
     , (802728,   6,   67111919) /* PaletteBase */
     , (802728,   7,  268437600) /* ClothingBase */
     , (802728,   8,  100686771) /* Icon */
     , (802728,  22,  872415275) /* PhysicsEffectTable */
     , (802728,  36,  234881042) /* MutateFilter */
     , (802728,  46,  939524146) /* TsysMutationFilter */
	 , (802728,  55,       4643) /* ProcSpell - Incantation of Drain Health */;
