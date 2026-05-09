DELETE FROM `weenie` WHERE `class_Id` = 800703;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800703, 'Crafted Vhorma Long Bow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800703,   1,        256) /* ItemType - MissileWeapon */
     , (800703,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800703,   5,        325) /* EncumbranceVal */
     , (800703,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800703,  16,          1) /* ItemUseable - No */
     , (800703,  18,          1) /* UiEffects - Magical */
     , (800703,  19,          1) /* Value */
     , (800703,  33,          1) /* Bonded - Slippery */
     , (800703,  44,         50) /* Damage */
     , (800703,  45,          2) /* DamageType - Slash */
     , (800703,  46,         16) /* DefaultCombatStyle - Bow */
     , (800703,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800703,  49,         35) /* WeaponTime */
     , (800703,  50,          1) /* AmmoType - Arrow */
     , (800703,  51,          2) /* CombatUse - Missile */
     , (800703,  52,          2) /* ParentLocation - LeftHand */
     , (800703,  53,          3) /* PlacementPosition - LeftHand */
     , (800703,  60,        200) /* WeaponRange */
     , (800703,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800703, 106,        999) /* ItemSpellcraft */
     , (800703, 107,       2700) /* ItemCurMana */
     , (800703, 108,       2700) /* ItemMaxMana */
     , (800703, 114,          1) /* Attuned - Attuned */
     , (800703, 158,          7) /* WieldRequirements - Level */
     , (800703, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800703, 160,        325) /* WieldDifficulty */
	 , (800703, 179,          2) /* Imbued Effect - Armor Rend */
     , (800703, 204,         15) /* ElementalDamageBonus */
     , (800703, 263,          2) /* ResistanceModifierType */
     , (800703, 353,          8) /* WeaponType - Bow */
     , (800703, 370,          6) /* Damage */
     , (800703, 379,         10) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800703,  22, True ) /* Inscribable */
     , (800703,  65, True ) /* IgnoreMagicResist */
     , (800703,  66, True ) /* IgnoreMagicArmor */
     , (800703,  69, False) /* IsSellable */
     , (800703,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800703,   5,   -0.05) /* ManaRate */
     , (800703,  26,    26.3) /* MaximumVelocity */
     , (800703,  29,     1.5) /* WeaponDefense */
     , (800703,  63,       5) /* DamageMod */
     , (800703, 136,       5) /* CriticalMultiplier */
     , (800703, 147,       1) /* CriticalFrequency */
	 /* , (800703, 156,     0.2) /* ProcSpellRate */
     , (800703, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800703,   1, 'Crafted Vhorma Long Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800703,   1,   33558662) /* Setup */
     , (800703,   3,  536870932) /* SoundTable */
     , (800703,   6,   67113336) /* PaletteBase */
     , (800703,   7,  268436253) /* ClothingBase */
     , (800703,   8,  100676380) /* Icon */
     , (800703,  22,  872415275) /* PhysicsEffectTable */
	 , (800703,  52,  100689404) /* IconUnderlay */
	 /* , (800703,  55,       3936) /* ProcSpell - Fire Bomb */;

