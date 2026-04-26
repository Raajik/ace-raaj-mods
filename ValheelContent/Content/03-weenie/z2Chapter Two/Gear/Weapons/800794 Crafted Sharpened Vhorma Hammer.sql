DELETE FROM `weenie` WHERE `class_Id` = 800794;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800794, 'Crafted Sharpened Vhorma Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800794,   1,          1) /* ItemType - MeleeWeapon */
     , (800794,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800794,   5,        100) /* EncumbranceVal */
     , (800794,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800794,  16,          1) /* ItemUseable - No */
     , (800794,  18,          1) /* UiEffects - Magical */
     , (800794,  19,          1) /* Value */
     , (800794,  33,          1) /* Bonded - Slippery */
     , (800794,  44,        120) /* Damage */
     , (800794,  45,          1) /* DamageType - Pierce */
     , (800794,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800794,  47,          2) /* AttackType - Thrust */
     , (800794,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800794,  49,         20) /* WeaponTime */
     , (800794,  51,          1) /* CombatUse - Melee */
     , (800794,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800794, 106,        999) /* ItemSpellcraft */
     , (800794, 107,       2700) /* ItemCurMana */
     , (800794, 108,       2700) /* ItemMaxMana */
     , (800794, 114,          1) /* Attuned - Normal */
     , (800794, 158,          7) /* WieldRequirements - Level */
     , (800794, 159,          1) /* WieldSkillType - Axe */
     , (800794, 160,        325) /* WieldDifficulty */
	 , (800794, 179,          8) /* Imbued Effect - Armor Rend */
     , (800794, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800794,  22, True ) /* Inscribable */
     , (800794,  65, True ) /* IgnoreMagicResist */
     , (800794,  66, True ) /* IgnoreMagicArmor */
     , (800794,  69, False) /* IsSellable */
     , (800794,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800794,   5,   -0.05) /* ManaRate */
     , (800794,  21,       0) /* WeaponLength */
     , (800794,  22,    0.25) /* DamageVariance */
     , (800794,  29,    1.30) /* WeaponDefense */
     , (800794,  39,     1.3) /* DefaultScale */
     , (800794,  62,    1.30) /* WeaponOffense */
     , (800794,  63,     1.1) /* DamageMod */
     , (800794, 136,     1.1) /* CriticalMultiplier */
     , (800794, 147,     0.3) /* CriticalFrequency */
     , (800794, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800794,   1, 'Crafted Sharpened Vhorma Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800794,   1,   33557233) /* Setup */
     , (800794,   3,  536870932) /* SoundTable */
     , (800794,   6,   67113336) /* PaletteBase */
     , (800794,   7,  268436253) /* ClothingBase */
     , (800794,   8,  100672071) /* Icon */
     , (800794,  22,  872415275) /* PhysicsEffectTable */
     , (800794,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800794,  36,  234881044) /* MutateFilter */
	 , (800794,  52,  100689404) /* IconUnderlay */
	 , (800794,  55,       6190) /* ProcSpell - Fire Bomb */;

