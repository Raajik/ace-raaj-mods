DELETE FROM `weenie` WHERE `class_Id` = 800784;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800784, 'Crafted Frost Vhorma Long Blade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800784,   1,          1) /* ItemType - MeleeWeapon */
     , (800784,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800784,   5,        220) /* EncumbranceVal */
     , (800784,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800784,  16,          1) /* ItemUseable - No */
     , (800784,  18,          1) /* UiEffects - Magical */
     , (800784,  19,          1) /* Value */
     , (800784,  33,          1) /* Bonded - Slippery */
     , (800784,  44,         85) /* Damage */
     , (800784,  45,          8) /* DamageType - Slash, Pierce */
     , (800784,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800784,  47,          6) /* AttackType - Thrust, Slash */
     , (800784,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800784,  49,         35) /* WeaponTime */
     , (800784,  51,          5) /* CombatUse - TwoHanded */
     , (800784,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800784, 106,        999) /* ItemSpellcraft */
     , (800784, 107,       2700) /* ItemCurMana */
     , (800784, 108,       2700) /* ItemMaxMana */
     , (800784, 114,          1) /* Attuned - Normal */
     , (800784, 158,          7) /* WieldRequirements - Level */
     , (800784, 159,          1) /* WieldSkillType - Axe */
     , (800784, 160,        325) /* WieldDifficulty */
	 , (800784, 179,          128) /* Imbued Effect - Armor Rend */
     , (800784, 292,          3) /* Cleaving */
     , (800784, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800784,  22, True ) /* Inscribable */
     , (800784,  65, True ) /* IgnoreMagicResist */
     , (800784,  66, True ) /* IgnoreMagicArmor */
     , (800784,  69, False) /* IsSellable */
     , (800784,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800784,   5,   -0.05) /* ManaRate */
     , (800784,  21,       0) /* WeaponLength */
     , (800784,  22,    0.25) /* DamageVariance */
     , (800784,  29,    1.30) /* WeaponDefense */
     , (800784,  39,     1.3) /* DefaultScale */
     , (800784,  62,    1.30) /* WeaponOffense */
     , (800784,  63,     1.1) /* DamageMod */
     , (800784, 136,     1.1) /* CriticalMultiplier */
     , (800784, 147,     0.3) /* CriticalFrequency */
     , (800784, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800784,   1, 'Crafted Frost Vhorma Long Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800784,   1,   33561145) /* Setup */
     , (800784,   3,  536870932) /* SoundTable */
     , (800784,   6,   67111919) /* PaletteBase */
     , (800784,   7,  268437600) /* ClothingBase */
     , (800784,   8,  100691761) /* Icon */
     , (800784,  22,  872415275) /* PhysicsEffectTable */
     , (800784,  36,  234881042) /* MutateFilter */
     , (800784,  46,  939524146) /* TsysMutationFilter */
	 , (800784,  52,  100689404) /* IconUnderlay */
	 , (800784,  55,       6193) /* ProcSpell - Fire Bomb */;

