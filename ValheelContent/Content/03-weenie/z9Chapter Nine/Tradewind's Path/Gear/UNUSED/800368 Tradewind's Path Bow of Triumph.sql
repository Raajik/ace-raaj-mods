DELETE FROM `weenie` WHERE `class_Id` = 800368;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800368, 'Tradewind''s Path Bow of Triumph', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800368,   1,        256) /* ItemType - MissileWeapon */
     , (800368,   3,         39) /* PaletteTemplate - Black */
     , (800368,   5,        325) /* EncumbranceVal */
     , (800368,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800368,  16,          1) /* ItemUseable - No */
     , (800368,  18,          1) /* UiEffects - Magical */
     , (800368,  19,        150) /* Value */
     , (800368,  33,          1) /* Bonded - Bonded */
     , (800368,  44,        150) /* Damage */
     , (800368,  45,       1024) /* DamageType - Pierce */
     , (800368,  46,         16) /* DefaultCombatStyle - Bow */
     , (800368,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800368,  49,         35) /* WeaponTime */
     , (800368,  50,          1) /* AmmoType - Arrow */
     , (800368,  51,          2) /* CombatUse - Missile */
     , (800368,  52,          2) /* ParentLocation - LeftHand */
     , (800368,  53,          3) /* PlacementPosition - LeftHand */
     , (800368,  60,        200) /* WeaponRange */
     , (800368,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800368, 106,        999) /* ItemSpellcraft */
     , (800368, 107,       2700) /* ItemCurMana */
     , (800368, 108,       2700) /* ItemMaxMana */
     , (800368, 114,          1) /* Attuned - Attuned */
     , (800368, 158,          7) /* WieldRequirements - Level */
     , (800368, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800368, 160,        300) /* WieldDifficulty */
     , (800368, 179,      16384) /* ImbuedEffect - ArmorRending */
     , (800368, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800368,  22, True ) /* Inscribable */
     , (800368,  65, True ) /* IgnoreMagicResist */
     , (800368,  66, True ) /* IgnoreMagicArmor */
     , (800368,  69, False) /* IsSellable */
     , (800368,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800368,   5,   -0.05) /* ManaRate */
     , (800368,  26,    26.3) /* MaximumVelocity */
     , (800368,  29,     1.5) /* WeaponDefense */
     , (800368,  63,     3.2) /* DamageMod */
     , (800368, 136,     1.2) /* CriticalMultiplier */
     , (800368, 147,     0.3) /* CriticalFrequency */
     , (800368, 152,     1.3) /* ElementalDamageMod */
     , (800368, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800368,   1, 'Tradewind''s Path Bow of Triumph') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800368,   1,   33558919) /* Setup */
     , (800368,   3,  536870932) /* SoundTable */
     , (800368,   6,   67111919) /* PaletteBase */
     , (800368,   7,  268436199) /* ClothingBase */
     , (800368,   8,  100677060) /* Icon */
     , (800368,  22,  872415275) /* PhysicsEffectTable */
     , (800368,  52,  100689403) /* IconUnderlay */
     , (800368,  55,       5354) /* ProcSpell - Arcane Pyramid */;
