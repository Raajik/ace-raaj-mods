DELETE FROM `weenie` WHERE `class_Id` = 800778;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800778, 'Crafted Flaming Vhorma Long Blade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800778,   1,          1) /* ItemType - MeleeWeapon */
     , (800778,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800778,   5,        220) /* EncumbranceVal */
     , (800778,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800778,  16,          1) /* ItemUseable - No */
     , (800778,  18,          1) /* UiEffects - Magical */
     , (800778,  19,          1) /* Value */
     , (800778,  33,          1) /* Bonded - Slippery */
     , (800778,  44,         85) /* Damage */
     , (800778,  45,         16) /* DamageType - Slash, Pierce */
     , (800778,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800778,  47,          6) /* AttackType - Thrust, Slash */
     , (800778,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800778,  49,         35) /* WeaponTime */
     , (800778,  51,          5) /* CombatUse - TwoHanded */
     , (800778,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800778, 106,        999) /* ItemSpellcraft */
     , (800778, 107,       2700) /* ItemCurMana */
     , (800778, 108,       2700) /* ItemMaxMana */
     , (800778, 114,          1) /* Attuned - Normal */
     , (800778, 158,          7) /* WieldRequirements - Level */
     , (800778, 159,          1) /* WieldSkillType - Axe */
     , (800778, 160,        325) /* WieldDifficulty */
	 , (800778, 179,        512) /* Imbued Effect - Armor Rend */
     , (800778, 292,          3) /* Cleaving */
     , (800778, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800778,  22, True ) /* Inscribable */
     , (800778,  65, True ) /* IgnoreMagicResist */
     , (800778,  66, True ) /* IgnoreMagicArmor */
     , (800778,  69, False) /* IsSellable */
     , (800778,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800778,   5,   -0.05) /* ManaRate */
     , (800778,  21,       0) /* WeaponLength */
     , (800778,  22,    0.25) /* DamageVariance */
     , (800778,  29,    1.30) /* WeaponDefense */
     , (800778,  39,     1.3) /* DefaultScale */
     , (800778,  62,    1.30) /* WeaponOffense */
     , (800778,  63,     1.1) /* DamageMod */
     , (800778, 136,     1.1) /* CriticalMultiplier */
     , (800778, 147,     0.3) /* CriticalFrequency */
     , (800778, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800778,   1, 'Crafted Flaming Vhorma Long Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800778,   1,   33561145) /* Setup */
     , (800778,   3,  536870932) /* SoundTable */
     , (800778,   6,   67111919) /* PaletteBase */
     , (800778,   7,  268437600) /* ClothingBase */
     , (800778,   8,  100691761) /* Icon */
     , (800778,  22,  872415275) /* PhysicsEffectTable */
     , (800778,  36,  234881042) /* MutateFilter */
     , (800778,  46,  939524146) /* TsysMutationFilter */
	 , (800778,  52,  100689404) /* IconUnderlay */
	 , (800778,  55,       3936) /* ProcSpell - Fire Bomb */;

