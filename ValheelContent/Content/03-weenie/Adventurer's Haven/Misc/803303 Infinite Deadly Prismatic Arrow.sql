DELETE FROM `weenie` WHERE `class_Id` = 803303;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803303, 'Infinite Deadly Prismatic Arrow', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803303,   1,        256) /* ItemType - MissileWeapon */
     , (803303,   3,         20) /* PaletteTemplate - Silver */
     , (803303,   5,          0) /* EncumbranceVal */
     , (803303,   8,          1) /* Mass */
     , (803303,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (803303,  11,          2) /* MaxStackSize */
     , (803303,  12,          2) /* StackSize */
     , (803303,  13,          0) /* StackUnitEncumbrance */
     , (803303,  14,          1) /* StackUnitMass */
     , (803303,  15,      50000) /* StackUnitValue */
     , (803303,  16,          1) /* ItemUseable - No */
     , (803303,  18,          1) /* UiEffects - Magical */
     , (803303,  19,     100000) /* Value */
     , (803303,  44,         40) /* Damage */
     , (803303,  45,  268435456) /* DamageType - Base */
     , (803303,  50,          1) /* AmmoType - Arrow */
     , (803303,  51,          3) /* CombatUse - Ammo */
     , (803303,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803303, 150,        103) /* HookPlacement - Hook */
     , (803303, 151,          2) /* HookType - Wall */
     , (803303, 158,          8) /* WieldRequirements - Training */
     , (803303, 159,         37) /* WieldSkillType - Fletching */
     , (803303, 160,          3) /* WieldDifficulty */
     , (803303, 270,          2) /* WieldRequirements2 - RawSkill */
     , (803303, 271,         37) /* WieldSkillType2 - Fletching */
     , (803303, 272,        375) /* WieldDifficulty2 */
     , (803303, 273,          2) /* WieldRequirements3 - RawSkill */
     , (803303, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (803303, 275,        300) /* WieldDifficulty3 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803303,  17, True ) /* Inelastic */
     , (803303,  63, True ) /* UnlimitedUse */
     , (803303,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803303,  21,       0) /* WeaponLength */
     , (803303,  22,     0.3) /* DamageVariance */
     , (803303,  26,       0) /* MaximumVelocity */
     , (803303,  29,       1) /* WeaponDefense */
     , (803303,  62,       1) /* WeaponOffense */
     , (803303,  63,       1) /* DamageMod */
     , (803303,  78,       1) /* Friction */
     , (803303,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803303,   1, 'Infinite Deadly Prismatic Arrow') /* Name */
     , (803303,  14, 'You must be a specialized fletcher of great skill to use these potentially volatile arrows.') /* Use */
     , (803303,  16, 'Deadly, crystaline arrows that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803303,   1,   33561223) /* Setup */
     , (803303,   3,  536870932) /* SoundTable */
     , (803303,   6,   67111919) /* PaletteBase */
     , (803303,   7,  268436306) /* ClothingBase */
     , (803303,   8,  100691911) /* Icon */
     , (803303,  22,  872415275) /* PhysicsEffectTable */;
