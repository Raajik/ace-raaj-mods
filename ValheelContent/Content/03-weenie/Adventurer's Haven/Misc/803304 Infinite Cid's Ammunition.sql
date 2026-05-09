DELETE FROM `weenie` WHERE `class_Id` = 803304;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803304, 'infinitegunbladeammo', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803304,   1,        256) /* ItemType - MissileWeapon */
     , (803304,   3,         20) /* PaletteTemplate - Silver */
     , (803304,   5,          0) /* EncumbranceVal */
     , (803304,   8,          1) /* Mass */
     , (803304,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (803304,  11,          1) /* MaxStackSize */
     , (803304,  12,          1) /* StackSize */
     , (803304,  13,          0) /* StackUnitEncumbrance */
     , (803304,  14,          1) /* StackUnitMass */
     , (803304,  15,     100000) /* StackUnitValue */
     , (803304,  16,          1) /* ItemUseable - No */
     , (803304,  18,          1) /* UiEffects - Magical */
     , (803304,  19,     100000) /* Value */
     , (803304,  44,         40) /* Damage */
     , (803304,  45,  268435456) /* DamageType - Base */
     , (803304,  50,        512) /* AmmoType - GunBladeAmmo */
     , (803304,  51,          3) /* CombatUse - Ammo */
     , (803304,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803304, 150,        103) /* HookPlacement - Hook */
     , (803304, 151,          2) /* HookType - Wall */
     , (803304, 158,          8) /* WieldRequirements - Training */
     , (803304, 159,         37) /* WieldSkillType - Fletching */
     , (803304, 160,          3) /* WieldDifficulty */
     , (803304, 270,          2) /* WieldRequirements2 - RawSkill */
     , (803304, 271,         37) /* WieldSkillType2 - Fletching */
     , (803304, 272,        375) /* WieldDifficulty2 */
     , (803304, 273,          2) /* WieldRequirements3 - RawSkill */
     , (803304, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (803304, 275,        300) /* WieldDifficulty3 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803304,  17, True ) /* Inelastic */
     , (803304,  63, True ) /* UnlimitedUse */
     , (803304,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803304,  21,       0) /* WeaponLength */
     , (803304,  22,     0.3) /* DamageVariance */
     , (803304,  26,    1000) /* MaximumVelocity */
     , (803304,  29,       1) /* WeaponDefense */
     , (803304,  39,    0.05) /* DefaultScale */
     , (803304,  62,       1) /* WeaponOffense */
     , (803304,  63,     1.5) /* DamageMod */
     , (803304,  78,       1) /* Friction */
     , (803304,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803304,   1, 'Infinite Cid''s Ammunition') /* Name */
     , (803304,  14, 'You must be a specialized fletcher of great skill to use these potentially volatile bullets.') /* Use */
     , (803304,  16, 'Deadly, crystaline bullets that draw the elemental energies from elementally attuned weapons to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803304,   1,   33555863) /* Setup */
     , (803304,   3,  536870932) /* SoundTable */
     , (803304,   6,   67111919) /* PaletteBase */
     , (803304,   7,  268436306) /* ClothingBase */
     , (803304,   8,  100667500) /* Icon */
     , (803304,  22,  872415275) /* PhysicsEffectTable */;
