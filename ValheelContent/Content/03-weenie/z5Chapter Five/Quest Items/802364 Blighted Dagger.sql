DELETE FROM `weenie` WHERE `class_Id` = 802364;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802364, 'Blighted Dagger', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802364,   1,          1) /* ItemType - MeleeWeapon */
     , (802364,   3,          2) /* PaletteTemplate - Blue */
     , (802364,   5,        135) /* EncumbranceVal */
     , (802364,   8,         90) /* Mass */
     , (802364,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802364,  16,          1) /* ItemUseable - No */
     , (802364,  18,          1) /* UiEffects - Magical */
     , (802364,  19,         10) /* Value */
     , (802364,  33,         -2) /* Bonded - Destroy */
     , (802364,  44,       1000) /* Damage */
     , (802364,  45,         16) /* DamageType - Slash, Pierce */
     , (802364,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802364,  47,        166) /* AttackType - Thrust, Slash, DoubleSlash, DoubleThrust */
     , (802364,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (802364,  49,         20) /* WeaponTime */
     , (802364,  51,          1) /* CombatUse - Melee */
     , (802364,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802364, 106,        200) /* ItemSpellcraft */
     , (802364, 107,        700) /* ItemCurMana */
     , (802364, 108,        700) /* ItemMaxMana */
     , (802364, 109,        200) /* ItemDifficulty */
     , (802364, 114,          1) /* Attuned - Attuned */
     , (802364, 158,          2) /* WieldRequirements - RawSkill */
     , (802364, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (802364, 160,        250) /* WieldDifficulty */
	 , (802364, 179,        512) /* Imbued Effect - Armor Rend */
     , (802364, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802364,  22, True ) /* Inscribable */
     , (802364,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802364,   5,   -0.05) /* ManaRate */
     , (802364,  21,       0) /* WeaponLength */
     , (802364,  22,    0.25) /* DamageVariance */
     , (802364,  29,    1.30) /* WeaponDefense */
     , (802364,  39,     1.3) /* DefaultScale */
     , (802364,  62,    1.30) /* WeaponOffense */
     , (802364,  63,       3) /* DamageMod */
     , (802364, 136,     1.1) /* CriticalMultiplier */
     , (802364, 147,     0.3) /* CriticalFrequency */
     , (802364, 152,       2) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802364,   1, 'Blighted Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802364,   1,   33557322) /* Setup */
     , (802364,   3,  536870932) /* SoundTable */
     , (802364,   6,   67111919) /* PaletteBase */
     , (802364,   7,  268436240) /* ClothingBase */
     , (802364,   8,  100672601) /* Icon */
     , (802364,  22,  872415275) /* PhysicsEffectTable */
     , (802364,  36,  234881044) /* MutateFilter */;

