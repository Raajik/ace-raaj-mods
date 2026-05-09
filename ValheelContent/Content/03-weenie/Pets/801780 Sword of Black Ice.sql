DELETE FROM `weenie` WHERE `class_Id` = 801780;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801780, 'Sword of Black Ice', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801780,   1,          1) /* ItemType - MeleeWeapon */
     , (801780,   3,         93) /* PaletteTemplate - White */
     , (801780,   5,        350) /* EncumbranceVal */
     , (801780,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801780,  16,          1) /* ItemUseable - No */
     , (801780,  18,          1) /* UiEffects - Magical */
     , (801780,  19,        220) /* Value */
     , (801780,  33,         -2) /* Bonded - Destroy */
     , (801780,  37,        999) /* ResistItemAppraisal */
     , (801780,  44,        800) /* Damage */
     , (801780,  45,       1024) /* DamageType - Acid */
     , (801780,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801780,  47,        160) /* AttackType - DoubleSlash, DoubleThrust */
     , (801780,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (801780,  51,          1) /* CombatUse - Melee */
     , (801780,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801780, 106,        999) /* ItemSpellcraft */
     , (801780, 107,       1200) /* ItemCurMana */
     , (801780, 108,       1200) /* ItemMaxMana */
	 , (801780, 179,      16384) /* Imbued Effect - Critical Strike */
     , (801780, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801780,  11, True ) /* IgnoreCollisions */
     , (801780,  13, True ) /* Ethereal */
     , (801780,  14, True ) /* GravityStatus */
     , (801780,  19, True ) /* Attackable */
     , (801780,  22, True ) /* Inscribable */
     , (801780,  65, True ) /* IgnoreMagicResist */
     , (801780,  66, True ) /* IgnoreMagicArmor */
     , (801780,  69, False) /* IsSellable */
     , (801780,  70, True ) /* IgnoreShieldsBySkill */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801780,  22,     0.1) /* DamageVariance */
     , (801780,  26,       0) /* MaximumVelocity */
     , (801780,  29,       1) /* WeaponDefense */
     , (801780,  39,     2.5) /* DefaultScale */
     , (801780,  62,       1) /* WeaponOffense */
     , (801780,  63,       3) /* DamageMod */
     , (801780, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801780,   1, 'Sword of Black Ice') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801780,   1,   33559903) /* Setup */
     , (801780,   3,  536870932) /* SoundTable */
     , (801780,   8,  100688904) /* Icon */
     , (801780,  22,  872415275) /* PhysicsEffectTable */
     , (801780,  55,       6195) /* ProcSpell - Clouded Soul II */;
