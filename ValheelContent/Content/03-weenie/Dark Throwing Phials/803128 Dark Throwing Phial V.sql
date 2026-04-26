DELETE FROM `weenie` WHERE `class_Id` = 803128;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803128, 'Dark Throwing Phial V', 4, '2022-12-28 05:57:21') /* Missile */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803128,   1,        256) /* ItemType - MissileWeapon */
     , (803128,   3,         77) /* PaletteTemplate - BlueGreen */
     , (803128,   5,          0) /* EncumbranceVal */
     , (803128,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803128,  11,      50000) /* MaxStackSize */
     , (803128,  12,          1) /* StackSize */
     , (803128,  13,          0) /* StackUnitEncumbrance */
     , (803128,  15,          1) /* StackUnitValue */
     , (803128,  16,          1) /* ItemUseable - No */
     , (803128,  19,          1) /* Value */
     , (803128,  44,        434) /* Damage */
     , (803128,  45,       1024) /* DamageType - Nether */
     , (803128,  46,        128) /* DefaultCombatStyle - ThrownWeapon */
     , (803128,  48,         43) /* WeaponSkill - Void */
     , (803128,  49,          1) /* WeaponTime */
     , (803128,  51,          2) /* CombatUse - Missile */
     , (803128,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803128, 106,        999) /* ItemSpellcraft */
     , (803128, 107,        150) /* ItemCurMana */
     , (803128, 108,        150) /* ItemMaxMana */
     , (803128, 158,         43) /* WieldRequirements - Level */
     , (803128, 159,         43) /* WieldSkillType - Void */
     , (803128, 160,        539) /* WieldDifficulty */
	 , (803128, 179,      16384) /* Imbued Effect - Nether */
     , (803128, 353,         10) /* WeaponType - Thrown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803128,   1, False) /* Stuck */
     , (803128,  11, True ) /* IgnoreCollisions */
     , (803128,  13, True ) /* Ethereal */
     , (803128,  14, True ) /* GravityStatus */
     , (803128,  17, True ) /* Inelastic */
     , (803128,  19, True ) /* Attackable */
     , (803128,  65, True ) /* IgnoreMagicResist */
     , (803128,  66, True ) /* IgnoreMagicArmor */
     , (803128,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803128,  21,       0) /* WeaponLength */
     , (803128,  22,     0.5) /* DamageVariance */
     , (803128,  26,      15) /* MaximumVelocity */
     , (803128,  29,    1.35) /* WeaponDefense */
     , (803128,  39,     0.5) /* DefaultScale */
     , (803128,  62,    1.40) /* WeaponOffense */
     , (803128,  63,       6) /* DamageMod */
     , (803128,  78,       1) /* Friction */
     , (803128,  79,       0) /* Elasticity */
     , (803128, 136,     2.8) /* CriticalMultiplier */
     , (803128, 147,       1) /* CriticalFrequency */
     , (803128, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803128,   1, 'Dark Throwing Phial V') /* Name */
     , (803128,  20, 'Dark Throwing Phials V') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803128,   1,   33555211) /* Setup */
     , (803128,   3,  536870932) /* SoundTable */
     , (803128,   8,  100689827) /* Icon */
     , (803128,  22,  872415275) /* PhysicsEffectTable */
     , (803128,  50,  100691000) /* IconOverlay */
     , (803128,  52,  100686604) /* IconUnderlay */
     , (803128,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803128,  5356,      2)  /* Incantation of Nether Bolt */;
