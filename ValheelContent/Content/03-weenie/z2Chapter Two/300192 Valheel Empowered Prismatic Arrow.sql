DELETE FROM `weenie` WHERE `class_Id` = 300192;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300192, 'ace300192-deadlyprismaticarrow', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300192,   1,        256) /* ItemType - MissileWeapon */
     , (300192,   3,         20) /* PaletteTemplate - Silver */
     , (300192,   5,          1) /* EncumbranceVal */
     , (300192,   8,          2) /* Mass */
     , (300192,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (300192,  11,       3000) /* MaxStackSize */
     , (300192,  12,          1) /* StackSize */
     , (300192,  13,          1) /* StackUnitEncumbrance */
     , (300192,  14,          2) /* StackUnitMass */
     , (300192,  15,        100) /* StackUnitValue */
     , (300192,  16,          1) /* ItemUseable - No */
     , (300192,  18,          1) /* UiEffects - Magical */
     , (300192,  19,        100) /* Value */
     , (300192,  44,       1000) /* Damage */
     , (300192,  45,  268435456) /* DamageType - Base */
     , (300192,  50,          1) /* AmmoType - Arrow */
     , (300192,  51,          3) /* CombatUse - Ammo */
     , (300192,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (300192, 150,        103) /* HookPlacement - Hook */
     , (300192, 151,          2) /* HookType - Wall */
     , (300192, 158,          8) /* WieldRequirements - Training */
     , (300192, 159,         37) /* WieldSkillType - Fletching */
     , (300192, 160,          3) /* WieldDifficulty */
     , (300192, 270,          2) /* WieldRequirements2 - RawSkill */
     , (300192, 271,         37) /* WieldSkillType2 - Fletching */
     , (300192, 272,        375) /* WieldDifficulty2 */
     , (300192, 273,          2) /* WieldRequirements3 - RawSkill */
     , (300192, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (300192, 275,        300) /* WieldDifficulty3 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300192,  17, True ) /* Inelastic */
     , (300192,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300192,  21,       0) /* WeaponLength */
     , (300192,  22,     0.3) /* DamageVariance */
     , (300192,  26,       0) /* MaximumVelocity */
     , (300192,  29,       1) /* WeaponDefense */
     , (300192,  62,       1) /* WeaponOffense */
     , (300192,  63,       1) /* DamageMod */
     , (300192,  78,       1) /* Friction */
     , (300192,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300192,   1, 'Valheel Empowered Prismatic Arrow') /* Name */
     , (300192,  14, 'You must be a specialized fletcher of great skill to use these potentially volatile arrows.') /* Use */
     , (300192,  16, 'Deadly, crystaline arrows that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300192,   1,   33561223) /* Setup */
     , (300192,   3,  536870932) /* SoundTable */
     , (300192,   6,   67111919) /* PaletteBase */
     , (300192,   7,  268436306) /* ClothingBase */
     , (300192,   8,  100691911) /* Icon */
     , (300192,  22,  872415275) /* PhysicsEffectTable */;
