DELETE FROM `weenie` WHERE `class_Id` = 800780;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800780, 'Crafted Static Vhorma Long Blade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800780,   1,          1) /* ItemType - MeleeWeapon */
     , (800780,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800780,   5,        220) /* EncumbranceVal */
     , (800780,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800780,  16,          1) /* ItemUseable - No */
     , (800780,  18,          1) /* UiEffects - Magical */
     , (800780,  19,          1) /* Value */
     , (800780,  33,          1) /* Bonded - Slippery */
     , (800780,  44,         85) /* Damage */
     , (800780,  45,          64) /* DamageType - Slash, Pierce */
     , (800780,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800780,  47,          6) /* AttackType - Thrust, Slash */
     , (800780,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800780,  49,         35) /* WeaponTime */
     , (800780,  51,          5) /* CombatUse - TwoHanded */
     , (800780,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800780, 106,        999) /* ItemSpellcraft */
     , (800780, 107,       2700) /* ItemCurMana */
     , (800780, 108,       2700) /* ItemMaxMana */
     , (800780, 114,          1) /* Attuned - Normal */
     , (800780, 158,          7) /* WieldRequirements - Level */
     , (800780, 159,          1) /* WieldSkillType - Axe */
     , (800780, 160,        325) /* WieldDifficulty */
	 , (800780, 179,          256) /* Imbued Effect - Armor Rend */
     , (800780, 292,          3) /* Cleaving */
     , (800780, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800780,  22, True ) /* Inscribable */
     , (800780,  65, True ) /* IgnoreMagicResist */
     , (800780,  66, True ) /* IgnoreMagicArmor */
     , (800780,  69, False) /* IsSellable */
     , (800780,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800780,   5,   -0.05) /* ManaRate */
     , (800780,  21,       0) /* WeaponLength */
     , (800780,  22,    0.25) /* DamageVariance */
     , (800780,  29,    1.30) /* WeaponDefense */
     , (800780,  39,     1.3) /* DefaultScale */
     , (800780,  62,    1.30) /* WeaponOffense */
     , (800780,  63,     1.1) /* DamageMod */
     , (800780, 136,     1.1) /* CriticalMultiplier */
     , (800780, 147,     0.3) /* CriticalFrequency */
     , (800780, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800780,   1, 'Crafted Static Vhorma Long Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800780,   1,   33561145) /* Setup */
     , (800780,   3,  536870932) /* SoundTable */
     , (800780,   6,   67111919) /* PaletteBase */
     , (800780,   7,  268437600) /* ClothingBase */
     , (800780,   8,  100691761) /* Icon */
     , (800780,  22,  872415275) /* PhysicsEffectTable */
     , (800780,  36,  234881042) /* MutateFilter */
     , (800780,  46,  939524146) /* TsysMutationFilter */
	 , (800780,  52,  100689404) /* IconUnderlay */
	 , (800780,  55,       6194) /* ProcSpell - Fire Bomb */;

