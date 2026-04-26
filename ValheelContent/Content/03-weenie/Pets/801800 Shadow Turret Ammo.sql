DELETE FROM `weenie` WHERE `class_Id` = 801800;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801800, 'NetherTurretAmmo', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801800,   1,        256) /* ItemType - MissileWeapon */
     , (801800,   3,         20) /* PaletteTemplate - Silver */
     , (801800,   5,          1) /* EncumbranceVal */
     , (801800,   8,          2) /* Mass */
     , (801800,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (801800,  11,       3000) /* MaxStackSize */
     , (801800,  12,          1) /* StackSize */
     , (801800,  13,          1) /* StackUnitEncumbrance */
     , (801800,  14,          2) /* StackUnitMass */
     , (801800,  15,        100) /* StackUnitValue */
     , (801800,  16,          1) /* ItemUseable - No */
     , (801800,  18,          1) /* UiEffects - Magical */
     , (801800,  19,        100) /* Value */
     , (801800,  44,        500) /* Damage */
     , (801800,  45,  268435456) /* DamageType - Base */
     , (801800,  50,          1) /* AmmoType - Arrow */
     , (801800,  51,          3) /* CombatUse - Ammo */
     , (801800,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (801800, 150,        103) /* HookPlacement - Hook */
     , (801800, 151,          2) /* HookType - Wall */
     , (801800, 158,          8) /* WieldRequirements - Training */
     , (801800, 159,         37) /* WieldSkillType - Fletching */
     , (801800, 160,          3) /* WieldDifficulty */
     , (801800, 270,          2) /* WieldRequirements2 - RawSkill */
     , (801800, 271,         37) /* WieldSkillType2 - Fletching */
     , (801800, 272,        375) /* WieldDifficulty2 */
     , (801800, 273,          2) /* WieldRequirements3 - RawSkill */
     , (801800, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (801800, 275,        300) /* WieldDifficulty3 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801800,  17, True ) /* Inelastic */
     , (801800,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801800,  21,       0) /* WeaponLength */
     , (801800,  22,     0.3) /* DamageVariance */
     , (801800,  26,       0) /* MaximumVelocity */
     , (801800,  29,       1) /* WeaponDefense */
     , (801800,  62,       1) /* WeaponOffense */
     , (801800,  63,       1) /* DamageMod */
     /* , (801800,  76,       1) /* Translucency */
     , (801800,  78,       1) /* Friction */
     , (801800,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801800,   1, 'NetherTurretAmmo') /* Name */

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801800,   1,   33561223) /* Setup */
     , (801800,   3,  536870932) /* SoundTable */
     , (801800,   6,   67111919) /* PaletteBase */
     , (801800,   7,  268436306) /* ClothingBase */
     , (801800,   8,  100691911) /* Icon */
     , (801800,  22,  872415275) /* PhysicsEffectTable */;
