DELETE FROM `weenie` WHERE `class_Id` = 802280;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802280, 'Mirra Infused Hollow Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802280,   1,          1) /* ItemType - MeleeWeapon */
     , (802280,   3,         20) /* PaletteTemplate - Silver */
     , (802280,   5,        135) /* EncumbranceVal */
     , (802280,   8,         90) /* Mass */
     , (802280,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802280,  16,          1) /* ItemUseable - No */
     , (802280,  18,          1) /* UiEffects - Magical */
     , (802280,  19,       2000) /* Value */
     , (802280,  33,          1) /* Bonded - Bonded */
     , (802280,  36,       9999) /* ResistMagic */
     , (802280,  44,        135) /* Damage */
     , (802280,  45,       1024) /* DamageType - Slash, Pierce */
     , (802280,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802280,  47,          6) /* AttackType - Thrust, Slash */
     , (802280,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (802280,  49,         20) /* WeaponTime */
     , (802280,  51,          1) /* CombatUse - Melee */
     , (802280,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802280, 114,          1) /* Attuned - Attuned */
     , (802280, 150,        103) /* HookPlacement - Hook */
     , (802280, 151,          2) /* HookType - Wall */
     , (802280, 158,          7) /* WieldRequirements - RawSkill */
     , (802280, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (802280, 160,        1000) /* WieldDifficulty */
	 , (802280, 179,      16384) /* Imbued Effect - Nether */
     , (802280, 292,          3) /* Cleaving */
     , (802280, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802280,  11, True ) /* IgnoreCollisions */
     , (802280,  13, True ) /* Ethereal */
     , (802280,  14, True ) /* GravityStatus */
     , (802280,  15, True ) /* LightsStatus */
     , (802280,  19, True ) /* Attackable */
     , (802280,  22, True ) /* Inscribable */
     , (802280,  23, True ) /* DestroyOnSell */
     , (802280,  65, True ) /* IgnoreMagicResist */
     , (802280,  66, True ) /* IgnoreMagicArmor */
     , (802280,  69, False) /* IsSellable */
     , (802280,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802280,  21,     0.4) /* WeaponLength */
     , (802280,  22,     0.3) /* DamageVariance */
     , (802280,  26,       0) /* MaximumVelocity */
     , (802280,  29,    1.35) /* WeaponDefense */
     , (802280,  39,    0.67) /* DefaultScale */
     , (802280,  62,     1.1) /* WeaponOffense */
     , (802280,  63,       5) /* DamageMod */
     , (802280,  76,     0.7) /* Translucency */
     , (802280, 136,    0.25) /* CriticalMultiplier */
     , (802280, 147,     0.3) /* CriticalFrequency */
     , (802280, 152,     1.4) /* ElementalDamageMod */
     , (802280, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802280,   1, 'Mirra Infused Hollow Dagger') /* Name */
     , (802280,  15, 'A dagger crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (802280,  16, 'A dagger crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802280,   1,   33556650) /* Setup */
     , (802280,   3,  536870932) /* SoundTable */
     , (802280,   6,   67111919) /* PaletteBase */
     , (802280,   7,  268435783) /* ClothingBase */
     , (802280,   8,  100668875) /* Icon */
     , (802280,  22,  872415275) /* PhysicsEffectTable */
     , (802280,  36,  234881044) /* MutateFilter */
	 , (802280,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
