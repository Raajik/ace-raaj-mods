DELETE FROM `weenie` WHERE `class_Id` = 300444;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300444, 'gunbladeammo', 5, '2021-11-01 00:00:00') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300444,   1,        256) /* ItemType - MissileWeapon */
     , (300444,   3,         20) /* PaletteTemplate - Silver */
     , (300444,   5,          0) /* EncumbranceVal */
     , (300444,   8,          1) /* Mass */
     , (300444,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (300444,  11,          1) /* MaxStackSize */
     , (300444,  12,          1) /* StackSize */
     , (300444,  13,          0) /* StackUnitEncumbrance */
     , (300444,  14,          1) /* StackUnitMass */
     , (300444,  15,     100000) /* StackUnitValue */
     , (300444,  16,          1) /* ItemUseable - No */
     , (300444,  18,          1) /* UiEffects - Magical */
     , (300444,  19,     100000) /* Value */
     , (300444,  44,         40) /* Damage */
     , (300444,  45,  268435456) /* DamageType - Base */
     , (300444,  50,        512) /* AmmoType - GunBladeAmmo */
     , (300444,  51,          3) /* CombatUse - Ammo */
     , (300444,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (300444, 106,        999) /* ItemSpellcraft */
     , (300444, 107,       2000) /* ItemCurMana */
     , (300444, 108,       2000) /* ItemMaxMana */
     , (300444, 150,        103) /* HookPlacement - Hook */
     , (300444, 151,          2) /* HookType - Wall */
     , (300444, 158,          8) /* WieldRequirements - Training */
     , (300444, 159,         37) /* WieldSkillType - Fletching */
     , (300444, 160,          3) /* WieldDifficulty */
     , (300444, 270,          2) /* WieldRequirements2 - RawSkill */
     , (300444, 271,         37) /* WieldSkillType2 - Fletching */
     , (300444, 272,        375) /* WieldDifficulty2 */
     , (300444, 273,          2) /* WieldRequirements3 - RawSkill */
     , (300444, 274,         47) /* WieldSkillType3 - MissileWeapons */
     , (300444, 275,        300) /* WieldDifficulty3 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300444,  17, True ) /* Inelastic */
     , (300444,  63, True ) /* UnlimitedUse */
     , (300444,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300444,  21,       0) /* WeaponLength */
     , (300444,  22,     0.3) /* DamageVariance */
     , (300444,  26,    1000) /* MaximumVelocity */
     , (300444,  29,       1) /* WeaponDefense */
     , (300444,  39,    0.05) /* DefaultScale */
     , (300444,  62,       1) /* WeaponOffense */
     , (300444,  63,     1.5) /* DamageMod */
     , (300444,  78,       1) /* Friction */
     , (300444,  79,       0) /* Elasticity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300444,   1, 'Infinite Cid''s Ammunition') /* Name */
     , (300444,  14, 'You must be a specialized fletcher of great skill to use these potentially volatile arrows.') /* Use */
     , (300444,  16, 'Deadly, crystaline arrows that draw the elemental energies from elementally attuned bows to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300444,   1,   33555863) /* Setup */
     , (300444,   3,  536870932) /* SoundTable */
     , (300444,   6,   67111919) /* PaletteBase */
     , (300444,   7,  268436306) /* ClothingBase */
     , (300444,   8,  100667500) /* Icon */
     , (300444,  22,  872415275) /* PhysicsEffectTable */;
