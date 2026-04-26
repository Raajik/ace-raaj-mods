DELETE FROM `weenie` WHERE `class_Id` = 802763;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802763, 'MasterfulHumanSlayerArrow', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802763,   1,        256) /* ItemType - MissileWeapon */
     , (802763,   3,         20) /* PaletteTemplate - Silver */
     , (802763,   5,          0) /* EncumbranceVal */
     , (802763,   8,          1) /* Mass */
     , (802763,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (802763,  11,       3000) /* MaxStackSize */
     , (802763,  12,          1) /* StackSize */
     , (802763,  13,          0) /* StackUnitEncumbrance */
     , (802763,  14,          1) /* StackUnitMass */
     , (802763,  15,        100) /* StackUnitValue */
     , (802763,  16,          1) /* ItemUseable - No */
     , (802763,  18,          1) /* UiEffects - Magical */
     , (802763,  19,        100) /* Value */
     , (802763,  44,         40) /* Damage */
     , (802763,  45,  2147483647) /* DamageType - Base */
     , (802763,  50,          1) /* AmmoType - Arrow */
     , (802763,  51,          3) /* CombatUse - Ammo */
     , (802763,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (802763, 150,        103) /* HookPlacement - Hook */
     , (802763, 151,          2) /* HookType - Wall */
     , (802763, 158,          8) /* WieldRequirements - Training */
     , (802763, 159,         37) /* WieldSkillType - Fletching */
     , (802763, 160,          3) /* WieldDifficulty */
     , (802763, 166,         31) /* SlayerType - Human */
     , (802763, 270,          2) /* WieldRequirements2 - RawSkill */
     , (802763, 271,         37) /* WieldSkillType2 - Fletching */
     , (802763, 272,        375) /* WieldDifficulty2 */
     , (802763, 273,          2) /* WieldRequirements3 - RawSkill */
     , (802763, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (802763, 275,        300) /* WieldDifficulty3 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802763,  17, True ) /* Inelastic */
     , (802763,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802763,  21,       0) /* WeaponLength */
     , (802763,  22,     0.1) /* DamageVariance */
     , (802763,  26,       0) /* MaximumVelocity */
     , (802763,  29,       1) /* WeaponDefense */
     , (802763,  62,       1) /* WeaponOffense */
     , (802763,  63,       3) /* DamageMod */
     , (802763,  78,       1) /* Friction */
     , (802763,  79,       0) /* Elasticity */
     , (802763,  138,      5) /* SlayerDamageBonus */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802763,   1, 'Masterful Human Slayer Arrow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802763,   1,   33561223) /* Setup */
     , (802763,   3,  536870932) /* SoundTable */
     , (802763,   6,   67111919) /* PaletteBase */
     , (802763,   7,  268436306) /* ClothingBase */
     , (802763,   8,  100691911) /* Icon */
     , (802763,  22,  872415275) /* PhysicsEffectTable */;
