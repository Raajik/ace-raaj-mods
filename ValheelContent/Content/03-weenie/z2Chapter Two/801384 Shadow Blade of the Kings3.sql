DELETE FROM `weenie` WHERE `class_Id` = 801384;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801384, 'Shadow Blade of the Kings3', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801384,   1,          1) /* ItemType - MeleeWeapon */
     , (801384,   5,        350) /* EncumbranceVal */
     , (801384,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801384,  16,          1) /* ItemUseable - No */
     , (801384,  18,          1) /* UiEffects - Magical */
     , (801384,  19,        220) /* Value */
     , (801384,  33,         -2) /* Bonded - Destroy */
     , (801384,  37,        999) /* ResistItemAppraisal */
     , (801384,  44,        400) /* Damage */
     , (801384,  45,         32) /* DamageType - Acid */
     , (801384,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801384,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801384,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801384,  51,          1) /* CombatUse - Melee */
     , (801384,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801384, 106,        999) /* ItemSpellcraft */
     , (801384, 107,       1200) /* ItemCurMana */
     , (801384, 108,       1200) /* ItemMaxMana */
     , (801384, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801384,  11, True ) /* IgnoreCollisions */
     , (801384,  13, True ) /* Ethereal */
     , (801384,  14, True ) /* GravityStatus */
     , (801384,  19, True ) /* Attackable */
     , (801384,  22, True ) /* Inscribable */
     , (801384,  65, True ) /* IgnoreMagicResist */
     , (801384,  66, True ) /* IgnoreMagicArmor */
     , (801384,  69, False) /* IsSellable */
     , (801384,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801384,  22,    0.15) /* DamageVariance */
     , (801384,  26,       0) /* MaximumVelocity */
     , (801384,  29,       1) /* WeaponDefense */
     , (801384,  39,     2.5) /* DefaultScale */
     , (801384,  62,     1.5) /* WeaponOffense */
     , (801384,  63,       5) /* DamageMod */
     , (801384, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801384,   1, 'Shadow Blade of the King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801384,   1,   33559903) /* Setup */
     , (801384,   3,  536870932) /* SoundTable */
     , (801384,   8,  100688904) /* Icon */
     , (801384,  22,  872415275) /* PhysicsEffectTable */
     , (801384,  55,       6195) /* ProcSpell - Clouded Soul II */;
