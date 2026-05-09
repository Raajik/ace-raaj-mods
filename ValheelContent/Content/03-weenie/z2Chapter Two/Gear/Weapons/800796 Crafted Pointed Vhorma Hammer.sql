DELETE FROM `weenie` WHERE `class_Id` = 800796;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800796, 'Crafted Pointed Vhorma Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800796,   1,          1) /* ItemType - MeleeWeapon */
     , (800796,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800796,   5,        100) /* EncumbranceVal */
     , (800796,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800796,  16,          1) /* ItemUseable - No */
     , (800796,  18,          1) /* UiEffects - Magical */
     , (800796,  19,          1) /* Value */
     , (800796,  33,          1) /* Bonded - Slippery */
     , (800796,  44,        120) /* Damage */
     , (800796,  45,          2) /* DamageType - Pierce */
     , (800796,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800796,  47,          2) /* AttackType - Thrust */
     , (800796,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800796,  49,         20) /* WeaponTime */
     , (800796,  51,          1) /* CombatUse - Melee */
     , (800796,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800796, 106,        999) /* ItemSpellcraft */
     , (800796, 107,       2700) /* ItemCurMana */
     , (800796, 108,       2700) /* ItemMaxMana */
     , (800796, 114,          1) /* Attuned - Normal */
     , (800796, 158,          7) /* WieldRequirements - Level */
     , (800796, 159,          1) /* WieldSkillType - Axe */
     , (800796, 160,        325) /* WieldDifficulty */
	 , (800796, 179,          16) /* Imbued Effect - Armor Rend */
     , (800796, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800796,  22, True ) /* Inscribable */
     , (800796,  65, True ) /* IgnoreMagicResist */
     , (800796,  66, True ) /* IgnoreMagicArmor */
     , (800796,  69, False) /* IsSellable */
     , (800796,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800796,   5,   -0.05) /* ManaRate */
     , (800796,  21,       0) /* WeaponLength */
     , (800796,  22,    0.25) /* DamageVariance */
     , (800796,  29,    1.30) /* WeaponDefense */
     , (800796,  39,     1.3) /* DefaultScale */
     , (800796,  62,    1.30) /* WeaponOffense */
     , (800796,  63,     1.1) /* DamageMod */
     , (800796, 136,     1.1) /* CriticalMultiplier */
     , (800796, 147,     0.3) /* CriticalFrequency */
     , (800796, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800796,   1, 'Crafted Pointed Vhorma Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800796,   1,   33557233) /* Setup */
     , (800796,   3,  536870932) /* SoundTable */
     , (800796,   6,   67113336) /* PaletteBase */
     , (800796,   7,  268436253) /* ClothingBase */
     , (800796,   8,  100672071) /* Icon */
     , (800796,  22,  872415275) /* PhysicsEffectTable */
     , (800796,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800796,  36,  234881044) /* MutateFilter */
	 , (800796,  52,  100689404) /* IconUnderlay */
	 , (800796,  55,       6192) /* ProcSpell - Fire Bomb */;

