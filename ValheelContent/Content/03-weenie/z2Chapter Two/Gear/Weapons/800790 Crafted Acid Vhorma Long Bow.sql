DELETE FROM `weenie` WHERE `class_Id` = 800790;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800790, 'Crafted Acid Vhorma Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800790,   1,        256) /* ItemType - MissileWeapon */
     , (800790,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800790,   5,        325) /* EncumbranceVal */
     , (800790,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800790,  16,          1) /* ItemUseable - No */
     , (800790,  18,          1) /* UiEffects - Magical */
     , (800790,  19,          1) /* Value */
     , (800790,  33,          1) /* Bonded - Slippery */
     , (800790,  44,         75) /* Damage */
     , (800790,  45,         32) /* DamageType - Slash */
     , (800790,  46,         16) /* DefaultCombatStyle - Bow */
     , (800790,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800790,  49,         35) /* WeaponTime */
     , (800790,  50,          1) /* AmmoType - Arrow */
     , (800790,  51,          2) /* CombatUse - Missile */
     , (800790,  52,          2) /* ParentLocation - LeftHand */
     , (800790,  53,          3) /* PlacementPosition - LeftHand */
     , (800790,  60,        200) /* WeaponRange */
     , (800790,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800790, 106,        999) /* ItemSpellcraft */
     , (800790, 107,       2700) /* ItemCurMana */
     , (800790, 108,       2700) /* ItemMaxMana */
     , (800790, 114,          1) /* Attuned - Attuned */
     , (800790, 158,          7) /* WieldRequirements - Level */
     , (800790, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800790, 160,        325) /* WieldDifficulty */
	 , (800790, 179,         32) /* Imbued Effect - Armor Rend */
     , (800790, 204,         15) /* ElementalDamageBonus */
     , (800790, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800790,  22, True ) /* Inscribable */
     , (800790,  65, True ) /* IgnoreMagicResist */
     , (800790,  66, True ) /* IgnoreMagicArmor */
     , (800790,  69, False) /* IsSellable */
     , (800790,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800790,   5,   -0.05) /* ManaRate */
     , (800790,  26,    26.3) /* MaximumVelocity */
     , (800790,  29,    1.30) /* WeaponDefense */
     , (800790,  63,     1.2) /* DamageMod */
     , (800790, 136,     1.1) /* CriticalMultiplier */
     , (800790, 147,     0.3) /* CriticalFrequency */
     , (800790, 152,     1.1) /* ElementalDamageMod */
	 , (800790, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800790,   1, 'Crafted Acid Vhorma Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800790,   1,   33558662) /* Setup */
     , (800790,   3,  536870932) /* SoundTable */
     , (800790,   6,   67113336) /* PaletteBase */
     , (800790,   7,  268436253) /* ClothingBase */
     , (800790,   8,  100676380) /* Icon */
     , (800790,  22,  872415275) /* PhysicsEffectTable */
	 , (800790,  52,  100689404) /* IconUnderlay */
	 , (800790,  55,       6189) /* ProcSpell - Fire Bomb */;

