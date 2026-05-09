DELETE FROM `weenie` WHERE `class_Id` = 800397;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800397, 'Shadow Blade of the King', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800397,   1,          1) /* ItemType - MeleeWeapon */
     , (800397,   5,        350) /* EncumbranceVal */
     , (800397,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800397,  16,          1) /* ItemUseable - No */
     , (800397,  18,          1) /* UiEffects - Magical */
     , (800397,  19,        220) /* Value */
     , (800397,  33,         -2) /* Bonded - Destroy */
     , (800397,  37,        999) /* ResistItemAppraisal */
     , (800397,  44,         250) /* Damage */
     , (800397,  45,         32) /* DamageType - Acid */
     , (800397,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800397,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (800397,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800397,  51,          1) /* CombatUse - Melee */
     , (800397,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800397, 106,        999) /* ItemSpellcraft */
     , (800397, 107,       1200) /* ItemCurMana */
     , (800397, 108,       1200) /* ItemMaxMana */
     , (800397, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800397,  11, True ) /* IgnoreCollisions */
     , (800397,  13, True ) /* Ethereal */
     , (800397,  14, True ) /* GravityStatus */
     , (800397,  19, True ) /* Attackable */
     , (800397,  22, True ) /* Inscribable */
     , (800397,  65, True ) /* IgnoreMagicResist */
     , (800397,  66, True ) /* IgnoreMagicArmor */
     , (800397,  69, False) /* IsSellable */
     , (800397,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800397,  22,    0.15) /* DamageVariance */
     , (800397,  26,       0) /* MaximumVelocity */
     , (800397,  29,       1) /* WeaponDefense */
     , (800397,  39,     2.5) /* DefaultScale */
     , (800397,  62,     1.5) /* WeaponOffense */
     , (800397,  63,     2.3) /* DamageMod */
     , (800397, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800397,   1, 'Shadow Blade of the King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800397,   1,   33559903) /* Setup */
     , (800397,   3,  536870932) /* SoundTable */
     , (800397,   8,  100688904) /* Icon */
     , (800397,  22,  872415275) /* PhysicsEffectTable */
     , (800397,  55,       6195) /* ProcSpell - Clouded Soul II */;
