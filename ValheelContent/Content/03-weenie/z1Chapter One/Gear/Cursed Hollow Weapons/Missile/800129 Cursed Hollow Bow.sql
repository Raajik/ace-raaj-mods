DELETE FROM `weenie` WHERE `class_Id` = 800129;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800129, 'cursed hollow bow2', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800129,   1,        256) /* ItemType - MissileWeapon */
     , (800129,   3,         14) /* PaletteTemplate - Red */
     , (800129,   5,        950) /* EncumbranceVal */
     , (800129,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800129,  16,          1) /* ItemUseable - No */
     , (800129,  18,          1) /* UiEffects - Magical */
     , (800129,  19,          2) /* Value */
     , (800129,  33,          1) /* Bonded - Bonded */
     , (800129,  44,          0) /* Damage */
     , (800129,  45,       1024) /* DamageType - Nether */
     , (800129,  46,         16) /* DefaultCombatStyle - Bow */
     , (800129,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800129,  49,         40) /* WeaponTime */
     , (800129,  50,          1) /* AmmoType - Arrow */
     , (800129,  51,          2) /* CombatUse - Missile */
     , (800129,  52,          2) /* ParentLocation - LeftHand */
     , (800129,  53,          3) /* PlacementPosition - LeftHand */
     , (800129,  60,        175) /* WeaponRange */
     , (800129,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800129, 106,        999) /* ItemSpellcraft */
     , (800129, 107,       1200) /* ItemCurMana */
     , (800129, 108,       1200) /* ItemMaxMana */
     , (800129, 114,          1) /* Attuned - Attuned */
     , (800129, 151,          2) /* HookType - Wall */
     , (800129, 158,          7) /* WieldRequirements - Level */
     , (800129, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800129, 160,        275) /* WieldDifficulty */
     , (800129, 179,      16384) /* ImbuedEffect - CriticalStrike */
     , (800129, 204,         35) /* ElementalDamageBonus */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800129,  11, True ) /* IgnoreCollisions */
     , (800129,  13, True ) /* Ethereal */
     , (800129,  14, True ) /* GravityStatus */
     , (800129,  19, True ) /* Attackable */
     , (800129,  22, True ) /* Inscribable */
     , (800129,  65, True ) /* IgnoreMagicResist */
     , (800129,  66, True ) /* IgnoreMagicArmor */
     , (800129,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800129,   5,    -0.1) /* ManaRate */
     , (800129,  26,    27.3) /* MaximumVelocity */
     , (800129,  29,    1.25) /* WeaponDefense */
     , (800129,  62,    1.25) /* WeaponOffense */
     , (800129,  63,     3.3) /* DamageMod */
     , (800129,  76,     0.7) /* Translucency */
     , (800129, 136,       2) /* CriticalMultiplier */
     , (800129, 147,     0.5) /* CriticalFrequency */
     , (800129, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800129,   1, 'Cursed Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800129,   1,   33557729) /* Setup */
     , (800129,   3,  536870932) /* SoundTable */
     , (800129,   6,   67111919) /* PaletteBase */
     , (800129,   7,  268436394) /* ClothingBase */
     , (800129,   8,  100673010) /* Icon */
     , (800129,  22,  872415275) /* PhysicsEffectTable */
     , (800129,  37,          2) /* ItemSkillLimit - Bow */
     , (800129,  55,       5354) /* ProcSpell - Nether Bolt VI */;
