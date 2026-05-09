DELETE FROM `weenie` WHERE `class_Id` = 800787;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800787, 'Crafted Slashing Vhorma Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800787,   1,        256) /* ItemType - MissileWeapon */
     , (800787,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800787,   5,        325) /* EncumbranceVal */
     , (800787,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800787,  16,          1) /* ItemUseable - No */
     , (800787,  18,          1) /* UiEffects - Magical */
     , (800787,  19,          1) /* Value */
     , (800787,  33,          1) /* Bonded - Slippery */
     , (800787,  44,         75) /* Damage */
     , (800787,  45,          1) /* DamageType - Slash */
     , (800787,  46,         16) /* DefaultCombatStyle - Bow */
     , (800787,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800787,  49,         35) /* WeaponTime */
     , (800787,  50,          1) /* AmmoType - Arrow */
     , (800787,  51,          2) /* CombatUse - Missile */
     , (800787,  52,          2) /* ParentLocation - LeftHand */
     , (800787,  53,          3) /* PlacementPosition - LeftHand */
     , (800787,  60,        200) /* WeaponRange */
     , (800787,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800787, 106,        999) /* ItemSpellcraft */
     , (800787, 107,       2700) /* ItemCurMana */
     , (800787, 108,       2700) /* ItemMaxMana */
     , (800787, 114,          1) /* Attuned - Attuned */
     , (800787, 158,          7) /* WieldRequirements - Level */
     , (800787, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800787, 160,        325) /* WieldDifficulty */
	 , (800787, 179,          1) /* Imbued Effect - Armor Rend */
     , (800787, 204,         15) /* ElementalDamageBonus */
     , (800787, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800787,  22, True ) /* Inscribable */
     , (800787,  65, True ) /* IgnoreMagicResist */
     , (800787,  66, True ) /* IgnoreMagicArmor */
     , (800787,  69, False) /* IsSellable */
     , (800787,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800787,   5,   -0.05) /* ManaRate */
     , (800787,  26,    26.3) /* MaximumVelocity */
     , (800787,  29,    1.30) /* WeaponDefense */
     , (800787,  63,     1.2) /* DamageMod */
     , (800787, 136,     1.1) /* CriticalMultiplier */
     , (800787, 147,     0.3) /* CriticalFrequency */
     , (800787, 152,     1.1) /* ElementalDamageMod */
	 , (800787, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800787,   1, 'Crafted Slashing Vhorma Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800787,   1,   33558662) /* Setup */
     , (800787,   3,  536870932) /* SoundTable */
     , (800787,   6,   67113336) /* PaletteBase */
     , (800787,   7,  268436253) /* ClothingBase */
     , (800787,   8,  100676380) /* Icon */
     , (800787,  22,  872415275) /* PhysicsEffectTable */
	 , (800787,  52,  100689404) /* IconUnderlay */
	 , (800787,  55,       6190) /* ProcSpell - Fire Bomb */;

