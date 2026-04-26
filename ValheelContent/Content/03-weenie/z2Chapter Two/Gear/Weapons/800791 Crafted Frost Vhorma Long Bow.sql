DELETE FROM `weenie` WHERE `class_Id` = 800791;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800791, 'Crafted Frost Vhorma Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800791,   1,        256) /* ItemType - MissileWeapon */
     , (800791,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800791,   5,        325) /* EncumbranceVal */
     , (800791,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800791,  16,          1) /* ItemUseable - No */
     , (800791,  18,          1) /* UiEffects - Magical */
     , (800791,  19,          1) /* Value */
     , (800791,  33,          1) /* Bonded - Slippery */
     , (800791,  44,         75) /* Damage */
     , (800791,  45,          8) /* DamageType - Slash */
     , (800791,  46,         16) /* DefaultCombatStyle - Bow */
     , (800791,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800791,  49,         35) /* WeaponTime */
     , (800791,  50,          1) /* AmmoType - Arrow */
     , (800791,  51,          2) /* CombatUse - Missile */
     , (800791,  52,          2) /* ParentLocation - LeftHand */
     , (800791,  53,          3) /* PlacementPosition - LeftHand */
     , (800791,  60,        200) /* WeaponRange */
     , (800791,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800791, 106,        999) /* ItemSpellcraft */
     , (800791, 107,       2700) /* ItemCurMana */
     , (800791, 108,       2700) /* ItemMaxMana */
     , (800791, 114,          1) /* Attuned - Attuned */
     , (800791, 158,          7) /* WieldRequirements - Level */
     , (800791, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800791, 160,        325) /* WieldDifficulty */
	 , (800791, 179,        128) /* Imbued Effect - Armor Rend */
     , (800791, 204,         15) /* ElementalDamageBonus */
     , (800791, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800791,  22, True ) /* Inscribable */
     , (800791,  65, True ) /* IgnoreMagicResist */
     , (800791,  66, True ) /* IgnoreMagicArmor */
     , (800791,  69, False) /* IsSellable */
     , (800791,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800791,   5,   -0.05) /* ManaRate */
     , (800791,  26,    26.3) /* MaximumVelocity */
     , (800791,  29,    1.30) /* WeaponDefense */
     , (800791,  63,     1.2) /* DamageMod */
     , (800791, 136,     1.1) /* CriticalMultiplier */
     , (800791, 147,     0.3) /* CriticalFrequency */
     , (800791, 152,     1.1) /* ElementalDamageMod */
	 , (800791, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800791,   1, 'Crafted Frost Vhorma Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800791,   1,   33558662) /* Setup */
     , (800791,   3,  536870932) /* SoundTable */
     , (800791,   6,   67113336) /* PaletteBase */
     , (800791,   7,  268436253) /* ClothingBase */
     , (800791,   8,  100676380) /* Icon */
     , (800791,  22,  872415275) /* PhysicsEffectTable */
	 , (800791,  52,  100689404) /* IconUnderlay */
	 , (800791,  55,       6193) /* ProcSpell - Fire Bomb */;

