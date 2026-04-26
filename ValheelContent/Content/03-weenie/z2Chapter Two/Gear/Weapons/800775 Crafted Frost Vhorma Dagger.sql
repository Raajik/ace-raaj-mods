DELETE FROM `weenie` WHERE `class_Id` = 800775;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800775, 'Crafted Frost Vhorma Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800775,   1,          1) /* ItemType - MeleeWeapon */
     , (800775,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800775,   5,        275) /* EncumbranceVal */
     , (800775,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800775,  16,          1) /* ItemUseable - No */
     , (800775,  18,          1) /* UiEffects - Magical */
     , (800775,  19,          1) /* Value */
     , (800775,  33,          1) /* Bonded - Slippery */
     , (800775,  44,        150) /* Damage */
     , (800775,  45,          8) /* DamageType - Slash */
     , (800775,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800775,  47,          4) /* AttackType - Slash */
     , (800775,  48,         45) /* WeaponSkill - LightWeapons */
     , (800775,  49,         35) /* WeaponTime */
     , (800775,  51,          1) /* CombatUse - Melee */
     , (800775,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800775, 106,        999) /* ItemSpellcraft */
     , (800775, 107,      10000) /* ItemCurMana */
     , (800775, 108,      10000) /* ItemMaxMana */
     , (800775, 114,          1) /* Attuned - Normal */
     , (800775, 158,          7) /* WieldRequirements - Level */
     , (800775, 159,          1) /* WieldSkillType - Axe */
     , (800775, 160,        325) /* WieldDifficulty */
	 , (800775, 179,          128) /* Imbued Effect - Armor Rend */
     , (800775, 353,          3) /* WeaponType - Axe */
     , (800775, 370,          6) /* Damage */
     , (800775, 379,         10) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800775,  22, True ) /* Inscribable */
     , (800775,  65, True ) /* IgnoreMagicResist */
     , (800775,  66, True ) /* IgnoreMagicArmor */
     , (800775,  69, False) /* IsSellable */
     , (800775,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800775,   5,   -0.05) /* ManaRate */
     , (800775,  21,       0) /* WeaponLength */
     , (800775,  22,    0.25) /* DamageVariance */
     , (800775,  29,    1.30) /* WeaponDefense */
     , (800775,  39,     1.3) /* DefaultScale */
     , (800775,  62,    1.30) /* WeaponOffense */
     , (800775,  63,     1.1) /* DamageMod */
     , (800775, 136,     1.1) /* CriticalMultiplier */
     , (800775, 147,     0.3) /* CriticalFrequency */
     , (800775, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800775,   1, 'Crafted Frost Vhorma Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800775,   1,   33557234) /* Setup */
     , (800775,   3,  536870932) /* SoundTable */
     , (800775,   6,   67113336) /* PaletteBase */
     , (800775,   7,  268436253) /* ClothingBase */
     , (800775,   8,  100672078) /* Icon */
     , (800775,  22,  872415275) /* PhysicsEffectTable */
     , (800775,  36,  234881044) /* MutateFilter */
	 , (800775,  52,  100689404) /* IconUnderlay */
	 , (800775,  55,       6193) /* ProcSpell - Fire Bomb */;

