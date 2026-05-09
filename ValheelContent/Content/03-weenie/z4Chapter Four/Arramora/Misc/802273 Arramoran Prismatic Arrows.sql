DELETE FROM `weenie` WHERE `class_Id` = 802273;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802273, 'Arramoran Prismatic Arrow', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802273,   1,        256) /* ItemType - MissileWeapon */
     , (802273,   3,         20) /* PaletteTemplate - Silver */
     , (802273,   5,          1) /* EncumbranceVal */
     , (802273,   8,          2) /* Mass */
     , (802273,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (802273,  11,       5000) /* MaxStackSize */
     , (802273,  12,          1) /* StackSize */
     , (802273,  13,          1) /* StackUnitEncumbrance */
     , (802273,  14,          2) /* StackUnitMass */
     , (802273,  15,        100) /* StackUnitValue */
     , (802273,  16,          1) /* ItemUseable - No */
     , (802273,  18,          1) /* UiEffects - Magical */
     , (802273,  19,        100) /* Value */
     , (802273,  44,         80) /* Damage */
     , (802273,  45,  268435456) /* DamageType - Base */
     , (802273,  50,          1) /* AmmoType - Arrow */
     , (802273,  51,          3) /* CombatUse - Ammo */
     , (802273,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (802273, 150,        103) /* HookPlacement - Hook */
     , (802273, 151,          2) /* HookType - Wall */
     , (802273, 158,          8) /* WieldRequirements - Training */
     , (802273, 159,         37) /* WieldSkillType - Fletching */
     , (802273, 160,          3) /* WieldDifficulty */
     , (802273, 270,          2) /* WieldRequirements2 - RawSkill */
     , (802273, 271,         37) /* WieldSkillType2 - Fletching */
     , (802273, 272,        600) /* WieldDifficulty2 */
     , (802273, 273,          2) /* WieldRequirements3 - RawSkill */
     , (802273, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (802273, 275,        500) /* WieldDifficulty3 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802273,  17, True ) /* Inelastic */
     , (802273,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802273,  21,       0) /* WeaponLength */
     , (802273,  22,     0.3) /* DamageVariance */
     , (802273,  26,       0) /* MaximumVelocity */
     , (802273,  29,       1.2) /* WeaponDefense */
     , (802273,  62,       1.2) /* WeaponOffense */
     , (802273,  63,       1.2) /* DamageMod */
     , (802273,  78,       0.8) /* Friction */
     , (802273,  79,       0.2) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802273,   1, 'Arramoran Prismatic Arrow') /* Name */
     , (802273,  14, 'You must be a specialized fletcher of great skill to use these potentially volatile arrows.') /* Use */
     , (802273,  16, 'Deadly, crystaline arrows, infused with the power of Mirra Powder, that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802273,   1,   33561223) /* Setup */
     , (802273,   3,  536870932) /* SoundTable */
     , (802273,   6,   67111919) /* PaletteBase */
     , (802273,   7,  268436306) /* ClothingBase */
     , (802273,   8,  100691911) /* Icon */
     , (802273,  22,  872415275) /* PhysicsEffectTable */
     , (802273,  52,  100686604) /* IconUnderlay */;
