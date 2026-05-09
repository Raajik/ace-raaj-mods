DELETE FROM `weenie` WHERE `class_Id` = 800178;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800178, 'Elorin''s Blade2', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800178,   1,          1) /* ItemType - MeleeWeapon */
     , (800178,   5,        375) /* EncumbranceVal */
     , (800178,   8,        220) /* Mass */
     , (800178,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800178,  16,          1) /* ItemUseable - No */
     , (800178,  18,          1) /* UiEffects - Magical */
     , (800178,  33,         -2) /* Bonded - Destroy */
     , (800178,  44,        160) /* Damage */
     , (800178,  45,          3) /* DamageType - Slash, Pierce */
     , (800178,  46,          8) /* DefaultCombatStyle - OneHanded */
     , (800178,  47,          6) /* AttackType - Thrust, Slash */
     , (800178,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800178,  49,         50) /* WeaponTime */
     , (800178,  51,          1) /* CombatUse - Melee */
     , (800178,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800178, 114,          1) /* Attuned - Attuned */
	 , (800178, 179,  1073741824) /* Imbued Effect - Always Crit */
     , (800178, 292,          3) /* Cleaving */
     , (800178, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800178,  23, True ) /* DestroyOnSell */
     , (800178,  69, False) /* IsSellable */
     , (800178,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800178,  21,       0) /* WeaponLength */
     , (800178,  22,    0.25) /* DamageVariance */
     , (800178,  26,       0) /* MaximumVelocity */
     , (800178,  29,     1.5) /* WeaponDefense */
     , (800178,  39,     2.3) /* DefaultScale */
     , (800178,  62,     1.5) /* WeaponOffense */
     , (800178,  63,     1.5) /* DamageMod */
     , (800178, 151,       1) /* IgnoreShield */
     , (800178, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800178,   1, 'Elorin''s Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800178,   1,   33558444) /* Setup */
     , (800178,   3,  536870932) /* SoundTable */
     , (800178,   8,  100674849) /* Icon */
     , (800178,  22,  872415275) /* PhysicsEffectTable */;
