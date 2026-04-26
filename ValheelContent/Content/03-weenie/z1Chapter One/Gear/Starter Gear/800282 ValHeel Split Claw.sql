DELETE FROM `weenie` WHERE `class_Id` = 800282;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800282, 'ValHeel Split Claw', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800282,   1,          1) /* ItemType - MeleeWeapon */
     , (800282,   5,        125) /* EncumbranceVal */
     , (800282,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800282,  16,          1) /* ItemUseable - No */
     , (800282,  19,          1) /* Value */
     , (800282,  44,         59) /* Damage */
     , (800282,  45,          16) /* DamageType - Slash */
     , (800282,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (800282,  47,          1) /* AttackType - Punch */
     , (800282,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800282,  49,          1) /* WeaponTime */
     , (800282,  51,          1) /* CombatUse - Melee */
     , (800282,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800282, 106,        300) /* ItemSpellcraft */
     , (800282, 107,        800) /* ItemCurMana */
     , (800282, 108,        800) /* ItemMaxMana */
     , (800282, 151,          2) /* HookType - Wall */
     , (800282, 158,          7) /* WieldRequirements - Level */
     , (800282, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (800282, 160,        180) /* WieldDifficulty */
	 , (800282, 179,        512) /* Imbued Effect - Fire */
     , (800282, 353,          1) /* WeaponType - Unarmed */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800282,  22, True ) /* Inscribable */
     , (800282,  23, True ) /* DestroyOnSell */
     , (800282,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800282,   5,  -0.025) /* ManaRate */
     , (800282,  21,       0) /* WeaponLength */
     , (800282,  22,     0.5) /* DamageVariance */
     , (800282,  26,       0) /* MaximumVelocity */
     , (800282,  29,    1.18) /* WeaponDefense */
     , (800282,  62,    1.38) /* WeaponOffense */
     , (800282,  63,       1) /* DamageMod */
     , (800282, 151,       1) /* IgnoreShield */
     , (800282, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800282,   1, 'ValHeel Split Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800282,   1,   33560670) /* Setup */
     , (800282,   3,  536870932) /* SoundTable */
     , (800282,   7,  268437358) /* ClothingBase */
     , (800282,   8,  100690278) /* Icon */
     , (800282,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800282,  2531,      2)  /* Major Heavy Weapon Aptitude */;
