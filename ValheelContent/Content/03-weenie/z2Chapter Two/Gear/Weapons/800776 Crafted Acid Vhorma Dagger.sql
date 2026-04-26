DELETE FROM `weenie` WHERE `class_Id` = 800776;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800776, 'Crafted Acid Vhorma Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800776,   1,          1) /* ItemType - MeleeWeapon */
     , (800776,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800776,   5,        275) /* EncumbranceVal */
     , (800776,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800776,  16,          1) /* ItemUseable - No */
     , (800776,  18,          1) /* UiEffects - Magical */
     , (800776,  19,          1) /* Value */
     , (800776,  33,          1) /* Bonded - Slippery */
     , (800776,  44,        150) /* Damage */
     , (800776,  45,          32) /* DamageType - Slash */
     , (800776,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800776,  47,          4) /* AttackType - Slash */
     , (800776,  48,         45) /* WeaponSkill - LightWeapons */
     , (800776,  49,         35) /* WeaponTime */
     , (800776,  51,          1) /* CombatUse - Melee */
     , (800776,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800776, 106,        999) /* ItemSpellcraft */
     , (800776, 107,      10000) /* ItemCurMana */
     , (800776, 108,      10000) /* ItemMaxMana */
     , (800776, 114,          1) /* Attuned - Normal */
     , (800776, 158,          7) /* WieldRequirements - Level */
     , (800776, 159,          1) /* WieldSkillType - Axe */
     , (800776, 160,        325) /* WieldDifficulty */
	 , (800776, 179,          64) /* Imbued Effect - Armor Rend */
     , (800776, 353,          3) /* WeaponType - Axe */
     , (800776, 370,          6) /* Damage */
     , (800776, 379,         10) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800776,  22, True ) /* Inscribable */
     , (800776,  65, True ) /* IgnoreMagicResist */
     , (800776,  66, True ) /* IgnoreMagicArmor */
     , (800776,  69, False) /* IsSellable */
     , (800776,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800776,   5,   -0.05) /* ManaRate */
     , (800776,  21,       0) /* WeaponLength */
     , (800776,  22,    0.25) /* DamageVariance */
     , (800776,  29,    1.30) /* WeaponDefense */
     , (800776,  39,     1.3) /* DefaultScale */
     , (800776,  62,    1.30) /* WeaponOffense */
     , (800776,  63,     1.1) /* DamageMod */
     , (800776, 136,     1.1) /* CriticalMultiplier */
     , (800776, 147,     0.3) /* CriticalFrequency */
     , (800776, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800776,   1, 'Crafted Acid Vhorma Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800776,   1,   33557234) /* Setup */
     , (800776,   3,  536870932) /* SoundTable */
     , (800776,   6,   67113336) /* PaletteBase */
     , (800776,   7,  268436253) /* ClothingBase */
     , (800776,   8,  100672078) /* Icon */
     , (800776,  22,  872415275) /* PhysicsEffectTable */
     , (800776,  36,  234881044) /* MutateFilter */
	 , (800776,  52,  100689404) /* IconUnderlay */
	 , (800776,  55,       6189) /* ProcSpell - Fire Bomb */;

