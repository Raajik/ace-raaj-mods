DELETE FROM `weenie` WHERE `class_Id` = 800278;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800278, 'ValHeel Great Spear', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800278,   1,          1) /* ItemType - MeleeWeapon */
     , (800278,   5,        650) /* EncumbranceVal */
     , (800278,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800278,  16,          1) /* ItemUseable - No */
     , (800278,  19,          1) /* Value */
     , (800278,  44,         43) /* Damage */
     , (800278,  45,          16) /* DamageType - Pierce */
     , (800278,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800278,  47,          2) /* AttackType - Thrust */
     , (800278,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800278,  49,          0) /* WeaponTime */
     , (800278,  51,          5) /* CombatUse - TwoHanded */
     , (800278,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800278, 106,        300) /* ItemSpellcraft */
     , (800278, 107,        800) /* ItemCurMana */
     , (800278, 108,        800) /* ItemMaxMana */
     , (800278, 151,          2) /* HookType - Wall */
     , (800278, 158,          7) /* WieldRequirements - Level */
     , (800278, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (800278, 160,        180) /* WieldDifficulty */
	 , (800278, 179,        512) /* Imbued Effect - Fire */
     , (800278, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800278,  22, True ) /* Inscribable */
     , (800278,  23, True ) /* DestroyOnSell */
     , (800278,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800278,   5,  -0.025) /* ManaRate */
     , (800278,  21,       0) /* WeaponLength */
     , (800278,  22,     0.5) /* DamageVariance */
     , (800278,  26,       0) /* MaximumVelocity */
     , (800278,  29,    1.18) /* WeaponDefense */
     , (800278,  62,    1.38) /* WeaponOffense */
     , (800278,  63,       1) /* DamageMod */
     , (800278, 151,       1) /* IgnoreShield */
     , (800278, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800278,   1, 'ValHeel Great Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800278,   1,   33560674) /* Setup */
     , (800278,   3,  536870932) /* SoundTable */
     , (800278,   8,  100690751) /* Icon */
     , (800278,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800278,  5070,      2)  /* Major Two Handed Combat Aptitude */;
