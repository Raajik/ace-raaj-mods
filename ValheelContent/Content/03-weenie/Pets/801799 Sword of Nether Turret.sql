DELETE FROM `weenie` WHERE `class_Id` = 801799;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801799, 'Sword of Nether Turret', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801799,   1,          1) /* ItemType - MeleeWeapon */
     , (801799,   3,         93) /* PaletteTemplate - White */
     , (801799,   5,        350) /* EncumbranceVal */
     , (801799,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801799,  16,          1) /* ItemUseable - No */
     , (801799,  18,          1) /* UiEffects - Magical */
     , (801799,  19,        220) /* Value */
     , (801799,  33,         -2) /* Bonded - Destroy */
     , (801799,  37,        999) /* ResistItemAppraisal */
     , (801799,  44,        800) /* Damage */
     , (801799,  45,       1024) /* DamageType - Acid */
     , (801799,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801799,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801799,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801799,  51,          1) /* CombatUse - Melee */
     , (801799,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801799, 106,        999) /* ItemSpellcraft */
     , (801799, 107,       1200) /* ItemCurMana */
     , (801799, 108,       1200) /* ItemMaxMana */
	 , (801799, 179,      16384) /* Imbued Effect - Critical Strike */
     , (801799, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801799,  11, True ) /* IgnoreCollisions */
     , (801799,  13, True ) /* Ethereal */
     , (801799,  14, True ) /* GravityStatus */
     , (801799,  19, True ) /* Attackable */
     , (801799,  22, True ) /* Inscribable */
     , (801799,  65, True ) /* IgnoreMagicResist */
     , (801799,  66, True ) /* IgnoreMagicArmor */
     , (801799,  69, False) /* IsSellable */
     , (801799,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801799,  22,     0.1) /* DamageVariance */
     , (801799,  26,       0) /* MaximumVelocity */
     , (801799,  29,       1) /* WeaponDefense */
     , (801799,  39,     2.5) /* DefaultScale */
     , (801799,  62,       1) /* WeaponOffense */
     , (801799,  63,       3) /* DamageMod */
     , (801799,  76,       1) /* Translucency */
     , (801799, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801799,   1, 'Sword of Nether Turret') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801799,   1,   33559903) /* Setup */
     , (801799,   3,  536870932) /* SoundTable */
     , (801799,   8,  100688904) /* Icon */
     , (801799,  22,  872415275) /* PhysicsEffectTable */
     , (801799,  55,       6195) /* ProcSpell - Clouded Soul II */;
