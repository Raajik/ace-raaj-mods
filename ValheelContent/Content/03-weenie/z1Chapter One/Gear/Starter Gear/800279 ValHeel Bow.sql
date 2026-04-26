DELETE FROM `weenie` WHERE `class_Id` = 800279;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800279, 'ValHeel Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800279,   1,        256) /* ItemType - MissileWeapon */
     , (800279,   5,        950) /* EncumbranceVal */
     , (800279,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800279,  16,          1) /* ItemUseable - No */
     , (800279,  19,          1) /* Value */
     , (800279,  44,         20) /* Damage */
     , (800279,  45,         16) /* DamageType - Fire */
     , (800279,  46,         16) /* DefaultCombatStyle - Bow */
     , (800279,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800279,  49,         10) /* WeaponTime */
     , (800279,  50,          1) /* AmmoType - Arrow */
     , (800279,  51,          2) /* CombatUse - Missile */
     , (800279,  52,          2) /* ParentLocation - LeftHand */
     , (800279,  53,          3) /* PlacementPosition - LeftHand */
     , (800279,  60,        175) /* WeaponRange */
     , (800279,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800279, 106,        300) /* ItemSpellcraft */
     , (800279, 107,        800) /* ItemCurMana */
     , (800279, 108,        800) /* ItemMaxMana */
     , (800279, 150,        103) /* HookPlacement - Hook */
     , (800279, 151,          2) /* HookType - Wall */
     , (800279, 158,          7) /* WieldRequirements - Level */
     , (800279, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800279, 160,        180) /* WieldDifficulty */
	 , (800279, 179,        512) /* Imbued Effect - Fire */
     , (800279, 204,          7) /* ElementalDamageBonus */
     , (800279, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800279,  22, True ) /* Inscribable */
     , (800279,  23, True ) /* DestroyOnSell */
     , (800279,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800279,   5,  -0.025) /* ManaRate */
     , (800279,  26,      50) /* MaximumVelocity */
     , (800279,  29,    1.18) /* WeaponDefense */
     , (800279,  62,       1) /* WeaponOffense */
     , (800279,  63,    2.25) /* DamageMod */
     , (800279, 151,       1) /* IgnoreShield */
     , (800279, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800279,   1, 'ValHeel Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800279,   1,   33560669) /* Setup */
     , (800279,   3,  536870932) /* SoundTable */
     , (800279,   8,  100690277) /* Icon */
     , (800279,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800279,  2505,      2)  /* Major Missile Weapon Aptitude */;
