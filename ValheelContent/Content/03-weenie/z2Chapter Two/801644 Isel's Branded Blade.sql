DELETE FROM `weenie` WHERE `class_Id` = 801644;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801644, 'Isels Branded Blade', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801644,   1,          1) /* ItemType - MeleeWeapon */
     , (801644,   5,        350) /* EncumbranceVal */
     , (801644,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801644,  16,          1) /* ItemUseable - No */
     , (801644,  18,          1) /* UiEffects - Magical */
     , (801644,  19,        220) /* Value */
     , (801644,  33,         -2) /* Bonded - Destroy */
     , (801644,  37,        999) /* ResistItemAppraisal */
     , (801644,  44,        400) /* Damage */
     , (801644,  45,         32) /* DamageType - Acid */
     , (801644,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801644,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801644,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801644,  51,          1) /* CombatUse - Melee */
     , (801644,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801644, 106,        999) /* ItemSpellcraft */
     , (801644, 107,       1200) /* ItemCurMana */
     , (801644, 108,       1200) /* ItemMaxMana */
     , (801644, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801644,  11, True ) /* IgnoreCollisions */
     , (801644,  13, True ) /* Ethereal */
     , (801644,  14, True ) /* GravityStatus */
     , (801644,  19, True ) /* Attackable */
     , (801644,  22, True ) /* Inscribable */
     , (801644,  65, True ) /* IgnoreMagicResist */
     , (801644,  66, True ) /* IgnoreMagicArmor */
     , (801644,  69, False) /* IsSellable */
     , (801644,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801644,  22,    0.15) /* DamageVariance */
     , (801644,  26,       0) /* MaximumVelocity */
     , (801644,  29,       1) /* WeaponDefense */
     , (801644,  39,     2.5) /* DefaultScale */
     , (801644,  62,     1.5) /* WeaponOffense */
     , (801644,  63,       1.2) /* DamageMod */
     , (801644, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801644,   1, 'Isel''s Branded Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801644,   1,   33559903) /* Setup */
     , (801644,   3,  536870932) /* SoundTable */
     , (801644,   8,  100688904) /* Icon */
     , (801644,  22,  872415275) /* PhysicsEffectTable */
     , (801644,  55,       6195) /* ProcSpell - Clouded Soul II */;
