DELETE FROM `weenie` WHERE `class_Id` = 801671;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801671, 'ShemtarsBrandedBlade', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801671,   1,          1) /* ItemType - MeleeWeapon */
     , (801671,   5,        350) /* EncumbranceVal */
     , (801671,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801671,  16,          1) /* ItemUseable - No */
     , (801671,  18,          1) /* UiEffects - Magical */
     , (801671,  19,        220) /* Value */
     , (801671,  33,         -2) /* Bonded - Destroy */
     , (801671,  37,        999) /* ResistItemAppraisal */
     , (801671,  44,        400) /* Damage */
     , (801671,  45,         32) /* DamageType - Acid */
     , (801671,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801671,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801671,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801671,  51,          1) /* CombatUse - Melee */
     , (801671,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801671, 106,        999) /* ItemSpellcraft */
     , (801671, 107,       1200) /* ItemCurMana */
     , (801671, 108,       1200) /* ItemMaxMana */
     , (801671, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801671,  11, True ) /* IgnoreCollisions */
     , (801671,  13, True ) /* Ethereal */
     , (801671,  14, True ) /* GravityStatus */
     , (801671,  19, True ) /* Attackable */
     , (801671,  22, True ) /* Inscribable */
     , (801671,  65, True ) /* IgnoreMagicResist */
     , (801671,  66, True ) /* IgnoreMagicArmor */
     , (801671,  69, False) /* IsSellable */
     , (801671,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801671,  22,    0.15) /* DamageVariance */
     , (801671,  26,       0) /* MaximumVelocity */
     , (801671,  29,       1) /* WeaponDefense */
     , (801671,  39,     2.5) /* DefaultScale */
     , (801671,  62,     1.5) /* WeaponOffense */
     , (801671,  63,     1.5) /* DamageMod */
     , (801671, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801671,   1, 'Shemtar''s Branded Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801671,   1,   33559903) /* Setup */
     , (801671,   3,  536870932) /* SoundTable */
     , (801671,   8,  100688904) /* Icon */
     , (801671,  22,  872415275) /* PhysicsEffectTable */
     , (801671,  55,       6195) /* ProcSpell - Clouded Soul II */;
