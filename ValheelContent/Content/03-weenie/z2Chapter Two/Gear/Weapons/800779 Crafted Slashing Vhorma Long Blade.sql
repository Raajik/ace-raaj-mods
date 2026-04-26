DELETE FROM `weenie` WHERE `class_Id` = 800779;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800779, 'Crafted Slashing Vhorma Long Blade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800779,   1,          1) /* ItemType - MeleeWeapon */
     , (800779,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800779,   5,        220) /* EncumbranceVal */
     , (800779,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800779,  16,          1) /* ItemUseable - No */
     , (800779,  18,          1) /* UiEffects - Magical */
     , (800779,  19,          1) /* Value */
     , (800779,  33,          1) /* Bonded - Slippery */
     , (800779,  44,         85) /* Damage */
     , (800779,  45,          3) /* DamageType - Slash, Pierce */
     , (800779,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800779,  47,          6) /* AttackType - Thrust, Slash */
     , (800779,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800779,  49,         35) /* WeaponTime */
     , (800779,  51,          5) /* CombatUse - TwoHanded */
     , (800779,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800779, 106,        999) /* ItemSpellcraft */
     , (800779, 107,       2700) /* ItemCurMana */
     , (800779, 108,       2700) /* ItemMaxMana */
     , (800779, 114,          1) /* Attuned - Normal */
     , (800779, 158,          7) /* WieldRequirements - Level */
     , (800779, 159,          1) /* WieldSkillType - Axe */
     , (800779, 160,        325) /* WieldDifficulty */
	 , (800779, 179,          8) /* Imbued Effect - Armor Rend */
     , (800779, 292,          3) /* Cleaving */
     , (800779, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800779,  22, True ) /* Inscribable */
     , (800779,  65, True ) /* IgnoreMagicResist */
     , (800779,  66, True ) /* IgnoreMagicArmor */
     , (800779,  69, False) /* IsSellable */
     , (800779,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800779,   5,   -0.05) /* ManaRate */
     , (800779,  21,       0) /* WeaponLength */
     , (800779,  22,    0.25) /* DamageVariance */
     , (800779,  29,    1.30) /* WeaponDefense */
     , (800779,  39,     1.3) /* DefaultScale */
     , (800779,  62,    1.30) /* WeaponOffense */
     , (800779,  63,     1.1) /* DamageMod */
     , (800779, 136,     1.1) /* CriticalMultiplier */
     , (800779, 147,     0.3) /* CriticalFrequency */
     , (800779, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800779,   1, 'Crafted Slashing Vhorma Long Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800779,   1,   33561145) /* Setup */
     , (800779,   3,  536870932) /* SoundTable */
     , (800779,   6,   67111919) /* PaletteBase */
     , (800779,   7,  268437600) /* ClothingBase */
     , (800779,   8,  100691761) /* Icon */
     , (800779,  22,  872415275) /* PhysicsEffectTable */
     , (800779,  36,  234881042) /* MutateFilter */
     , (800779,  46,  939524146) /* TsysMutationFilter */
	 , (800779,  52,  100689404) /* IconUnderlay */
	 , (800779,  55,       6190) /* ProcSpell - Fire Bomb */;

