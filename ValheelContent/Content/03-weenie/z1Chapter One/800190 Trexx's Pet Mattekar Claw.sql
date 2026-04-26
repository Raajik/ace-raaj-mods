DELETE FROM `weenie` WHERE `class_Id` = 800190;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800190, 'Trexx''s Pet Mattekar Claw', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800190,   1,          1) /* ItemType - MeleeWeapon */
     , (800190,   5,        250) /* EncumbranceVal */
     , (800190,   8,        100) /* Mass */
     , (800190,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800190,  16,          1) /* ItemUseable - No */
     , (800190,  19,       1100) /* Value */
     , (800190,  44,        120) /* Damage */
     , (800190,  45,         17) /* DamageType - Slash, Fire */
     , (800190,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (800190,  47,          1) /* AttackType - Punch */
     , (800190,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800190,  49,         25) /* WeaponTime */
     , (800190,  51,          1) /* CombatUse - Melee */
     , (800190,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800190, 150,        103) /* HookPlacement - Hook */
     , (800190, 151,          2) /* HookType - Wall */
     , (800190, 166,          8) /* SlayerCreatureType - Tusker */
     , (800190, 292,          2) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800190,  11, True ) /* IgnoreCollisions */
     , (800190,  13, True ) /* Ethereal */
     , (800190,  14, True ) /* GravityStatus */
     , (800190,  19, True ) /* Attackable */
     , (800190,  22, True ) /* Inscribable */
     , (800190,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800190,  21,    0.55) /* WeaponLength */
     , (800190,  22,    0.25) /* DamageVariance */
     , (800190,  26,       0) /* MaximumVelocity */
     , (800190,  29,    1.07) /* WeaponDefense */
     , (800190,  39,     1.5) /* DefaultScale */
     , (800190,  62,    1.05) /* WeaponOffense */
     , (800190,  63,       2) /* DamageMod */
     , (800190, 138,     3.5) /* SlayerDamageBonus */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800190,   1, 'Trexx''s Pet Mattekar Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800190,   1,   33557016) /* Setup */
     , (800190,   3,  536870932) /* SoundTable */
     , (800190,   8,  100671515) /* Icon */
     , (800190,  22,  872415275) /* PhysicsEffectTable */;
