DELETE FROM `weenie` WHERE `class_Id` = 800777;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800777, 'Crafted Static Vhorma Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800777,   1,          1) /* ItemType - MeleeWeapon */
     , (800777,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800777,   5,        275) /* EncumbranceVal */
     , (800777,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800777,  16,          1) /* ItemUseable - No */
     , (800777,  18,          1) /* UiEffects - Magical */
     , (800777,  19,          1) /* Value */
     , (800777,  33,          1) /* Bonded - Slippery */
     , (800777,  44,        150) /* Damage */
     , (800777,  45,         64) /* DamageType - Slash */
     , (800777,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800777,  47,          4) /* AttackType - Slash */
     , (800777,  48,         45) /* WeaponSkill - LightWeapons */
     , (800777,  49,         35) /* WeaponTime */
     , (800777,  51,          1) /* CombatUse - Melee */
     , (800777,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800777, 106,        999) /* ItemSpellcraft */
     , (800777, 107,      10000) /* ItemCurMana */
     , (800777, 108,      10000) /* ItemMaxMana */
     , (800777, 114,          1) /* Attuned - Normal */
     , (800777, 158,          7) /* WieldRequirements - Level */
     , (800777, 159,          1) /* WieldSkillType - Axe */
     , (800777, 160,        325) /* WieldDifficulty */
	 , (800777, 179,        256) /* Imbued Effect - Armor Rend */
     , (800777, 353,          3) /* WeaponType - Axe */
     , (800777, 370,          6) /* Damage */
     , (800777, 379,         10) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800777,  22, True ) /* Inscribable */
     , (800777,  65, True ) /* IgnoreMagicResist */
     , (800777,  66, True ) /* IgnoreMagicArmor */
     , (800777,  69, False) /* IsSellable */
     , (800777,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800777,   5,   -0.05) /* ManaRate */
     , (800777,  21,       0) /* WeaponLength */
     , (800777,  22,    0.25) /* DamageVariance */
     , (800777,  29,    1.30) /* WeaponDefense */
     , (800777,  39,     1.3) /* DefaultScale */
     , (800777,  62,    1.30) /* WeaponOffense */
     , (800777,  63,     1.1) /* DamageMod */
     , (800777, 136,     1.1) /* CriticalMultiplier */
     , (800777, 147,     0.3) /* CriticalFrequency */
     , (800777, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800777,   1, 'Crafted Static Vhorma Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800777,   1,   33557234) /* Setup */
     , (800777,   3,  536870932) /* SoundTable */
     , (800777,   6,   67113336) /* PaletteBase */
     , (800777,   7,  268436253) /* ClothingBase */
     , (800777,   8,  100672078) /* Icon */
     , (800777,  22,  872415275) /* PhysicsEffectTable */
     , (800777,  36,  234881044) /* MutateFilter */
	 , (800777,  52,  100689404) /* IconUnderlay */
	 , (800777,  55,       6194) /* ProcSpell - Fire Bomb */;

