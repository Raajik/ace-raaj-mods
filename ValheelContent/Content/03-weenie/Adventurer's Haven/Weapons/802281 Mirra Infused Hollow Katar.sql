DELETE FROM `weenie` WHERE `class_Id` = 802281;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802281, 'Mirra Infused Hollow Katar', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802281,   1,          1) /* ItemType - MeleeWeapon */
     , (802281,   3,         20) /* PaletteTemplate - Silver */
     , (802281,   5,        135) /* EncumbranceVal */
     , (802281,   8,         90) /* Mass */
     , (802281,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802281,  16,          1) /* ItemUseable - No */
     , (802281,  18,          1) /* UiEffects - Magical */
     , (802281,  19,       4000) /* Value */
     , (802281,  33,          1) /* Bonded - Bonded */
     , (802281,  36,       9999) /* ResistMagic */
     , (802281,  44,        135) /* Damage */
     , (802281,  45,       1024) /* DamageType - Nether */
     , (802281,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (802281,  47,          1) /* AttackType - Punch */
     , (802281,  48,         45) /* WeaponSkill - LightWeapons */
     , (802281,  49,         20) /* WeaponTime */
     , (802281,  51,          1) /* CombatUse - Melee */
     , (802281,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802281, 114,          1) /* Attuned - Attuned */
     , (802281, 150,        103) /* HookPlacement - Hook */
     , (802281, 151,          2) /* HookType - Wall */
     , (802281, 158,          7) /* WieldRequirements - RawSkill */
     , (802281, 159,         45) /* WieldSkillType - LightWeapons */
     , (802281, 160,        1000) /* WieldDifficulty */
	 , (802281, 179,      16384) /* Imbued Effect - Nether */
     , (802281, 292,          3) /* Cleaving */
     , (802281, 353,          1) /* WeaponType - Unarmed */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802281,  11, True ) /* IgnoreCollisions */
     , (802281,  13, True ) /* Ethereal */
     , (802281,  14, True ) /* GravityStatus */
     , (802281,  15, True ) /* LightsStatus */
     , (802281,  19, True ) /* Attackable */
     , (802281,  22, True ) /* Inscribable */
     , (802281,  23, True ) /* DestroyOnSell */
     , (802281,  65, True ) /* IgnoreMagicResist */
     , (802281,  66, True ) /* IgnoreMagicArmor */
     , (802281,  69, False) /* IsSellable */
     , (802281,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802281,  21,    0.52) /* WeaponLength */
     , (802281,  22,     0.3) /* DamageVariance */
     , (802281,  26,       0) /* MaximumVelocity */
     , (802281,  29,    1.35) /* WeaponDefense */
     , (802281,  39,    0.67) /* DefaultScale */
     , (802281,  62,     1.1) /* WeaponOffense */
     , (802281,  63,       5) /* DamageMod */
     , (802281,  76,     0.7) /* Translucency */
     , (802281, 136,    0.25) /* CriticalMultiplier */
     , (802281, 147,     0.3) /* CriticalFrequency */
     , (802281, 152,     1.4) /* ElementalDamageMod */
     , (802281, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802281,   1, 'Mirra Infused Hollow Katar') /* Name */
     , (802281,  15, 'A katar crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (802281,  16, 'A katar crafted from low-quality chorizite and infused with Mirra Powder, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802281,   1,   33556648) /* Setup */
     , (802281,   3,  536870932) /* SoundTable */
     , (802281,   6,   67111919) /* PaletteBase */
     , (802281,   7,  268435789) /* ClothingBase */
     , (802281,   8,  100668925) /* Icon */
     , (802281,  22,  872415275) /* PhysicsEffectTable */
     , (802281,  36,  234881044) /* MutateFilter */
	 , (802281,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;
