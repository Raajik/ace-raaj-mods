DELETE FROM `weenie` WHERE `class_Id` = 800798;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800798, 'Crafted Frost Vhorma Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800798,   1,          1) /* ItemType - MeleeWeapon */
     , (800798,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800798,   5,        100) /* EncumbranceVal */
     , (800798,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800798,  16,          1) /* ItemUseable - No */
     , (800798,  18,          1) /* UiEffects - Magical */
     , (800798,  19,          1) /* Value */
     , (800798,  33,          1) /* Bonded - Slippery */
     , (800798,  44,        120) /* Damage */
     , (800798,  45,          8) /* DamageType - Pierce */
     , (800798,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800798,  47,          2) /* AttackType - Thrust */
     , (800798,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800798,  49,         20) /* WeaponTime */
     , (800798,  51,          1) /* CombatUse - Melee */
     , (800798,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800798, 106,        999) /* ItemSpellcraft */
     , (800798, 107,       2700) /* ItemCurMana */
     , (800798, 108,       2700) /* ItemMaxMana */
     , (800798, 114,          1) /* Attuned - Normal */
     , (800798, 158,          7) /* WieldRequirements - Level */
     , (800798, 159,          1) /* WieldSkillType - Axe */
     , (800798, 160,        325) /* WieldDifficulty */
	 , (800798, 179,          128) /* Imbued Effect - Armor Rend */
     , (800798, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800798,  22, True ) /* Inscribable */
     , (800798,  65, True ) /* IgnoreMagicResist */
     , (800798,  66, True ) /* IgnoreMagicArmor */
     , (800798,  69, False) /* IsSellable */
     , (800798,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800798,   5,   -0.05) /* ManaRate */
     , (800798,  21,       0) /* WeaponLength */
     , (800798,  22,    0.25) /* DamageVariance */
     , (800798,  29,    1.30) /* WeaponDefense */
     , (800798,  39,     1.3) /* DefaultScale */
     , (800798,  62,    1.30) /* WeaponOffense */
     , (800798,  63,     1.1) /* DamageMod */
     , (800798, 136,     1.1) /* CriticalMultiplier */
     , (800798, 147,     0.3) /* CriticalFrequency */
     , (800798, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800798,   1, 'Crafted Frost Vhorma Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800798,   1,   33557233) /* Setup */
     , (800798,   3,  536870932) /* SoundTable */
     , (800798,   6,   67113336) /* PaletteBase */
     , (800798,   7,  268436253) /* ClothingBase */
     , (800798,   8,  100672071) /* Icon */
     , (800798,  22,  872415275) /* PhysicsEffectTable */
     , (800798,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800798,  36,  234881044) /* MutateFilter */
	 , (800798,  52,  100689404) /* IconUnderlay */
	 , (800798,  55,       6193) /* ProcSpell - Fire Bomb */;

