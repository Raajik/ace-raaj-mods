DELETE FROM `weenie` WHERE `class_Id` = 800095;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800095, 'Cursed Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800095,   1,          1) /* ItemType - MeleeWeapon */
     , (800095,   3,         39) /* PaletteTemplate - Black */
     , (800095,   5,        650) /* EncumbranceVal */
     , (800095,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800095,  16,          1) /* ItemUseable - No */
     , (800095,  18,          1) /* UiEffects - Magical */
     , (800095,  19,          2) /* Value */
     , (800095,  33,          1) /* Bonded - Bonded */
     , (800095,  44,        120) /* Damage */
     , (800095,  45,       1024) /* DamageType - Nether */
     , (800095,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800095,  47,          4) /* AttackType - Slash */
     , (800095,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800095,  49,         20) /* WeaponTime */
     , (800095,  51,          5) /* CombatUse - TwoHanded */
     , (800095,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800095, 106,        999) /* ItemSpellcraft */
     , (800095, 107,       1200) /* ItemCurMana */
     , (800095, 108,       1200) /* ItemMaxMana */
     , (800095, 114,          1) /* Attuned - Attuned */
     , (800095, 151,          2) /* HookType - Wall */
     , (800095, 158,          7) /* WieldRequirements - Level */
     , (800095, 159,          1) /* WieldSkillType - Axe */
     , (800095, 160,        275) /* WieldDifficulty */
     , (800095, 179,      16384) /* ImbuedEffect - CriticalStrike */
     , (800095, 292,          2) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800095,  11, True ) /* IgnoreCollisions */
     , (800095,  13, True ) /* Ethereal */
     , (800095,  14, True ) /* GravityStatus */
     , (800095,  19, True ) /* Attackable */
     , (800095,  22, True ) /* Inscribable */
     , (800095,  65, True ) /* IgnoreMagicResist */
     , (800095,  66, True ) /* IgnoreMagicArmor */
     , (800095,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800095,  21,       1) /* WeaponLength */
     , (800095,  22,    0.33) /* DamageVariance */
     , (800095,  26,       0) /* MaximumVelocity */
     , (800095,  29,    1.25) /* WeaponDefense */
     , (800095,  39,    1.15) /* DefaultScale */
     , (800095,  62,    1.25) /* WeaponOffense */
     , (800095,  63,     2.0) /* DamageMod */
     , (800095,  76,     0.7) /* Translucency */
     , (800095, 136,       2) /* CriticalMultiplier */
     , (800095, 147,     0.5) /* CriticalFrequency */
     , (800095, 152,     1.5) /* ElementalDamageMod */
     , (800095, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800095,   1, 'Cursed Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800095,   1,   33556262) /* Setup */
     , (800095,   3,  536870932) /* SoundTable */
     , (800095,   6,   67111919) /* PaletteBase */
     , (800095,   7,  268436385) /* ClothingBase */
     , (800095,   8,  100692946) /* Icon */
     , (800095,  22,  872415275) /* PhysicsEffectTable */
     , (800095,  55,       5354) /* ProcSpell - Nether Bolt VI */;
