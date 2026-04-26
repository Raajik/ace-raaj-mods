DELETE FROM `weenie` WHERE `class_Id` = 803346;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803346, 'InfiniteDeadlyPrismaticAtlatlDark', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803346,   1,        256) /* ItemType - MissileWeapon */
     , (803346,   3,         20) /* PaletteTemplate - Silver */
     , (803346,   5,          1) /* EncumbranceVal */
     , (803346,   8,          2) /* Mass */
     , (803346,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (803346,  11,          2) /* MaxStackSize */
     , (803346,  12,          2) /* StackSize */
     , (803346,  13,          1) /* StackUnitEncumbrance */
     , (803346,  14,          2) /* StackUnitMass */
     , (803346,  15,      50000) /* StackUnitValue */
     , (803346,  16,          1) /* ItemUseable - No */
     , (803346,  18,          1) /* UiEffects - Magical */
     , (803346,  19,     100000) /* Value */
     , (803346,  44,         52) /* Damage */
     , (803346,  45,  268435456) /* DamageType - Base */
     , (803346,  50,          4) /* AmmoType - Atlatl */
     , (803346,  51,          3) /* CombatUse - Ammo */
     , (803346,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803346, 150,        103) /* HookPlacement - Hook */
     , (803346, 151,          2) /* HookType - Wall */
     , (803346, 158,          8) /* WieldRequirements - Training */
     , (803346, 159,         37) /* WieldSkillType - Fletching */
     , (803346, 160,          3) /* WieldDifficulty */
     , (803346, 270,          2) /* WieldRequirements2 - RawSkill */
     , (803346, 271,         37) /* WieldSkillType2 - Fletching */
     , (803346, 272,        375) /* WieldDifficulty2 */
     , (803346, 273,          2) /* WieldRequirements3 - RawSkill */
     , (803346, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (803346, 275,        300) /* WieldDifficulty3 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803346,  17, True ) /* Inelastic */
     , (803346,  63, True ) /* UnlimitedUse */
     , (803346,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803346,  21,       0) /* WeaponLength */
     , (803346,  22,     0.3) /* DamageVariance */
     , (803346,  26,       0) /* MaximumVelocity */
     , (803346,  29,       1) /* WeaponDefense */
     , (803346,  62,       1) /* WeaponOffense */
     , (803346,  63,       1) /* DamageMod */
     , (803346,  78,       1) /* Friction */
     , (803346,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803346,   1, 'Infinite Deadly Prismatic Atlatl Dart') /* Name */
     , (803346,  14, 'You must be a specialized fletcher of great skill to use these potentially volatile atlatl darts.') /* Use */
     , (803346,  16, 'Deadly, crystaline atlatl darts that draw the elemental energies from elementally attuned atlatls to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803346,   1,   33561224) /* Setup */
     , (803346,   3,  536870932) /* SoundTable */
     , (803346,   6,   67111919) /* PaletteBase */
     , (803346,   7,  268436306) /* ClothingBase */
     , (803346,   8,  100691914) /* Icon */
     , (803346,  22,  872415275) /* PhysicsEffectTable */;
