DELETE FROM `weenie` WHERE `class_Id` = 801293;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801293, 'Shadow Blade of the King2', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801293,   1,          1) /* ItemType - MeleeWeapon */
     , (801293,   5,        350) /* EncumbranceVal */
     , (801293,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801293,  16,          1) /* ItemUseable - No */
     , (801293,  18,          1) /* UiEffects - Magical */
     , (801293,  19,        220) /* Value */
     , (801293,  33,         -2) /* Bonded - Destroy */
     , (801293,  37,        999) /* ResistItemAppraisal */
     , (801293,  44,        250) /* Damage */
     , (801293,  45,         32) /* DamageType - Acid */
     , (801293,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801293,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801293,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801293,  51,          1) /* CombatUse - Melee */
     , (801293,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801293, 106,        999) /* ItemSpellcraft */
     , (801293, 107,       1200) /* ItemCurMana */
     , (801293, 108,       1200) /* ItemMaxMana */
     , (801293, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801293,  11, True ) /* IgnoreCollisions */
     , (801293,  13, True ) /* Ethereal */
     , (801293,  14, True ) /* GravityStatus */
     , (801293,  19, True ) /* Attackable */
     , (801293,  22, True ) /* Inscribable */
     , (801293,  65, True ) /* IgnoreMagicResist */
     , (801293,  66, True ) /* IgnoreMagicArmor */
     , (801293,  69, False) /* IsSellable */
     , (801293,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801293,  22,    0.15) /* DamageVariance */
     , (801293,  26,       0) /* MaximumVelocity */
     , (801293,  29,       1) /* WeaponDefense */
     , (801293,  39,     2.5) /* DefaultScale */
     , (801293,  62,     1.5) /* WeaponOffense */
     , (801293,  63,     2.5) /* DamageMod */
     , (801293, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801293,   1, 'Shadow Blade of the King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801293,   1,   33559903) /* Setup */
     , (801293,   3,  536870932) /* SoundTable */
     , (801293,   8,  100688904) /* Icon */
     , (801293,  22,  872415275) /* PhysicsEffectTable */
     , (801293,  55,       6195) /* ProcSpell - Clouded Soul II */;
