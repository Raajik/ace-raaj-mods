DELETE FROM `weenie` WHERE `class_Id` = 803126;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803126, 'Dark Silver Throwing Phial', 4, '2022-12-28 05:57:21') /* Missile */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803126,   1,        256) /* ItemType - MissileWeapon */
     , (803126,   3,         77) /* PaletteTemplate - BlueGreen */
     , (803126,   5,          0) /* EncumbranceVal */
     , (803126,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803126,  11,      50000) /* MaxStackSize */
     , (803126,  12,          1) /* StackSize */
     , (803126,  13,          0) /* StackUnitEncumbrance */
     , (803126,  15,          1) /* StackUnitValue */
     , (803126,  16,          1) /* ItemUseable - No */
     , (803126,  19,          1) /* Value */
     , (803126,  44,        214) /* Damage */
     , (803126,  45,       1024) /* DamageType - Nether */
     , (803126,  46,        128) /* DefaultCombatStyle - ThrownWeapon */
     , (803126,  48,         43) /* WeaponSkill - Void */
     , (803126,  49,          1) /* WeaponTime */
     , (803126,  51,          2) /* CombatUse - Missile */
     , (803126,  93,     132116) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, Inelastic */
     , (803126, 106,        999) /* ItemSpellcraft */
     , (803126, 107,        150) /* ItemCurMana */
     , (803126, 108,        150) /* ItemMaxMana */
     , (803126, 158,         43) /* WieldRequirements - Level */
     , (803126, 159,         43) /* WieldSkillType - Void */
     , (803126, 160,        389) /* WieldDifficulty */
	 , (803126, 179,      16384) /* Imbued Effect - Nether */
     , (803126, 353,         10) /* WeaponType - Thrown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803126,   1, False) /* Stuck */
     , (803126,  11, True ) /* IgnoreCollisions */
     , (803126,  13, True ) /* Ethereal */
     , (803126,  14, True ) /* GravityStatus */
     , (803126,  17, True ) /* Inelastic */
     , (803126,  19, True ) /* Attackable */
     , (803126,  65, True ) /* IgnoreMagicResist */
     , (803126,  66, True ) /* IgnoreMagicArmor */
     , (803126,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803126,  21,       0) /* WeaponLength */
     , (803126,  22,     0.5) /* DamageVariance */
     , (803126,  26,      15) /* MaximumVelocity */
     , (803126,  29,    1.24) /* WeaponDefense */
     , (803126,  39,     0.5) /* DefaultScale */
     , (803126,  62,    1.28) /* WeaponOffense */
     , (803126,  63,       4) /* DamageMod */
     , (803126,  78,       1) /* Friction */
     , (803126,  79,       0) /* Elasticity */
     , (803126, 136,     2.1) /* CriticalMultiplier */
     , (803126, 147,       1) /* CriticalFrequency */
     , (803126, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803126,   1, 'Dark Throwing Phial III') /* Name */
     , (803126,  20, 'Dark Throwing Phials III') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803126,   1,   33555211) /* Setup */
     , (803126,   3,  536870932) /* SoundTable */
     , (803126,   8,  100689827) /* Icon */
     , (803126,  22,  872415275) /* PhysicsEffectTable */
     , (803126,  50,  100690998) /* IconOverlay */
     , (803126,  52,  100686604) /* IconUnderlay */
     , (803126,  55,       5354) /* ProcSpell - Nether Bolt VI */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803126,  5354,      2)  /* Nether Bolt VI */;
