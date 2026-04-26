DELETE FROM `weenie` WHERE `class_Id` = 800772;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800772, 'Crafted Slashing Vhorma Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800772,   1,          1) /* ItemType - MeleeWeapon */
     , (800772,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800772,   5,        275) /* EncumbranceVal */
     , (800772,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800772,  16,          1) /* ItemUseable - No */
     , (800772,  18,          1) /* UiEffects - Magical */
     , (800772,  19,          1) /* Value */
     , (800772,  33,          1) /* Bonded - Slippery */
     , (800772,  44,        150) /* Damage */
     , (800772,  45,          1) /* DamageType - Slash */
     , (800772,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800772,  47,          4) /* AttackType - Slash */
     , (800772,  48,         45) /* WeaponSkill - LightWeapons */
     , (800772,  49,         35) /* WeaponTime */
     , (800772,  51,          1) /* CombatUse - Melee */
     , (800772,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800772, 106,        999) /* ItemSpellcraft */
     , (800772, 107,      10000) /* ItemCurMana */
     , (800772, 108,      10000) /* ItemMaxMana */
     , (800772, 114,          1) /* Attuned - Normal */
     , (800772, 158,          7) /* WieldRequirements - Level */
     , (800772, 159,          1) /* WieldSkillType - Axe */
     , (800772, 160,        325) /* WieldDifficulty */
	 , (800772, 179,          8) /* Imbued Effect - Armor Rend */
     , (800772, 353,          3) /* WeaponType - Axe */
     , (800772, 370,          6) /* Damage */
     , (800772, 379,         10) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800772,  22, True ) /* Inscribable */
     , (800772,  65, True ) /* IgnoreMagicResist */
     , (800772,  66, True ) /* IgnoreMagicArmor */
     , (800772,  69, False) /* IsSellable */
     , (800772,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800772,   5,   -0.05) /* ManaRate */
     , (800772,  21,       0) /* WeaponLength */
     , (800772,  22,    0.25) /* DamageVariance */
     , (800772,  29,    1.30) /* WeaponDefense */
     , (800772,  39,     1.3) /* DefaultScale */
     , (800772,  62,    1.30) /* WeaponOffense */
     , (800772,  63,     1.1) /* DamageMod */
     , (800772, 136,     1.1) /* CriticalMultiplier */
     , (800772, 147,     0.3) /* CriticalFrequency */
     , (800772, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800772,   1, 'Crafted Slashing Vhorma Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800772,   1,   33557234) /* Setup */
     , (800772,   3,  536870932) /* SoundTable */
     , (800772,   6,   67113336) /* PaletteBase */
     , (800772,   7,  268436253) /* ClothingBase */
     , (800772,   8,  100672078) /* Icon */
     , (800772,  22,  872415275) /* PhysicsEffectTable */
     , (800772,  36,  234881044) /* MutateFilter */
	 , (800772,  52,  100689404) /* IconUnderlay */
	 , (800772,  55,       6190) /* ProcSpell - Fire Bomb */;

