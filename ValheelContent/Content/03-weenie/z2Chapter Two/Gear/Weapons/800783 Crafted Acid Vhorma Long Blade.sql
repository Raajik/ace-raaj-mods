DELETE FROM `weenie` WHERE `class_Id` = 800783;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800783, 'Crafted Acid Vhorma Long Blade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800783,   1,          1) /* ItemType - MeleeWeapon */
     , (800783,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800783,   5,        220) /* EncumbranceVal */
     , (800783,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800783,  16,          1) /* ItemUseable - No */
     , (800783,  18,          1) /* UiEffects - Magical */
     , (800783,  19,          1) /* Value */
     , (800783,  33,          1) /* Bonded - Slippery */
     , (800783,  44,         85) /* Damage */
     , (800783,  45,          32) /* DamageType - Slash, Pierce */
     , (800783,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800783,  47,          6) /* AttackType - Thrust, Slash */
     , (800783,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800783,  49,         35) /* WeaponTime */
     , (800783,  51,          5) /* CombatUse - TwoHanded */
     , (800783,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800783, 106,        999) /* ItemSpellcraft */
     , (800783, 107,       2700) /* ItemCurMana */
     , (800783, 108,       2700) /* ItemMaxMana */
     , (800783, 114,          1) /* Attuned - Normal */
     , (800783, 158,          7) /* WieldRequirements - Level */
     , (800783, 159,          1) /* WieldSkillType - Axe */
     , (800783, 160,        325) /* WieldDifficulty */
	 , (800783, 179,          64) /* Imbued Effect - Armor Rend */
     , (800783, 292,          3) /* Cleaving */
     , (800783, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800783,  22, True ) /* Inscribable */
     , (800783,  65, True ) /* IgnoreMagicResist */
     , (800783,  66, True ) /* IgnoreMagicArmor */
     , (800783,  69, False) /* IsSellable */
     , (800783,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800783,   5,   -0.05) /* ManaRate */
     , (800783,  21,       0) /* WeaponLength */
     , (800783,  22,    0.25) /* DamageVariance */
     , (800783,  29,    1.30) /* WeaponDefense */
     , (800783,  39,     1.3) /* DefaultScale */
     , (800783,  62,    1.30) /* WeaponOffense */
     , (800783,  63,     1.1) /* DamageMod */
     , (800783, 136,     1.1) /* CriticalMultiplier */
     , (800783, 147,     0.3) /* CriticalFrequency */
     , (800783, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800783,   1, 'Crafted Acid Vhorma Long Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800783,   1,   33561145) /* Setup */
     , (800783,   3,  536870932) /* SoundTable */
     , (800783,   6,   67111919) /* PaletteBase */
     , (800783,   7,  268437600) /* ClothingBase */
     , (800783,   8,  100691761) /* Icon */
     , (800783,  22,  872415275) /* PhysicsEffectTable */
     , (800783,  36,  234881042) /* MutateFilter */
     , (800783,  46,  939524146) /* TsysMutationFilter */
	 , (800783,  52,  100689404) /* IconUnderlay */
	 , (800783,  55,       6189) /* ProcSpell - Fire Bomb */;

