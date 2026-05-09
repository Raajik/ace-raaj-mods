DELETE FROM `weenie` WHERE `class_Id` = 800797;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800797, 'Crafted Acid Vhorma Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800797,   1,          1) /* ItemType - MeleeWeapon */
     , (800797,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800797,   5,        100) /* EncumbranceVal */
     , (800797,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800797,  16,          1) /* ItemUseable - No */
     , (800797,  18,          1) /* UiEffects - Magical */
     , (800797,  19,          1) /* Value */
     , (800797,  33,          1) /* Bonded - Slippery */
     , (800797,  44,        120) /* Damage */
     , (800797,  45,          32) /* DamageType - Pierce */
     , (800797,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800797,  47,          2) /* AttackType - Thrust */
     , (800797,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800797,  49,         20) /* WeaponTime */
     , (800797,  51,          1) /* CombatUse - Melee */
     , (800797,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800797, 106,        999) /* ItemSpellcraft */
     , (800797, 107,       2700) /* ItemCurMana */
     , (800797, 108,       2700) /* ItemMaxMana */
     , (800797, 114,          1) /* Attuned - Normal */
     , (800797, 158,          7) /* WieldRequirements - Level */
     , (800797, 159,          1) /* WieldSkillType - Axe */
     , (800797, 160,        325) /* WieldDifficulty */
	 , (800797, 179,          64) /* Imbued Effect - Armor Rend */
     , (800797, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800797,  22, True ) /* Inscribable */
     , (800797,  65, True ) /* IgnoreMagicResist */
     , (800797,  66, True ) /* IgnoreMagicArmor */
     , (800797,  69, False) /* IsSellable */
     , (800797,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800797,   5,   -0.05) /* ManaRate */
     , (800797,  21,       0) /* WeaponLength */
     , (800797,  22,    0.25) /* DamageVariance */
     , (800797,  29,    1.30) /* WeaponDefense */
     , (800797,  39,     1.3) /* DefaultScale */
     , (800797,  62,    1.30) /* WeaponOffense */
     , (800797,  63,     1.1) /* DamageMod */
     , (800797, 136,     1.1) /* CriticalMultiplier */
     , (800797, 147,     0.3) /* CriticalFrequency */
     , (800797, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800797,   1, 'Crafted Acid Vhorma Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800797,   1,   33557233) /* Setup */
     , (800797,   3,  536870932) /* SoundTable */
     , (800797,   6,   67113336) /* PaletteBase */
     , (800797,   7,  268436253) /* ClothingBase */
     , (800797,   8,  100672071) /* Icon */
     , (800797,  22,  872415275) /* PhysicsEffectTable */
     , (800797,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800797,  36,  234881044) /* MutateFilter */
	 , (800797,  52,  100689404) /* IconUnderlay */
	 , (800797,  55,       6189) /* ProcSpell - Fire Bomb */;

