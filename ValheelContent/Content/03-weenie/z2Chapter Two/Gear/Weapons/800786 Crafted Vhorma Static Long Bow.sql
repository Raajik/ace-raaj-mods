DELETE FROM `weenie` WHERE `class_Id` = 800786;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800786, 'Crafted Static Vhorma Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800786,   1,        256) /* ItemType - MissileWeapon */
     , (800786,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800786,   5,        325) /* EncumbranceVal */
     , (800786,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800786,  16,          1) /* ItemUseable - No */
     , (800786,  18,          1) /* UiEffects - Magical */
     , (800786,  19,          1) /* Value */
     , (800786,  33,          1) /* Bonded - Slippery */
     , (800786,  44,         75) /* Damage */
     , (800786,  45,         64) /* DamageType - Electric */
     , (800786,  46,         16) /* DefaultCombatStyle - Bow */
     , (800786,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800786,  49,         35) /* WeaponTime */
     , (800786,  50,          1) /* AmmoType - Arrow */
     , (800786,  51,          2) /* CombatUse - Missile */
     , (800786,  52,          2) /* ParentLocation - LeftHand */
     , (800786,  53,          3) /* PlacementPosition - LeftHand */
     , (800786,  60,        200) /* WeaponRange */
     , (800786,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800786, 106,        999) /* ItemSpellcraft */
     , (800786, 107,       2700) /* ItemCurMana */
     , (800786, 108,       2700) /* ItemMaxMana */
     , (800786, 114,          1) /* Attuned - Attuned */
     , (800786, 158,          7) /* WieldRequirements - Level */
     , (800786, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800786, 160,        325) /* WieldDifficulty */
	 , (800786, 179,        256) /* Imbued Effect - Armor Rend */
     , (800786, 204,         15) /* ElementalDamageBonus */
     , (800786, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800786,  22, True ) /* Inscribable */
     , (800786,  65, True ) /* IgnoreMagicResist */
     , (800786,  66, True ) /* IgnoreMagicArmor */
     , (800786,  69, False) /* IsSellable */
     , (800786,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800786,   5,   -0.05) /* ManaRate */
     , (800786,  26,    26.3) /* MaximumVelocity */
     , (800786,  29,    1.30) /* WeaponDefense */
     , (800786,  63,     1.2) /* DamageMod */
     , (800786, 136,     1.1) /* CriticalMultiplier */
     , (800786, 147,     0.3) /* CriticalFrequency */
     , (800786, 152,     1.1) /* ElementalDamageMod */
	 , (800786, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800786,   1, 'Crafted Static Vhorma Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800786,   1,   33558662) /* Setup */
     , (800786,   3,  536870932) /* SoundTable */
     , (800786,   6,   67113336) /* PaletteBase */
     , (800786,   7,  268436253) /* ClothingBase */
     , (800786,   8,  100676380) /* Icon */
     , (800786,  22,  872415275) /* PhysicsEffectTable */
	 , (800786,  52,  100689404) /* IconUnderlay */
	 , (800786,  55,       6194) /* ProcSpell - Fire Bomb */;

