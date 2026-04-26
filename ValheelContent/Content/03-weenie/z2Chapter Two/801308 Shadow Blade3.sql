DELETE FROM `weenie` WHERE `class_Id` = 801308;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801308, 'Shadow Blade of the King4', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801308,   1,          1) /* ItemType - MeleeWeapon */
     , (801308,   5,        350) /* EncumbranceVal */
     , (801308,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801308,  16,          1) /* ItemUseable - No */
     , (801308,  18,          1) /* UiEffects - Magical */
     , (801308,  19,        220) /* Value */
     , (801308,  33,         -2) /* Bonded - Destroy */
     , (801308,  37,        999) /* ResistItemAppraisal */
     , (801308,  44,        300) /* Damage */
     , (801308,  45,         32) /* DamageType - Acid */
     , (801308,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801308,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801308,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801308,  51,          1) /* CombatUse - Melee */
     , (801308,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801308, 106,        999) /* ItemSpellcraft */
     , (801308, 107,       1200) /* ItemCurMana */
     , (801308, 108,       1200) /* ItemMaxMana */
     , (801308, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801308,  11, True ) /* IgnoreCollisions */
     , (801308,  13, True ) /* Ethereal */
     , (801308,  14, True ) /* GravityStatus */
     , (801308,  19, True ) /* Attackable */
     , (801308,  22, True ) /* Inscribable */
     , (801308,  65, True ) /* IgnoreMagicResist */
     , (801308,  66, True ) /* IgnoreMagicArmor */
     , (801308,  69, False) /* IsSellable */
     , (801308,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801308,  22,    0.15) /* DamageVariance */
     , (801308,  26,       0) /* MaximumVelocity */
     , (801308,  29,       1) /* WeaponDefense */
     , (801308,  39,     2.5) /* DefaultScale */
     , (801308,  62,     1.5) /* WeaponOffense */
     , (801308,  63,     2.5) /* DamageMod */
     , (801308,  76,     0.1) /* Translucency */
     , (801308, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801308,   1, 'Shadow Blade of the King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801308,   1,   33559903) /* Setup */
     , (801308,   3,  536870932) /* SoundTable */
     , (801308,   8,  100688904) /* Icon */
     , (801308,  22,  872415275) /* PhysicsEffectTable */
     , (801308,  55,       6195) /* ProcSpell - Clouded Soul II */;
