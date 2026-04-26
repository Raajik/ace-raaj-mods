DELETE FROM `weenie` WHERE `class_Id` = 800788;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800788, 'Crafted Bludgeoning Vhorma Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800788,   1,        256) /* ItemType - MissileWeapon */
     , (800788,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800788,   5,        325) /* EncumbranceVal */
     , (800788,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800788,  16,          1) /* ItemUseable - No */
     , (800788,  18,          1) /* UiEffects - Magical */
     , (800788,  19,          1) /* Value */
     , (800788,  33,          1) /* Bonded - Slippery */
     , (800788,  44,         75) /* Damage */
     , (800788,  45,          4) /* DamageType - Slash */
     , (800788,  46,         16) /* DefaultCombatStyle - Bow */
     , (800788,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800788,  49,         35) /* WeaponTime */
     , (800788,  50,          1) /* AmmoType - Arrow */
     , (800788,  51,          2) /* CombatUse - Missile */
     , (800788,  52,          2) /* ParentLocation - LeftHand */
     , (800788,  53,          3) /* PlacementPosition - LeftHand */
     , (800788,  60,        200) /* WeaponRange */
     , (800788,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800788, 106,        999) /* ItemSpellcraft */
     , (800788, 107,       2700) /* ItemCurMana */
     , (800788, 108,       2700) /* ItemMaxMana */
     , (800788, 114,          1) /* Attuned - Attuned */
     , (800788, 158,          7) /* WieldRequirements - Level */
     , (800788, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800788, 160,        325) /* WieldDifficulty */
	 , (800788, 179,          4) /* Imbued Effect - Armor Rend */
     , (800788, 204,         15) /* ElementalDamageBonus */
     , (800788, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800788,  22, True ) /* Inscribable */
     , (800788,  65, True ) /* IgnoreMagicResist */
     , (800788,  66, True ) /* IgnoreMagicArmor */
     , (800788,  69, False) /* IsSellable */
     , (800788,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800788,   5,   -0.05) /* ManaRate */
     , (800788,  26,    26.3) /* MaximumVelocity */
     , (800788,  29,    1.30) /* WeaponDefense */
     , (800788,  63,     1.2) /* DamageMod */
     , (800788, 136,     1.1) /* CriticalMultiplier */
     , (800788, 147,     0.3) /* CriticalFrequency */
     , (800788, 152,     1.1) /* ElementalDamageMod */
	 , (800788, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800788,   1, 'Crafted Bludgeoning Vhorma Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800788,   1,   33558662) /* Setup */
     , (800788,   3,  536870932) /* SoundTable */
     , (800788,   6,   67113336) /* PaletteBase */
     , (800788,   7,  268436253) /* ClothingBase */
     , (800788,   8,  100676380) /* Icon */
     , (800788,  22,  872415275) /* PhysicsEffectTable */
	 , (800788,  52,  100689404) /* IconUnderlay */
	 , (800788,  55,       6196) /* ProcSpell - Fire Bomb */;

