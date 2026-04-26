DELETE FROM `weenie` WHERE `class_Id` = 800188;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800188, 'Fowler''s Arm', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800188,   1,          1) /* ItemType - MeleeWeapon */
     , (800188,   3,         39) /* PaletteTemplate - Black */
     , (800188,   5,        560) /* EncumbranceVal */
     , (800188,   8,        140) /* Mass */
     , (800188,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800188,  16,          1) /* ItemUseable - No */
     , (800188,  19,       2000) /* Value */
     , (800188,  44,        200) /* Damage */
     , (800188,  45,          4) /* DamageType - Bludgeon */
     , (800188,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800188,  47,          6) /* AttackType - Thrust, Slash */
     , (800188,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800188,  49,         25) /* WeaponTime */
     , (800188,  51,          1) /* CombatUse - Melee */
     , (800188,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800188, 150,        103) /* HookPlacement - Hook */
     , (800188, 151,          2) /* HookType - Wall */
     , (800188, 166,         13) /* SlayerCreatureType - Golem */
     , (800188, 292,          2) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800188,  11, True ) /* IgnoreCollisions */
     , (800188,  13, True ) /* Ethereal */
     , (800188,  14, True ) /* GravityStatus */
     , (800188,  19, True ) /* Attackable */
     , (800188,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800188,  21,    0.95) /* WeaponLength */
     , (800188,  22,     0.6) /* DamageVariance */
     , (800188,  26,       0) /* MaximumVelocity */
     , (800188,  29,    1.35) /* WeaponDefense */
     , (800188,  39,     1.8) /* DefaultScale */
     , (800188,  62,    1.35) /* WeaponOffense */
     , (800188,  63,       3) /* DamageMod */
     , (800188, 138,     4.5) /* SlayerDamageBonus */
     , (800188, 151,       1) /* IgnoreShield */
     , (800188, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800188,   1, 'Fowler''s Arm') /* Name */
     , (800188,  15, 'Fowler''s arm is great for bopping Golems over the head.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800188,   1,   33558498) /* Setup */
     , (800188,   3,  536870932) /* SoundTable */
     , (800188,   6,   67114021) /* PaletteBase */
     , (800188,   7,  268436611) /* ClothingBase */
     , (800188,   8,  100674962) /* Icon */
     , (800188,  22,  872415275) /* PhysicsEffectTable */;
