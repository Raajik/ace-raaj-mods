DELETE FROM `weenie` WHERE `class_Id` = 800773;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800773, 'Crafted Piercing Vhorma Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800773,   1,          1) /* ItemType - MeleeWeapon */
     , (800773,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800773,   5,        275) /* EncumbranceVal */
     , (800773,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800773,  16,          1) /* ItemUseable - No */
     , (800773,  18,          1) /* UiEffects - Magical */
     , (800773,  19,          1) /* Value */
     , (800773,  33,          1) /* Bonded - Slippery */
     , (800773,  44,        150) /* Damage */
     , (800773,  45,          2) /* DamageType - Slash */
     , (800773,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800773,  47,          4) /* AttackType - Slash */
     , (800773,  48,         45) /* WeaponSkill - LightWeapons */
     , (800773,  49,         35) /* WeaponTime */
     , (800773,  51,          1) /* CombatUse - Melee */
     , (800773,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800773, 106,        999) /* ItemSpellcraft */
     , (800773, 107,      10000) /* ItemCurMana */
     , (800773, 108,      10000) /* ItemMaxMana */
     , (800773, 114,          1) /* Attuned - Normal */
     , (800773, 158,          7) /* WieldRequirements - Level */
     , (800773, 159,          1) /* WieldSkillType - Axe */
     , (800773, 160,        325) /* WieldDifficulty */
	 , (800773, 179,          16) /* Imbued Effect - Armor Rend */
     , (800773, 353,          3) /* WeaponType - Axe */
     , (800773, 370,          6) /* Damage */
     , (800773, 379,         10) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800773,  22, True ) /* Inscribable */
     , (800773,  65, True ) /* IgnoreMagicResist */
     , (800773,  66, True ) /* IgnoreMagicArmor */
     , (800773,  69, False) /* IsSellable */
     , (800773,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800773,   5,   -0.05) /* ManaRate */
     , (800773,  21,       0) /* WeaponLength */
     , (800773,  22,    0.25) /* DamageVariance */
     , (800773,  29,    1.30) /* WeaponDefense */
     , (800773,  39,     1.3) /* DefaultScale */
     , (800773,  62,    1.30) /* WeaponOffense */
     , (800773,  63,     1.1) /* DamageMod */
     , (800773, 136,     1.1) /* CriticalMultiplier */
     , (800773, 147,     0.3) /* CriticalFrequency */
     , (800773, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800773,   1, 'Crafted Piercing Vhorma Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800773,   1,   33557234) /* Setup */
     , (800773,   3,  536870932) /* SoundTable */
     , (800773,   6,   67113336) /* PaletteBase */
     , (800773,   7,  268436253) /* ClothingBase */
     , (800773,   8,  100672078) /* Icon */
     , (800773,  22,  872415275) /* PhysicsEffectTable */
     , (800773,  36,  234881044) /* MutateFilter */
	 , (800773,  52,  100689404) /* IconUnderlay */
	 , (800773,  55,       6192) /* ProcSpell - Fire Bomb */;

