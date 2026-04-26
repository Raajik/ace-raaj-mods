DELETE FROM `weenie` WHERE `class_Id` = 800789;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800789, 'Crafted Piercing Vhorma Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800789,   1,        256) /* ItemType - MissileWeapon */
     , (800789,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800789,   5,        325) /* EncumbranceVal */
     , (800789,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800789,  16,          1) /* ItemUseable - No */
     , (800789,  18,          1) /* UiEffects - Magical */
     , (800789,  19,          1) /* Value */
     , (800789,  33,          1) /* Bonded - Slippery */
     , (800789,  44,         75) /* Damage */
     , (800789,  45,          2) /* DamageType - Piercing */
     , (800789,  46,         16) /* DefaultCombatStyle - Bow */
     , (800789,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800789,  49,         35) /* WeaponTime */
     , (800789,  50,          1) /* AmmoType - Arrow */
     , (800789,  51,          2) /* CombatUse - Missile */
     , (800789,  52,          2) /* ParentLocation - LeftHand */
     , (800789,  53,          3) /* PlacementPosition - LeftHand */
     , (800789,  60,        200) /* WeaponRange */
     , (800789,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800789, 106,        999) /* ItemSpellcraft */
     , (800789, 107,       2700) /* ItemCurMana */
     , (800789, 108,       2700) /* ItemMaxMana */
     , (800789, 114,          1) /* Attuned - Attuned */
     , (800789, 158,          7) /* WieldRequirements - Level */
     , (800789, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800789, 160,        325) /* WieldDifficulty */
	 , (800789, 179,          2) /* Imbued Effect - Armor Rend */
     , (800789, 204,         15) /* ElementalDamageBonus */
     , (800789, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800789,  22, True ) /* Inscribable */
     , (800789,  65, True ) /* IgnoreMagicResist */
     , (800789,  66, True ) /* IgnoreMagicArmor */
     , (800789,  69, False) /* IsSellable */
     , (800789,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800789,   5,   -0.05) /* ManaRate */
     , (800789,  26,    26.3) /* MaximumVelocity */
     , (800789,  29,    1.30) /* WeaponDefense */
     , (800789,  63,     1.2) /* DamageMod */
     , (800789, 136,     1.1) /* CriticalMultiplier */
     , (800789, 147,     0.3) /* CriticalFrequency */
     , (800789, 152,     1.1) /* ElementalDamageMod */
	 , (800789, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800789,   1, 'Crafted Piercing Vhorma Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800789,   1,   33558662) /* Setup */
     , (800789,   3,  536870932) /* SoundTable */
     , (800789,   6,   67113336) /* PaletteBase */
     , (800789,   7,  268436253) /* ClothingBase */
     , (800789,   8,  100676380) /* Icon */
     , (800789,  22,  872415275) /* PhysicsEffectTable */
	 , (800789,  52,  100689404) /* IconUnderlay */
	 , (800789,  55,       6192) /* ProcSpell - Fire Bomb */;

