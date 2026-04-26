DELETE FROM `weenie` WHERE `class_Id` = 803124;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803124, 'Dark Iron Throwing Phial', 4, '2022-12-28 05:57:21') /* Missile */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803124,   1,        256) /* ItemType - MissileWeapon */
     , (803124,   3,         77) /* PaletteTemplate - BlueGreen */
     , (803124,   5,          0) /* EncumbranceVal */
     , (803124,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803124,  11,      50000) /* MaxStackSize */
     , (803124,  12,          1) /* StackSize */
     , (803124,  13,          0) /* StackUnitEncumbrance */
     , (803124,  15,          1) /* StackUnitValue */
     , (803124,  16,          1) /* ItemUseable - No */
     , (803124,  19,          1) /* Value */
     , (803124,  44,        161) /* Damage */
     , (803124,  45,       1024) /* DamageType - Nether */
     , (803124,  46,        128) /* DefaultCombatStyle - ThrownWeapon */
     , (803124,  48,         43) /* WeaponSkill - Void */
     , (803124,  49,          1) /* WeaponTime */
     , (803124,  51,          2) /* CombatUse - Missile */
     , (803124,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803124, 106,        999) /* ItemSpellcraft */
     , (803124, 107,        150) /* ItemCurMana */
     , (803124, 108,        150) /* ItemMaxMana */
     , (803124, 158,         43) /* WieldRequirements - Level */
     , (803124, 159,         43) /* WieldSkillType - Void */
     , (803124, 160,        374) /* WieldDifficulty */
	 , (803124, 179,      16384) /* Imbued Effect - Nether */
     , (803124, 353,         10) /* WeaponType - Thrown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803124,   1, False) /* Stuck */
     , (803124,  11, True ) /* IgnoreCollisions */
     , (803124,  13, True ) /* Ethereal */
     , (803124,  14, True ) /* GravityStatus */
     , (803124,  17, True ) /* Inelastic */
     , (803124,  19, True ) /* Attackable */
     , (803124,  65, True ) /* IgnoreMagicResist */
     , (803124,  66, True ) /* IgnoreMagicArmor */
     , (803124,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803124,  21,       0) /* WeaponLength */
     , (803124,  22,     0.5) /* DamageVariance */
     , (803124,  26,      15) /* MaximumVelocity */
     , (803124,  29,    1.14) /* WeaponDefense */
     , (803124,  39,     0.5) /* DefaultScale */
     , (803124,  62,    1.17) /* WeaponOffense */
     , (803124,  63,       2) /* DamageMod */
     , (803124,  78,       1) /* Friction */
     , (803124,  79,       0) /* Elasticity */
     , (803124, 136,     1.5) /* CriticalMultiplier */
     , (803124, 147,       1) /* CriticalFrequency */
     , (803124, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803124,   1, 'Dark Throwing Phial I') /* Name */
     , (803124,  20, 'Dark Throwing Phials I') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803124,   1,   33555211) /* Setup */
     , (803124,   3,  536870932) /* SoundTable */
     , (803124,   8,  100689827) /* Icon */
     , (803124,  22,  872415275) /* PhysicsEffectTable */
     , (803124,  50,  100690996) /* IconOverlay */
     , (803124,  52,  100686604) /* IconUnderlay */
     , (803124,  55,       5350) /* ProcSpell - Nether Bolt II */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803124,  5350,      2)  /* Nether Bolt II */;
