DELETE FROM `weenie` WHERE `class_Id` = 800781;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800781, 'Crafted Bludgeoning Vhorma Long Blade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800781,   1,          1) /* ItemType - MeleeWeapon */
     , (800781,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800781,   5,        220) /* EncumbranceVal */
     , (800781,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800781,  16,          1) /* ItemUseable - No */
     , (800781,  18,          1) /* UiEffects - Magical */
     , (800781,  19,          1) /* Value */
     , (800781,  33,          1) /* Bonded - Slippery */
     , (800781,  44,         85) /* Damage */
     , (800781,  45,          4) /* DamageType - Slash, Pierce */
     , (800781,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800781,  47,          6) /* AttackType - Thrust, Slash */
     , (800781,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800781,  49,         35) /* WeaponTime */
     , (800781,  51,          5) /* CombatUse - TwoHanded */
     , (800781,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800781, 106,        999) /* ItemSpellcraft */
     , (800781, 107,       2700) /* ItemCurMana */
     , (800781, 108,       2700) /* ItemMaxMana */
     , (800781, 114,          1) /* Attuned - Normal */
     , (800781, 158,          7) /* WieldRequirements - Level */
     , (800781, 159,          1) /* WieldSkillType - Axe */
     , (800781, 160,        325) /* WieldDifficulty */
	 , (800781, 179,          32) /* Imbued Effect - Armor Rend */
     , (800781, 292,          3) /* Cleaving */
     , (800781, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800781,  22, True ) /* Inscribable */
     , (800781,  65, True ) /* IgnoreMagicResist */
     , (800781,  66, True ) /* IgnoreMagicArmor */
     , (800781,  69, False) /* IsSellable */
     , (800781,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800781,   5,   -0.05) /* ManaRate */
     , (800781,  21,       0) /* WeaponLength */
     , (800781,  22,    0.25) /* DamageVariance */
     , (800781,  29,    1.30) /* WeaponDefense */
     , (800781,  39,     1.3) /* DefaultScale */
     , (800781,  62,    1.30) /* WeaponOffense */
     , (800781,  63,     1.1) /* DamageMod */
     , (800781, 136,     1.1) /* CriticalMultiplier */
     , (800781, 147,     0.3) /* CriticalFrequency */
     , (800781, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800781,   1, 'Crafted Bludgeoning Vhorma Long Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800781,   1,   33561145) /* Setup */
     , (800781,   3,  536870932) /* SoundTable */
     , (800781,   6,   67111919) /* PaletteBase */
     , (800781,   7,  268437600) /* ClothingBase */
     , (800781,   8,  100691761) /* Icon */
     , (800781,  22,  872415275) /* PhysicsEffectTable */
     , (800781,  36,  234881042) /* MutateFilter */
     , (800781,  46,  939524146) /* TsysMutationFilter */
	 , (800781,  52,  100689404) /* IconUnderlay */
	 , (800781,  55,       6196) /* ProcSpell - Fire Bomb */;

