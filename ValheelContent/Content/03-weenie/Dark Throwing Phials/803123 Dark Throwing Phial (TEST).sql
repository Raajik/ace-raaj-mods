DELETE FROM `weenie` WHERE `class_Id` = 803123;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803123, 'Dark Throwing Phial', 4, '2022-12-28 05:57:21') /* Missile */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803123,   1,        256) /* ItemType - MissileWeapon */
     , (803123,   3,         77) /* PaletteTemplate - BlueGreen */
     , (803123,   5,          0) /* EncumbranceVal */
     , (803123,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803123,  11,      50000) /* MaxStackSize */
     , (803123,  12,          1) /* StackSize */
     , (803123,  13,          0) /* StackUnitEncumbrance */
     , (803123,  15,          1) /* StackUnitValue */
     , (803123,  16,          1) /* ItemUseable - No */
     , (803123,  19,          1) /* Value */
     , (803123,  44,       1350) /* Damage */
     , (803123,  45,       1024) /* DamageType - Nether */
     , (803123,  46,        128) /* DefaultCombatStyle - ThrownWeapon */
     , (803123,  48,         43) /* WeaponSkill - Void */
     , (803123,  49,          1) /* WeaponTime */
     , (803123,  51,          2) /* CombatUse - Missile */
     , (803123,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803123, 106,        999) /* ItemSpellcraft */
     , (803123, 107,        150) /* ItemCurMana */
     , (803123, 108,        150) /* ItemMaxMana */
     , (803123, 158,          7) /* WieldRequirements - Level */
     , (803123, 159,         43) /* WieldSkillType - Void */
     , (803123, 160,        850) /* WieldDifficulty */
	 , (803123, 179,      16384) /* Imbued Effect - Nether */
     , (803123, 353,         10) /* WeaponType - Thrown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803123,   1, False) /* Stuck */
     , (803123,  11, True ) /* IgnoreCollisions */
     , (803123,  13, True ) /* Ethereal */
     , (803123,  14, True ) /* GravityStatus */
     , (803123,  17, True ) /* Inelastic */
     , (803123,  19, True ) /* Attackable */
     , (803123,  65, True ) /* IgnoreMagicResist */
     , (803123,  66, True ) /* IgnoreMagicArmor */
     , (803123,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803123,  21,       0) /* WeaponLength */
     , (803123,  22,     0.5) /* DamageVariance */
     , (803123,  26,      15) /* MaximumVelocity */
     , (803123,  29,    1.35) /* WeaponDefense */
     , (803123,  39,     0.5) /* DefaultScale */
     , (803123,  62,    1.35) /* WeaponOffense */
     , (803123,  63,       5) /* DamageMod */
     , (803123,  78,       1) /* Friction */
     , (803123,  79,       0) /* Elasticity */
     , (803123, 136,     1.5) /* CriticalMultiplier */
     , (803123, 147,       1) /* CriticalFrequency */
     , (803123, 152,     2.5) /* ElementalDamageMod */
     , (803123, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803123,   1, 'Dark Throwing Phial') /* Name */
     , (803123,  20, 'Dark Throwing Phials') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803123,   1,   33560312) /* Setup */
     , (803123,   3,  536870932) /* SoundTable */
     , (803123,   6,   67111919) /* PaletteBase */
     , (803123,   7,  268437208) /* ClothingBase */
     , (803123,   8,  100690318) /* Icon */
     , (803123,  22,  872415275) /* PhysicsEffectTable */
     /* , (803123,  50,  100690194) /* IconOverlay */
     , (803123,  55,       5356) /* ProcSpell - Nether Bolt VIII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803123,  5356,      2)  /* Nether Bolt VIII */;
