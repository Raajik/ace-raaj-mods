DELETE FROM `weenie` WHERE `class_Id` = 800281;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800281, 'ValHeel Sword', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800281,   1,          1) /* ItemType - MeleeWeapon */
     , (800281,   5,        550) /* EncumbranceVal */
     , (800281,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800281,  16,          1) /* ItemUseable - No */
     , (800281,  19,          1) /* Value */
     , (800281,  44,         66) /* Damage */
     , (800281,  45,          16) /* DamageType - Slash, Pierce */
     , (800281,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800281,  47,          6) /* AttackType - Thrust, Slash */
     , (800281,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800281,  49,          0) /* WeaponTime */
     , (800281,  51,          1) /* CombatUse - Melee */
     , (800281,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800281, 106,        300) /* ItemSpellcraft */
     , (800281, 107,        800) /* ItemCurMana */
     , (800281, 108,        800) /* ItemMaxMana */
     , (800281, 150,        103) /* HookPlacement - Hook */
     , (800281, 151,          2) /* HookType - Wall */
     , (800281, 158,          7) /* WieldRequirements - Level */
     , (800281, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (800281, 160,        180) /* WieldDifficulty */
	 , (800281, 179,        512) /* Imbued Effect - Fire */
     , (800281, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800281,  22, True ) /* Inscribable */
     , (800281,  23, True ) /* DestroyOnSell */
     , (800281,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800281,   5,  -0.025) /* ManaRate */
     , (800281,  21,       1) /* WeaponLength */
     , (800281,  22,     0.4) /* DamageVariance */
     , (800281,  26,       0) /* MaximumVelocity */
     , (800281,  29,    1.18) /* WeaponDefense */
     , (800281,  39,       1) /* DefaultScale */
     , (800281,  62,    1.38) /* WeaponOffense */
     , (800281,  63,       1) /* DamageMod */
     , (800281, 151,       1) /* IgnoreShield */
     , (800281, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800281,   1, 'ValHeel Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800281,   1,   33560676) /* Setup */
     , (800281,   3,  536870932) /* SoundTable */
     , (800281,   8,  100690284) /* Icon */
     , (800281,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800281,  2509,      2)  /* Major Finesse Weapon Aptitude */;
