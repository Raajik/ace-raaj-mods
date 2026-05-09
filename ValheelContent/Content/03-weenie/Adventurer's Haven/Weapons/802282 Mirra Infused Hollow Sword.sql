DELETE FROM `weenie` WHERE `class_Id` = 802282;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802282, 'Mirra Infused Hollow Sword', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802282,   1,          1) /* ItemType - MeleeWeapon */
     , (802282,   3,         20) /* PaletteTemplate - Silver */
     , (802282,   5,        450) /* EncumbranceVal */
     , (802282,   8,        180) /* Mass */
     , (802282,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802282,  16,          1) /* ItemUseable - No */
     , (802282,  18,          1) /* UiEffects - Magical */
     , (802282,  19,       4000) /* Value */
     , (802282,  33,          1) /* Bonded - Bonded */
     , (802282,  36,       9999) /* ResistMagic */
     , (802282,  44,         155) /* Damage */
     , (802282,  45,       1024) /* DamageType - Nether */
     , (802282,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802282,  47,          6) /* AttackType - Thrust, Slash */
     , (802282,  48,         45) /* WeaponSkill - LightWeapons */
     , (802282,  49,         30) /* WeaponTime */
     , (802282,  51,          1) /* CombatUse - Melee */
     , (802282,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802282, 114,          1) /* Attuned - Attuned */
     , (802282, 150,        103) /* HookPlacement - Hook */
     , (802282, 151,          2) /* HookType - Wall */
     , (802282, 158,          7) /* WieldRequirements - RawSkill */
     , (802282, 159,         45) /* WieldSkillType - LightWeapons */
     , (802282, 160,        1000) /* WieldDifficulty */
	 , (802282, 179,      16384) /* Imbued Effect - Nether */
     , (802282, 292,          3) /* Cleaving */
     , (802282, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802282,  11, True ) /* IgnoreCollisions */
     , (802282,  13, True ) /* Ethereal */
     , (802282,  15, True ) /* LightsStatus */
     , (802282,  22, True ) /* Inscribable */
     , (802282,  23, True ) /* DestroyOnSell */
     , (802282,  65, True ) /* IgnoreMagicResist */
     , (802282,  66, True ) /* IgnoreMagicArmor */
     , (802282,  69, False) /* IsSellable */
     , (802282,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802282,  21,     1.1) /* WeaponLength */
     , (802282,  22,     0.3) /* DamageVariance */
     , (802282,  26,       0) /* MaximumVelocity */
     , (802282,  29,    1.35) /* WeaponDefense */
     , (802282,  39,    0.67) /* DefaultScale */
     , (802282,  62,     1.1) /* WeaponOffense */
     , (802282,  63,       5) /* DamageMod */
     , (802282,  76,     0.7) /* Translucency */
     , (802282, 136,    0.25) /* CriticalMultiplier */
     , (802282, 147,     0.3) /* CriticalFrequency */
     , (802282, 152,     1.4) /* ElementalDamageMod */
     , (802282, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802282,   1, 'Mirra Infused Hollow Sword') /* Name */
     , (802282,  15, 'A sword crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (802282,  16, 'A sword crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802282,   1,   33556645) /* Setup */
     , (802282,   3,  536870932) /* SoundTable */
     , (802282,   6,   67111919) /* PaletteBase */
     , (802282,   7,  268435788) /* ClothingBase */
     , (802282,   8,  100668915) /* Icon */
     , (802282,  22,  872415275) /* PhysicsEffectTable */
     , (802282,  36,  234881044) /* MutateFilter */
	 , (802282,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
