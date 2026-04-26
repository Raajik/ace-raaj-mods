DELETE FROM `weenie` WHERE `class_Id` = 800793;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800793, 'Crafter Static Vhorma Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800793,   1,          1) /* ItemType - MeleeWeapon */
     , (800793,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800793,   5,        100) /* EncumbranceVal */
     , (800793,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800793,  16,          1) /* ItemUseable - No */
     , (800793,  18,          1) /* UiEffects - Magical */
     , (800793,  19,          1) /* Value */
     , (800793,  33,          1) /* Bonded - Slippery */
     , (800793,  44,        120) /* Damage */
     , (800793,  45,          64) /* DamageType - Pierce */
     , (800793,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800793,  47,          2) /* AttackType - Thrust */
     , (800793,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800793,  49,         20) /* WeaponTime */
     , (800793,  51,          1) /* CombatUse - Melee */
     , (800793,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800793, 106,        999) /* ItemSpellcraft */
     , (800793, 107,       2700) /* ItemCurMana */
     , (800793, 108,       2700) /* ItemMaxMana */
     , (800793, 114,          1) /* Attuned - Normal */
     , (800793, 158,          7) /* WieldRequirements - Level */
     , (800793, 159,          1) /* WieldSkillType - Axe */
     , (800793, 160,        325) /* WieldDifficulty */
	 , (800793, 179,          256) /* Imbued Effect - Armor Rend */
     , (800793, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800793,  22, True ) /* Inscribable */
     , (800793,  65, True ) /* IgnoreMagicResist */
     , (800793,  66, True ) /* IgnoreMagicArmor */
     , (800793,  69, False) /* IsSellable */
     , (800793,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800793,   5,   -0.05) /* ManaRate */
     , (800793,  21,       0) /* WeaponLength */
     , (800793,  22,    0.25) /* DamageVariance */
     , (800793,  29,    1.30) /* WeaponDefense */
     , (800793,  39,     1.3) /* DefaultScale */
     , (800793,  62,    1.30) /* WeaponOffense */
     , (800793,  63,     1.1) /* DamageMod */
     , (800793, 136,     1.1) /* CriticalMultiplier */
     , (800793, 147,     0.3) /* CriticalFrequency */
     , (800793, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800793,   1, 'Crafter Flaming Vhorma Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800793,   1,   33557233) /* Setup */
     , (800793,   3,  536870932) /* SoundTable */
     , (800793,   6,   67113336) /* PaletteBase */
     , (800793,   7,  268436253) /* ClothingBase */
     , (800793,   8,  100672071) /* Icon */
     , (800793,  22,  872415275) /* PhysicsEffectTable */
     , (800793,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800793,  36,  234881044) /* MutateFilter */
	 , (800793,  52,  100689404) /* IconUnderlay */
	 , (800793,  55,       6194) /* ProcSpell - Fire Bomb */;

