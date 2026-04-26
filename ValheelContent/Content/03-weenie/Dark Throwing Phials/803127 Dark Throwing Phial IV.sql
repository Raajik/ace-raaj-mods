DELETE FROM `weenie` WHERE `class_Id` = 803127;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803127, 'Dark Throwing Phial IV', 4, '2022-12-28 05:57:21') /* Missile */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803127,   1,        256) /* ItemType - MissileWeapon */
     , (803127,   3,         77) /* PaletteTemplate - BlueGreen */
     , (803127,   5,          0) /* EncumbranceVal */
     , (803127,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803127,  11,      50000) /* MaxStackSize */
     , (803127,  12,          1) /* StackSize */
     , (803127,  13,          0) /* StackUnitEncumbrance */
     , (803127,  15,          1) /* StackUnitValue */
     , (803127,  16,          1) /* ItemUseable - No */
     , (803127,  19,          1) /* Value */
     , (803127,  44,        324) /* Damage */
     , (803127,  45,       1024) /* DamageType - Nether */
     , (803127,  46,        128) /* DefaultCombatStyle - ThrownWeapon */
     , (803127,  48,         43) /* WeaponSkill - Void */
     , (803127,  49,          1) /* WeaponTime */
     , (803127,  51,          2) /* CombatUse - Missile */
     , (803127,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803127, 106,        999) /* ItemSpellcraft */
     , (803127, 107,        150) /* ItemCurMana */
     , (803127, 108,        150) /* ItemMaxMana */
     , (803127, 158,         43) /* WieldRequirements - Level */
     , (803127, 159,         43) /* WieldSkillType - Void */
     , (803127, 160,        439) /* WieldDifficulty */
	 , (803127, 179,      16384) /* Imbued Effect - Nether */
     , (803127, 353,         10) /* WeaponType - Thrown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803127,   1, False) /* Stuck */
     , (803127,  11, True ) /* IgnoreCollisions */
     , (803127,  13, True ) /* Ethereal */
     , (803127,  14, True ) /* GravityStatus */
     , (803127,  17, True ) /* Inelastic */
     , (803127,  19, True ) /* Attackable */
     , (803127,  65, True ) /* IgnoreMagicResist */
     , (803127,  66, True ) /* IgnoreMagicArmor */
     , (803127,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803127,  21,       0) /* WeaponLength */
     , (803127,  22,     0.5) /* DamageVariance */
     , (803127,  26,      15) /* MaximumVelocity */
     , (803127,  29,    1.32) /* WeaponDefense */
     , (803127,  39,     0.5) /* DefaultScale */
     , (803127,  62,    1.35) /* WeaponOffense */
     , (803127,  63,       5) /* DamageMod */
     , (803127,  78,       1) /* Friction */
     , (803127,  79,       0) /* Elasticity */
     , (803127, 136,     2.5) /* CriticalMultiplier */
     , (803127, 147,       1) /* CriticalFrequency */
     , (803127, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803127,   1, 'Dark Throwing Phial IV') /* Name */
     , (803127,  20, 'Dark Throwing Phials IV') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803127,   1,   33555211) /* Setup */
     , (803127,   3,  536870932) /* SoundTable */
     , (803127,   8,  100689827) /* Icon */
     , (803127,  22,  872415275) /* PhysicsEffectTable */
     , (803127,  50,  100690999) /* IconOverlay */
     , (803127,  52,  100686604) /* IconUnderlay */
     , (803127,  55,       5355) /* ProcSpell - Nether Bolt VII */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803127,  5355,      2)  /* Nether Bolt VII */;
