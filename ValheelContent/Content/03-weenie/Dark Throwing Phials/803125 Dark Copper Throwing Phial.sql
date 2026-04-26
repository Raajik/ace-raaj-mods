DELETE FROM `weenie` WHERE `class_Id` = 803125;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803125, 'Dark Copper Throwing Phial', 4, '2022-12-28 05:57:21') /* Missile */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803125,   1,        256) /* ItemType - MissileWeapon */
     , (803125,   3,         77) /* PaletteTemplate - BlueGreen */
     , (803125,   5,          0) /* EncumbranceVal */
     , (803125,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803125,  11,      50000) /* MaxStackSize */
     , (803125,  12,          1) /* StackSize */
     , (803125,  13,          0) /* StackUnitEncumbrance */
     , (803125,  15,          1) /* StackUnitValue */
     , (803125,  16,          1) /* ItemUseable - No */
     , (803125,  19,          1) /* Value */
     , (803125,  44,        194) /* Damage */
     , (803125,  45,       1024) /* DamageType - Nether */
     , (803125,  46,        128) /* DefaultCombatStyle - ThrownWeapon */
     , (803125,  48,         43) /* WeaponSkill - Void */
     , (803125,  49,          1) /* WeaponTime */
     , (803125,  51,          2) /* CombatUse - Missile */
     , (803125,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803125, 106,        999) /* ItemSpellcraft */
     , (803125, 107,        150) /* ItemCurMana */
     , (803125, 108,        150) /* ItemMaxMana */
     , (803125, 158,         43) /* WieldRequirements - Level */
     , (803125, 159,         43) /* WieldSkillType - Void */
     , (803125, 160,        386) /* WieldDifficulty */
	 , (803125, 179,      16384) /* Imbued Effect - Nether */
     , (803125, 353,         10) /* WeaponType - Thrown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803125,   1, False) /* Stuck */
     , (803125,  11, True ) /* IgnoreCollisions */
     , (803125,  13, True ) /* Ethereal */
     , (803125,  14, True ) /* GravityStatus */
     , (803125,  17, True ) /* Inelastic */
     , (803125,  19, True ) /* Attackable */
     , (803125,  65, True ) /* IgnoreMagicResist */
     , (803125,  66, True ) /* IgnoreMagicArmor */
     , (803125,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803125,  21,       0) /* WeaponLength */
     , (803125,  22,     0.5) /* DamageVariance */
     , (803125,  26,      15) /* MaximumVelocity */
     , (803125,  29,    1.20) /* WeaponDefense */
     , (803125,  39,     0.5) /* DefaultScale */
     , (803125,  62,    1.24) /* WeaponOffense */
     , (803125,  63,       3) /* DamageMod */
     , (803125,  78,       1) /* Friction */
     , (803125,  79,       0) /* Elasticity */
     , (803125, 136,     1.8) /* CriticalMultiplier */
     , (803125, 147,       1) /* CriticalFrequency */
     , (803125, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803125,   1, 'Dark Throwing Phial II') /* Name */
     , (803125,  20, 'Dark Throwing Phials II') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803125,   1,   33555211) /* Setup */
     , (803125,   3,  536870932) /* SoundTable */
     , (803125,   8,  100689827) /* Icon */
     , (803125,  22,  872415275) /* PhysicsEffectTable */
     , (803125,  50,  100690997) /* IconOverlay */
     , (803125,  52,  100686604) /* IconUnderlay */
     , (803125,  55,       5351) /* ProcSpell - Nether Bolt III */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803125,  5351,      2)  /* Nether Bolt III */;
