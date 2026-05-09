DELETE FROM `weenie` WHERE `class_Id` = 803305;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803305, 'Infinite Deadly Prismatic Quarrel', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803305,   1,        256) /* ItemType - MissileWeapon */
     , (803305,   3,         20) /* PaletteTemplate - Silver */
     , (803305,   5,          1) /* EncumbranceVal */
     , (803305,   8,          2) /* Mass */
     , (803305,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (803305,  11,          2) /* MaxStackSize */
     , (803305,  12,          2) /* StackSize */
     , (803305,  13,          1) /* StackUnitEncumbrance */
     , (803305,  14,          2) /* StackUnitMass */
     , (803305,  15,      50000) /* StackUnitValue */
     , (803305,  16,          1) /* ItemUseable - No */
     , (803305,  18,          1) /* UiEffects - Magical */
     , (803305,  19,     100000) /* Value */
     , (803305,  44,         53) /* Damage */
     , (803305,  45,  268435456) /* DamageType - Base */
     , (803305,  50,          2) /* AmmoType - Bolt */
     , (803305,  51,          3) /* CombatUse - Ammo */
     , (803305,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803305, 150,        103) /* HookPlacement - Hook */
     , (803305, 151,          2) /* HookType - Wall */
     , (803305, 158,          8) /* WieldRequirements - Training */
     , (803305, 159,         37) /* WieldSkillType - Fletching */
     , (803305, 160,          3) /* WieldDifficulty */
     , (803305, 270,          2) /* WieldRequirements2 - RawSkill */
     , (803305, 271,         37) /* WieldSkillType2 - Fletching */
     , (803305, 272,        375) /* WieldDifficulty2 */
     , (803305, 273,          2) /* WieldRequirements3 - RawSkill */
     , (803305, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (803305, 275,        300) /* WieldDifficulty3 */
     , (803305, 386,          0) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803305,  17, True ) /* Inelastic */
     , (803305,  63, True ) /* UnlimitedUse */
     , (803305,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803305,  21,       0) /* WeaponLength */
     , (803305,  22,     0.4) /* DamageVariance */
     , (803305,  26,       0) /* MaximumVelocity */
     , (803305,  29,       1) /* WeaponDefense */
     , (803305,  62,       1) /* WeaponOffense */
     , (803305,  63,       1) /* DamageMod */
     , (803305,  78,       1) /* Friction */
     , (803305,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803305,   1, 'Infinite Deadly Prismatic Quarrel') /* Name */
     , (803305,  14, 'You must be a specialized fletcher of great skill to use these potentially volatile quarrels.') /* Use */
     , (803305,  16, 'Deadly, crystaline quarrels that draw the elemental energies from elementally attuned crossbows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803305,   1,   33561225) /* Setup */
     , (803305,   3,  536870932) /* SoundTable */
     , (803305,   6,   67111919) /* PaletteBase */
     , (803305,   7,  268436306) /* ClothingBase */
     , (803305,   8,  100691917) /* Icon */
     , (803305,  22,  872415275) /* PhysicsEffectTable */;
