DELETE FROM `weenie` WHERE `class_Id` = 802279;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802279, 'Mirra Infused Hollow Staff', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802279,   1,          1) /* ItemType - MeleeWeapon */
     , (802279,   3,          4) /* PaletteTemplate - Brown */
     , (802279,   5,        450) /* EncumbranceVal */
     , (802279,   8,        110) /* Mass */
     , (802279,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802279,  16,          1) /* ItemUseable - No */
     , (802279,  18,          1) /* UiEffects - Magical */
     , (802279,  19,       2000) /* Value */
     , (802279,  33,          1) /* Bonded - Bonded */
     , (802279,  36,       9999) /* ResistMagic */
     , (802279,  44,        180) /* Damage */
     , (802279,  45,       1024) /* DamageType - Bludgeon */
     , (802279,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802279,  47,          6) /* AttackType - Thrust, Slash */
     , (802279,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (802279,  49,         20) /* WeaponTime */
     , (802279,  51,          1) /* CombatUse - Melee */
     , (802279,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802279, 114,          1) /* Attuned - Attuned */
     , (802279, 150,        103) /* HookPlacement - Hook */
     , (802279, 151,          2) /* HookType - Wall */
     , (802279, 158,          7) /* WieldRequirements - RawSkill */
     , (802279, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (802279, 160,        1000) /* WieldDifficulty */
	 , (802279, 179,      16384) /* Imbued Effect - Nether */
     , (802279, 292,          3) /* Cleaving */
     , (802279, 353,          7) /* WeaponType - Staff */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802279,  11, True ) /* IgnoreCollisions */
     , (802279,  13, True ) /* Ethereal */
     , (802279,  14, True ) /* GravityStatus */
     , (802279,  15, True ) /* LightsStatus */
     , (802279,  19, True ) /* Attackable */
     , (802279,  22, True ) /* Inscribable */
     , (802279,  23, True ) /* DestroyOnSell */
     , (802279,  65, True ) /* IgnoreMagicResist */
     , (802279,  66, True ) /* IgnoreMagicArmor */
     , (802279,  69, False) /* IsSellable */
     , (802279,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802279,  21,    1.33) /* WeaponLength */
     , (802279,  22,     0.3) /* DamageVariance */
     , (802279,  26,       0) /* MaximumVelocity */
     , (802279,  29,    1.35) /* WeaponDefense */
     , (802279,  39,    0.67) /* DefaultScale */
     , (802279,  62,     1.1) /* WeaponOffense */
     , (802279,  63,       5) /* DamageMod */
     , (802279,  76,     0.7) /* Translucency */
     , (802279, 136,    0.25) /* CriticalMultiplier */
     , (802279, 147,     0.3) /* CriticalFrequency */
     , (802279, 152,     1.4) /* ElementalDamageMod */
     , (802279, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802279,   1, 'Mirra Infused Hollow Staff') /* Name */
     , (802279,  15, 'A staff crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (802279,  16, 'A staff crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802279,   1,   33556647) /* Setup */
     , (802279,   3,  536870932) /* SoundTable */
     , (802279,   6,   67111919) /* PaletteBase */
     , (802279,   7,  268435795) /* ClothingBase */
     , (802279,   8,  100669105) /* Icon */
     , (802279,  22,  872415275) /* PhysicsEffectTable */
     , (802279,  36,  234881044) /* MutateFilter */
	 , (802279,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
