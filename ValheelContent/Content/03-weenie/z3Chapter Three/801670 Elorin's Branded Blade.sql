DELETE FROM `weenie` WHERE `class_Id` = 801670;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801670, 'ElorinsBrandedBlade', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801670,   1,          1) /* ItemType - MeleeWeapon */
     , (801670,   5,        350) /* EncumbranceVal */
     , (801670,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801670,  16,          1) /* ItemUseable - No */
     , (801670,  18,          1) /* UiEffects - Magical */
     , (801670,  19,        220) /* Value */
     , (801670,  33,         -2) /* Bonded - Destroy */
     , (801670,  37,        999) /* ResistItemAppraisal */
     , (801670,  44,        400) /* Damage */
     , (801670,  45,         32) /* DamageType - Acid */
     , (801670,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801670,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801670,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801670,  51,          1) /* CombatUse - Melee */
     , (801670,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801670, 106,        999) /* ItemSpellcraft */
     , (801670, 107,       1200) /* ItemCurMana */
     , (801670, 108,       1200) /* ItemMaxMana */
     , (801670, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801670,  11, True ) /* IgnoreCollisions */
     , (801670,  13, True ) /* Ethereal */
     , (801670,  14, True ) /* GravityStatus */
     , (801670,  19, True ) /* Attackable */
     , (801670,  22, True ) /* Inscribable */
     , (801670,  65, True ) /* IgnoreMagicResist */
     , (801670,  66, True ) /* IgnoreMagicArmor */
     , (801670,  69, False) /* IsSellable */
     , (801670,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801670,  22,    0.15) /* DamageVariance */
     , (801670,  26,       0) /* MaximumVelocity */
     , (801670,  29,       1) /* WeaponDefense */
     , (801670,  39,     2.5) /* DefaultScale */
     , (801670,  62,     1.5) /* WeaponOffense */
     , (801670,  63,     1.3) /* DamageMod */
     , (801670, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801670,   1, 'Elorin''s Branded Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801670,   1,   33559903) /* Setup */
     , (801670,   3,  536870932) /* SoundTable */
     , (801670,   8,  100688904) /* Icon */
     , (801670,  22,  872415275) /* PhysicsEffectTable */
     , (801670,  55,       6195) /* ProcSpell - Clouded Soul II */;
