DELETE FROM `weenie` WHERE `class_Id` = 801228;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801228, 'Shadow Blade of the King2', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801228,   1,          1) /* ItemType - MeleeWeapon */
     , (801228,   5,        350) /* EncumbranceVal */
     , (801228,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801228,  16,          1) /* ItemUseable - No */
     , (801228,  18,          1) /* UiEffects - Magical */
     , (801228,  19,        220) /* Value */
     , (801228,  33,         -2) /* Bonded - Destroy */
     , (801228,  37,        999) /* ResistItemAppraisal */
     , (801228,  44,         150) /* Damage */
     , (801228,  45,         32) /* DamageType - Acid */
     , (801228,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801228,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801228,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801228,  51,          1) /* CombatUse - Melee */
     , (801228,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801228, 106,        999) /* ItemSpellcraft */
     , (801228, 107,       1200) /* ItemCurMana */
     , (801228, 108,       1200) /* ItemMaxMana */ 
     , (801228, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801228,  11, True ) /* IgnoreCollisions */
     , (801228,  13, True ) /* Ethereal */
     , (801228,  14, True ) /* GravityStatus */
     , (801228,  19, True ) /* Attackable */
     , (801228,  22, True ) /* Inscribable */
     , (801228,  65, True ) /* IgnoreMagicResist */
     , (801228,  66, True ) /* IgnoreMagicArmor */
     , (801228,  69, False) /* IsSellable */
     , (801228,  70, True ) /* IgnoreShield */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801228,  22,    0.15) /* DamageVariance */
     , (801228,  26,       0) /* MaximumVelocity */
     , (801228,  29,       1) /* WeaponDefense */
     , (801228,  39,     2.5) /* DefaultScale */
     , (801228,  62,     1.5) /* WeaponOffense */
     , (801228,  63,       2.3) /* DamageMod */
	 , (801228,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801228,   1, 'Shadow Blade of the King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801228,   1,   33559903) /* Setup */
     , (801228,   3,  536870932) /* SoundTable */
     , (801228,   8,  100688904) /* Icon */
     , (801228,  22,  872415275) /* PhysicsEffectTable */
	 , (801228,  55,       6195) /* ProcSpell - Clouded Soul II */;
