DELETE FROM `weenie` WHERE `class_Id` = 802613;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802613, 'gunbladebullet', 5, '2020-01-09 10:26:13') /* Ammunition */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802613,   1,        256) /* ItemType - MissileWeapon */
     , (802613,   3,         20) /* PaletteTemplate - Silver */
     , (802613,   5,          1) /* EncumbranceVal */
     , (802613,   8,          2) /* Mass */
     , (802613,   9,    8388608) /* ValidLocations - MissileAmmo */
     , (802613,  11,       3000) /* MaxStackSize */
     , (802613,  12,          1) /* StackSize */
     , (802613,  13,          1) /* StackUnitEncumbrance */
     , (802613,  14,          2) /* StackUnitMass */
     , (802613,  15,          0) /* StackUnitValue */
     , (802613,  16,          1) /* ItemUseable - No */
     , (802613,  18,          1) /* UiEffects - Magical */
     , (802613,  19,          1) /* Value */
     , (802613,  44,         64) /* Damage */
     , (802613,  45,  268435456) /* DamageType - Base */
     , (802613,  50, 2147483647) /* AmmoType - All */
     , (802613,  51,          3) /* CombatUse - Ammo */
     , (802613,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (802613, 150,        103) /* HookPlacement - Hook */
     , (802613, 151,          2) /* HookType - Wall */
     , (802613, 158,          7) /* WieldRequirements - Level */
     , (802613, 270,          7) /* WieldRequirements2 - RawSkill */
     , (802613, 271,          7) /* WieldSkillType2 - MissileWeapons */
     , (802613, 272,        180) /* WieldDifficulty2 */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802613,  17, True ) /* Inelastic */
     , (802613,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802613,  22,    0.28) /* DamageVariance */
     , (802613,  29,       1) /* WeaponDefense */
     , (802613,  39,    0.07) /* DefaultScale */
     , (802613,  62,       1) /* WeaponOffense */
     , (802613,  63,     1.7) /* DamageMod */
     , (802613,  78,       1) /* Friction */
     , (802613,  79,       0) /* Elasticity */
     , (802613, 136,     1.3) /* CriticalMultiplier */
     , (802613, 152,     1.4) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802613,   1, 'Cid''s Bullet') /* Name */
     , (802613,  16, 'Crystaline Bullets that draw the elemental energies from elemental attuned Gunblades to damage their target.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802613,   1,   33555863) /* Setup */
     , (802613,   3,  536870932) /* SoundTable */
     , (802613,   6,   67111919) /* PaletteBase */
     , (802613,   7,  268436306) /* ClothingBase */
     , (802613,   8,  100667500) /* Icon */
     , (802613,  22,  872415275) /* PhysicsEffectTable */;
