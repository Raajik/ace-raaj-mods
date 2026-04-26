DELETE FROM `weenie` WHERE `class_Id` = 802393;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802393, 'CedraicsBlade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802393,   1,          1) /* ItemType - MeleeWeapon */
     , (802393,   3,         39) /* PaletteTemplate - PinkPurple */
     , (802393,   5,        100) /* EncumbranceVal */
     , (802393,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802393,  16,          1) /* ItemUseable - No */
     , (802393,  18,          1) /* UiEffects - Magical */
     , (802393,  19,          1) /* Value */
     , (802393,  33,          1) /* Bonded - Slippery */
     , (802393,  44,        750) /* Damage */
     , (802393,  45,         64) /* DamageType - Pierce */
     , (802393,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802393,  47,          4) /* AttackType - Thrust */
     , (802393,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (802393,  49,         20) /* WeaponTime */
     , (802393,  51,          1) /* CombatUse - Melee */
     , (802393,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802393, 106,        999) /* ItemSpellcraft */
     , (802393, 107,       2700) /* ItemCurMana */
     , (802393, 108,       2700) /* ItemMaxMana */
     , (802393, 114,          1) /* Attuned - Normal */
     , (802393, 158,          7) /* WieldRequirements - Level */
     , (802393, 159,          1) /* WieldSkillType - Axe */
     , (802393, 160,        325) /* WieldDifficulty */
	 , (802393, 179,        256) /* Imbued Effect - Armor Rend */
     , (802393, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802393,  22, True ) /* Inscribable */
     , (802393,  65, True ) /* IgnoreMagicResist */
     , (802393,  66, True ) /* IgnoreMagicArmor */
     , (802393,  69, False) /* IsSellable */
     , (802393,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802393,   5,   -0.05) /* ManaRate */
     , (802393,  21,       0) /* WeaponLength */
     , (802393,  22,    0.25) /* DamageVariance */
     , (802393,  29,    1.50) /* WeaponDefense */
     , (802393,  39,     1.7) /* DefaultScale */
     , (802393,  62,    1.50) /* WeaponOffense */
     , (802393,  63,       5) /* DamageMod */
     , (802393, 136,     1.1) /* CriticalMultiplier */
     , (802393, 147,     0.3) /* CriticalFrequency */
     , (802393, 152,       5) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802393,   1, 'Cedraic''s Blade of the Cursed') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802393,   1,   33561148) /* Setup */
     , (802393,   3,  536870932) /* SoundTable */
     , (802393,   6,   67113336) /* PaletteBase */
     , (802393,   7,  268436253) /* ClothingBase */
     , (802393,   8,  100672071) /* Icon */
     , (802393,  22,  872415275) /* PhysicsEffectTable */
     , (802393,  30,         87) /* PhysicsScript - BreatheLightning */
     , (802393,  36,  234881044) /* MutateFilter */
	 , (802393,  52,  100689404) /* IconUnderlay */
	 , (802393,  55,       6194) /* ProcSpell - Fire Bomb */;

