DELETE FROM `weenie` WHERE `class_Id` = 801651;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801651, 'Krampus Candy Stick', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801651,   1,          1) /* ItemType - MeleeWeapon */
     , (801651,   5,        350) /* EncumbranceVal */
     , (801651,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801651,  16,          1) /* ItemUseable - No */
     , (801651,  18,          1) /* UiEffects - Magical */
     , (801651,  19,        220) /* Value */
     , (801651,  33,         -2) /* Bonded - Destroy */
     , (801651,  37,        999) /* ResistItemAppraisal */
     , (801651,  44,        100) /* Damage */
     , (801651,  45,         32) /* DamageType - Acid */
     , (801651,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801651,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801651,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801651,  51,          1) /* CombatUse - Melee */
     , (801651,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801651, 106,        999) /* ItemSpellcraft */
     , (801651, 107,       1200) /* ItemCurMana */
     , (801651, 108,       1200) /* ItemMaxMana */
     , (801651, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801651,  11, True ) /* IgnoreCollisions */
     , (801651,  13, True ) /* Ethereal */
     , (801651,  14, True ) /* GravityStatus */
     , (801651,  19, True ) /* Attackable */
     , (801651,  22, True ) /* Inscribable */
     , (801651,  65, True ) /* IgnoreMagicResist */
     , (801651,  66, True ) /* IgnoreMagicArmor */
     , (801651,  69, False) /* IsSellable */
     , (801651,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801651,  22,    0.15) /* DamageVariance */
     , (801651,  26,       0) /* MaximumVelocity */
     , (801651,  29,       1) /* WeaponDefense */
     , (801651,  39,       0.5) /* DefaultScale */
     , (801651,  62,     1.5) /* WeaponOffense */
     , (801651,  63,       5) /* DamageMod */
     , (801651, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801651,   1, 'Krampus'' Candy Stick') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801651,   1,   33557441) /* Setup */
     , (801651,   3,  536870932) /* SoundTable */
     , (801651,   8,  100688904) /* Icon */
     , (801651,  22,  872415275) /* PhysicsEffectTable */
     , (801651,  55,       6195) /* ProcSpell - Clouded Soul II */;
