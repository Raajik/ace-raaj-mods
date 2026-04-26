DELETE FROM `weenie` WHERE `class_Id` = 800782;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800782, 'Crafted Piercing Vhorma Long Blade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800782,   1,          1) /* ItemType - MeleeWeapon */
     , (800782,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800782,   5,        220) /* EncumbranceVal */
     , (800782,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800782,  16,          1) /* ItemUseable - No */
     , (800782,  18,          1) /* UiEffects - Magical */
     , (800782,  19,          1) /* Value */
     , (800782,  33,          1) /* Bonded - Slippery */
     , (800782,  44,         85) /* Damage */
     , (800782,  45,          3) /* DamageType - Slash, Pierce */
     , (800782,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800782,  47,          6) /* AttackType - Thrust, Slash */
     , (800782,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800782,  49,         35) /* WeaponTime */
     , (800782,  51,          5) /* CombatUse - TwoHanded */
     , (800782,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800782, 106,        999) /* ItemSpellcraft */
     , (800782, 107,       2700) /* ItemCurMana */
     , (800782, 108,       2700) /* ItemMaxMana */
     , (800782, 114,          1) /* Attuned - Normal */
     , (800782, 158,          7) /* WieldRequirements - Level */
     , (800782, 159,          1) /* WieldSkillType - Axe */
     , (800782, 160,        325) /* WieldDifficulty */
	 , (800782, 179,          16) /* Imbued Effect - Armor Rend */
     , (800782, 292,          3) /* Cleaving */
     , (800782, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800782,  22, True ) /* Inscribable */
     , (800782,  65, True ) /* IgnoreMagicResist */
     , (800782,  66, True ) /* IgnoreMagicArmor */
     , (800782,  69, False) /* IsSellable */
     , (800782,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800782,   5,   -0.05) /* ManaRate */
     , (800782,  21,       0) /* WeaponLength */
     , (800782,  22,    0.25) /* DamageVariance */
     , (800782,  29,    1.30) /* WeaponDefense */
     , (800782,  39,     1.3) /* DefaultScale */
     , (800782,  62,    1.30) /* WeaponOffense */
     , (800782,  63,     1.1) /* DamageMod */
     , (800782, 136,     1.1) /* CriticalMultiplier */
     , (800782, 147,     0.3) /* CriticalFrequency */
     , (800782, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800782,   1, 'Crafted Piercing Vhorma Long Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800782,   1,   33561145) /* Setup */
     , (800782,   3,  536870932) /* SoundTable */
     , (800782,   6,   67111919) /* PaletteBase */
     , (800782,   7,  268437600) /* ClothingBase */
     , (800782,   8,  100691761) /* Icon */
     , (800782,  22,  872415275) /* PhysicsEffectTable */
     , (800782,  36,  234881042) /* MutateFilter */
     , (800782,  46,  939524146) /* TsysMutationFilter */
	 , (800782,  52,  100689404) /* IconUnderlay */
	 , (800782,  55,       6192) /* ProcSpell - Fire Bomb */;

