DELETE FROM `weenie` WHERE `class_Id` = 800792;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800792, 'Crafter Flaming Vhorma Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800792,   1,          1) /* ItemType - MeleeWeapon */
     , (800792,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800792,   5,        100) /* EncumbranceVal */
     , (800792,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800792,  16,          1) /* ItemUseable - No */
     , (800792,  18,          1) /* UiEffects - Magical */
     , (800792,  19,          1) /* Value */
     , (800792,  33,          1) /* Bonded - Slippery */
     , (800792,  44,        120) /* Damage */
     , (800792,  45,          16) /* DamageType - Pierce */
     , (800792,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800792,  47,          2) /* AttackType - Thrust */
     , (800792,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800792,  49,         20) /* WeaponTime */
     , (800792,  51,          1) /* CombatUse - Melee */
     , (800792,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800792, 106,        999) /* ItemSpellcraft */
     , (800792, 107,       2700) /* ItemCurMana */
     , (800792, 108,       2700) /* ItemMaxMana */
     , (800792, 114,          1) /* Attuned - Normal */
     , (800792, 158,          7) /* WieldRequirements - Level */
     , (800792, 159,          1) /* WieldSkillType - Axe */
     , (800792, 160,        325) /* WieldDifficulty */
	 , (800792, 179,          512) /* Imbued Effect - Armor Rend */
     , (800792, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800792,  22, True ) /* Inscribable */
     , (800792,  65, True ) /* IgnoreMagicResist */
     , (800792,  66, True ) /* IgnoreMagicArmor */
     , (800792,  69, False) /* IsSellable */
     , (800792,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800792,   5,   -0.05) /* ManaRate */
     , (800792,  21,       0) /* WeaponLength */
     , (800792,  22,    0.25) /* DamageVariance */
     , (800792,  29,    1.30) /* WeaponDefense */
     , (800792,  39,     1.3) /* DefaultScale */
     , (800792,  62,    1.30) /* WeaponOffense */
     , (800792,  63,     1.1) /* DamageMod */
     , (800792, 136,     1.1) /* CriticalMultiplier */
     , (800792, 147,     0.3) /* CriticalFrequency */
     , (800792, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800792,   1, 'Crafter Flaming Vhorma Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800792,   1,   33557233) /* Setup */
     , (800792,   3,  536870932) /* SoundTable */
     , (800792,   6,   67113336) /* PaletteBase */
     , (800792,   7,  268436253) /* ClothingBase */
     , (800792,   8,  100672071) /* Icon */
     , (800792,  22,  872415275) /* PhysicsEffectTable */
     , (800792,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800792,  36,  234881044) /* MutateFilter */
	 , (800792,  52,  100689404) /* IconUnderlay */
	 , (800792,  55,       3936) /* ProcSpell - Fire Bomb */;

