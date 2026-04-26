DELETE FROM `weenie` WHERE `class_Id` = 801229;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801229, 'Shadow Blade of the King3', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801229,   1,          1) /* ItemType - MeleeWeapon */
     , (801229,   5,        350) /* EncumbranceVal */
     , (801229,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801229,  16,          1) /* ItemUseable - No */
     , (801229,  18,          1) /* UiEffects - Magical */
     , (801229,  19,        220) /* Value */
     , (801229,  33,         -2) /* Bonded - Destroy */
     , (801229,  37,        999) /* ResistItemAppraisal */
     , (801229,  44,         180) /* Damage */
     , (801229,  45,         32) /* DamageType - Acid */
     , (801229,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801229,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801229,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801229,  51,          1) /* CombatUse - Melee */
     , (801229,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801229, 106,        999) /* ItemSpellcraft */
     , (801229, 107,       1200) /* ItemCurMana */
     , (801229, 108,       1200) /* ItemMaxMana */ 
     , (801229, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801229,  11, True ) /* IgnoreCollisions */
     , (801229,  13, True ) /* Ethereal */
     , (801229,  14, True ) /* GravityStatus */
     , (801229,  19, True ) /* Attackable */
     , (801229,  22, True ) /* Inscribable */
     , (801229,  65, True ) /* IgnoreMagicResist */
     , (801229,  66, True ) /* IgnoreMagicArmor */
     , (801229,  69, False) /* IsSellable */
     , (801229,  70, True ) /* IgnoreShield */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801229,  22,    0.15) /* DamageVariance */
     , (801229,  26,       0) /* MaximumVelocity */
     , (801229,  29,       1) /* WeaponDefense */
     , (801229,  39,     2.5) /* DefaultScale */
     , (801229,  62,     1.5) /* WeaponOffense */
     , (801229,  63,       2.8) /* DamageMod */
	 , (801229,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801229,   1, 'Shadow Blade of the King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801229,   1,   33559903) /* Setup */
     , (801229,   3,  536870932) /* SoundTable */
     , (801229,   8,  100688904) /* Icon */
     , (801229,  22,  872415275) /* PhysicsEffectTable */
	 , (801229,  55,       6195) /* ProcSpell - Clouded Soul II */;
