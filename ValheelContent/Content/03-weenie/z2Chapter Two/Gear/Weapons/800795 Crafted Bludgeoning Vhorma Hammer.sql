DELETE FROM `weenie` WHERE `class_Id` = 800795;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800795, 'Crafted Bludgeoning Vhorma Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800795,   1,          1) /* ItemType - MeleeWeapon */
     , (800795,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800795,   5,        100) /* EncumbranceVal */
     , (800795,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800795,  16,          1) /* ItemUseable - No */
     , (800795,  18,          1) /* UiEffects - Magical */
     , (800795,  19,          1) /* Value */
     , (800795,  33,          1) /* Bonded - Slippery */
     , (800795,  44,        120) /* Damage */
     , (800795,  45,          4) /* DamageType - Pierce */
     , (800795,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800795,  47,          2) /* AttackType - Thrust */
     , (800795,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800795,  49,         20) /* WeaponTime */
     , (800795,  51,          1) /* CombatUse - Melee */
     , (800795,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800795, 106,        999) /* ItemSpellcraft */
     , (800795, 107,       2700) /* ItemCurMana */
     , (800795, 108,       2700) /* ItemMaxMana */
     , (800795, 114,          1) /* Attuned - Normal */
     , (800795, 158,          7) /* WieldRequirements - Level */
     , (800795, 159,          1) /* WieldSkillType - Axe */
     , (800795, 160,        325) /* WieldDifficulty */
	 , (800795, 179,          32) /* Imbued Effect - Armor Rend */
     , (800795, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800795,  22, True ) /* Inscribable */
     , (800795,  65, True ) /* IgnoreMagicResist */
     , (800795,  66, True ) /* IgnoreMagicArmor */
     , (800795,  69, False) /* IsSellable */
     , (800795,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800795,   5,   -0.05) /* ManaRate */
     , (800795,  21,       0) /* WeaponLength */
     , (800795,  22,    0.25) /* DamageVariance */
     , (800795,  29,    1.30) /* WeaponDefense */
     , (800795,  39,     1.3) /* DefaultScale */
     , (800795,  62,    1.30) /* WeaponOffense */
     , (800795,  63,     1.1) /* DamageMod */
     , (800795, 136,     1.1) /* CriticalMultiplier */
     , (800795, 147,     0.3) /* CriticalFrequency */
     , (800795, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800795,   1, 'Crafted Bludgeoning Vhorma Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800795,   1,   33557233) /* Setup */
     , (800795,   3,  536870932) /* SoundTable */
     , (800795,   6,   67113336) /* PaletteBase */
     , (800795,   7,  268436253) /* ClothingBase */
     , (800795,   8,  100672071) /* Icon */
     , (800795,  22,  872415275) /* PhysicsEffectTable */
     , (800795,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800795,  36,  234881044) /* MutateFilter */
	 , (800795,  52,  100689404) /* IconUnderlay */
	 , (800795,  55,       6196) /* ProcSpell - Fire Bomb */;

