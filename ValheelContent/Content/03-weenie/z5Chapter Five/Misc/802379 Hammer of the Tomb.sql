DELETE FROM `weenie` WHERE `class_Id` = 802379;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802379, 'Hammer of the Tomb', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802379,   1,          1) /* ItemType - MeleeWeapon */
     , (802379,   3,         39) /* PaletteTemplate - PinkPurple */
     , (802379,   5,        100) /* EncumbranceVal */
     , (802379,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (802379,  16,          1) /* ItemUseable - No */
     , (802379,  18,          1) /* UiEffects - Magical */
     , (802379,  19,          1) /* Value */
     , (802379,  33,          1) /* Bonded - Slippery */
     , (802379,  44,        450) /* Damage */
     , (802379,  45,         64) /* DamageType - Pierce */
     , (802379,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802379,  47,          4) /* AttackType - Thrust */
     , (802379,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (802379,  49,         20) /* WeaponTime */
     , (802379,  51,          1) /* CombatUse - Melee */
     , (802379,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802379, 106,        999) /* ItemSpellcraft */
     , (802379, 107,       2700) /* ItemCurMana */
     , (802379, 108,       2700) /* ItemMaxMana */
     , (802379, 114,          1) /* Attuned - Normal */
     , (802379, 158,          7) /* WieldRequirements - Level */
     , (802379, 159,          1) /* WieldSkillType - Axe */
     , (802379, 160,        325) /* WieldDifficulty */
	 , (802379, 179,        256) /* Imbued Effect - Armor Rend */
     , (802379, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802379,  22, True ) /* Inscribable */
     , (802379,  65, True ) /* IgnoreMagicResist */
     , (802379,  66, True ) /* IgnoreMagicArmor */
     , (802379,  69, False) /* IsSellable */
     , (802379,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802379,   5,   -0.05) /* ManaRate */
     , (802379,  21,       0) /* WeaponLength */
     , (802379,  22,    0.25) /* DamageVariance */
     , (802379,  29,    1.50) /* WeaponDefense */
     , (802379,  39,     1.2) /* DefaultScale */
     , (802379,  62,    1.50) /* WeaponOffense */
     , (802379,  63,       5) /* DamageMod */
     , (802379, 136,     1.1) /* CriticalMultiplier */
     , (802379, 147,     0.3) /* CriticalFrequency */
     , (802379, 152,       5) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802379,   1, 'Hammer of the Tomb') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802379,   1,   33557233) /* Setup */
     , (802379,   3,  536870932) /* SoundTable */
     , (802379,   6,   67113336) /* PaletteBase */
     , (802379,   7,  268436253) /* ClothingBase */
     , (802379,   8,  100672071) /* Icon */
     , (802379,  22,  872415275) /* PhysicsEffectTable */
     , (802379,  30,         87) /* PhysicsScript - BreatheLightning */
     , (802379,  36,  234881044) /* MutateFilter */
	 , (802379,  52,  100689404) /* IconUnderlay */
	 , (802379,  55,       6194) /* ProcSpell - Fire Bomb */;

