DELETE FROM `weenie` WHERE `class_Id` = 800785;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800785, 'Crafted Flaming Vhorma Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800785,   1,        256) /* ItemType - MissileWeapon */
     , (800785,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800785,   5,        325) /* EncumbranceVal */
     , (800785,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800785,  16,          1) /* ItemUseable - No */
     , (800785,  18,          1) /* UiEffects - Magical */
     , (800785,  19,          1) /* Value */
     , (800785,  33,          1) /* Bonded - Slippery */
     , (800785,  44,         75) /* Damage */
     , (800785,  45,         16) /* DamageType - Fire */
     , (800785,  46,         16) /* DefaultCombatStyle - Bow */
     , (800785,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800785,  49,         35) /* WeaponTime */
     , (800785,  50,          1) /* AmmoType - Arrow */
     , (800785,  51,          2) /* CombatUse - Missile */
     , (800785,  52,          2) /* ParentLocation - LeftHand */
     , (800785,  53,          3) /* PlacementPosition - LeftHand */
     , (800785,  60,        200) /* WeaponRange */
     , (800785,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800785, 106,        999) /* ItemSpellcraft */
     , (800785, 107,       2700) /* ItemCurMana */
     , (800785, 108,       2700) /* ItemMaxMana */
     , (800785, 114,          1) /* Attuned - Attuned */
     , (800785, 158,          7) /* WieldRequirements - Level */
     , (800785, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800785, 160,        325) /* WieldDifficulty */
	 , (800785, 179,        512) /* Imbued Effect - Armor Rend */
     , (800785, 204,         15) /* ElementalDamageBonus */
     , (800785, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800785,  22, True ) /* Inscribable */
     , (800785,  65, True ) /* IgnoreMagicResist */
     , (800785,  66, True ) /* IgnoreMagicArmor */
     , (800785,  69, False) /* IsSellable */
     , (800785,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800785,   5,   -0.05) /* ManaRate */
     , (800785,  26,    26.3) /* MaximumVelocity */
     , (800785,  29,    1.30) /* WeaponDefense */
     , (800785,  63,     1.2) /* DamageMod */
     , (800785, 136,     1.1) /* CriticalMultiplier */
     , (800785, 147,     0.3) /* CriticalFrequency */
     , (800785, 152,     1.1) /* ElementalDamageMod */
	 , (800785, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800785,   1, 'Crafted Flaming Vhorma Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800785,   1,   33558662) /* Setup */
     , (800785,   3,  536870932) /* SoundTable */
     , (800785,   6,   67113336) /* PaletteBase */
     , (800785,   7,  268436253) /* ClothingBase */
     , (800785,   8,  100676380) /* Icon */
     , (800785,  22,  872415275) /* PhysicsEffectTable */
	 , (800785,  52,  100689404) /* IconUnderlay */
	 , (800785,  55,       3936) /* ProcSpell - Fire Bomb */;

