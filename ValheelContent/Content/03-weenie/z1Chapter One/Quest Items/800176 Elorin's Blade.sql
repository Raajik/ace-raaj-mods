DELETE FROM `weenie` WHERE `class_Id` = 800176;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800176, 'Elorin''s Blade', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800176,   1,          1) /* ItemType - MeleeWeapon */
     , (800176,   5,        375) /* EncumbranceVal */
     , (800176,   8,        220) /* Mass */
     , (800176,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800176,  16,          1) /* ItemUseable - No */
     , (800176,  18,          1) /* UiEffects - Magical */
     , (800176,  33,          1) /* Bonded - Bonded */
     , (800176,  44,        160) /* Damage */
     , (800176,  45,          3) /* DamageType - Slash, Pierce */
     , (800176,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800176,  47,          6) /* AttackType - Thrust, Slash */
     , (800176,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800176,  49,         50) /* WeaponTime */
     , (800176,  51,          1) /* CombatUse - Melee */
     , (800176,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800176, 114,          2) /* Attuned - Attuned */
     , (800176, 292,          3) /* Cleaving */
     , (800176, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800176,  23, True ) /* DestroyOnSell */
     , (800176,  69, False) /* IsSellable */
     , (800176,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800176,  21,       0) /* WeaponLength */
     , (800176,  22,    0.25) /* DamageVariance */
     , (800176,  26,       0) /* MaximumVelocity */
     , (800176,  29,       1) /* WeaponDefense */
     , (800176,  39,     2.3) /* DefaultScale */
     , (800176,  62,       1) /* WeaponOffense */
     , (800176,  63,     1.3) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800176,   1, 'Elorin''s Blade') /* Name */
     , (800176,  33, 'ElorinsBlade') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800176,   1,   33558444) /* Setup */
     , (800176,   3,  536870932) /* SoundTable */
     , (800176,   8,  100674849) /* Icon */
     , (800176,  22,  872415275) /* PhysicsEffectTable */;
