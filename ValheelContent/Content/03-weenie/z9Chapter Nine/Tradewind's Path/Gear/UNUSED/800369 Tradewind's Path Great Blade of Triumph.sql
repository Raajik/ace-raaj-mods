DELETE FROM `weenie` WHERE `class_Id` = 800369;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800369, 'Tradewind''s Path Great Blade of Triumph', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800369,   1,          1) /* ItemType - MeleeWeapon */
     , (800369,   3,         39) /* PaletteTemplate - Black */
     , (800369,   5,        220) /* EncumbranceVal */
     , (800369,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800369,  16,          1) /* ItemUseable - No */
     , (800369,  18,          1) /* UiEffects - Magical */
     , (800369,  19,        150) /* Value */
     , (800369,  33,          1) /* Bonded - Bonded */
     , (800369,  44,         85) /* Damage */
     , (800369,  45,       1024) /* DamageType - Slash, Pierce */
     , (800369,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800369,  47,          6) /* AttackType - Thrust, Slash */
     , (800369,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800369,  49,         35) /* WeaponTime */
     , (800369,  51,          5) /* CombatUse - TwoHanded */
     , (800369,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800369, 106,        999) /* ItemSpellcraft */
     , (800369, 107,       2700) /* ItemCurMana */
     , (800369, 108,       2700) /* ItemMaxMana */
     , (800369, 114,          1) /* Attuned - Attuned */
     , (800369, 158,          7) /* WieldRequirements - Level */
     , (800369, 159,          1) /* WieldSkillType - Axe */
     , (800369, 160,        300) /* WieldDifficulty */
     , (800369, 179,      16384) /* ImbuedEffect - ArmorRending */
     , (800369, 292,          3) /* Cleaving */
     , (800369, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800369,  22, True ) /* Inscribable */
     , (800369,  65, True ) /* IgnoreMagicResist */
     , (800369,  66, True ) /* IgnoreMagicArmor */
     , (800369,  69, False) /* IsSellable */
     , (800369,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800369,   5,   -0.05) /* ManaRate */
     , (800369,  21,       0) /* WeaponLength */
     , (800369,  22,    0.25) /* DamageVariance */
     , (800369,  29,    1.35) /* WeaponDefense */
     , (800369,  39,     1.3) /* DefaultScale */
     , (800369,  62,    1.35) /* WeaponOffense */
     , (800369,  63,     2.4) /* DamageMod */
     , (800369, 136,     1.2) /* CriticalMultiplier */
     , (800369, 147,     0.3) /* CriticalFrequency */
     , (800369, 152,     1.3) /* ElementalDamageMod */
     , (800369, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800369,   1, 'Tradewind''s Path Great Blade of Triumph') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800369,   1,   33558914) /* Setup */
     , (800369,   3,  536870932) /* SoundTable */
     , (800369,   6,   67111919) /* PaletteBase */
     , (800369,   7,  268436199) /* ClothingBase */
     , (800369,   8,  100677056) /* Icon */
     , (800369,  22,  872415275) /* PhysicsEffectTable */
     , (800369,  52,  100689403) /* IconUnderlay */
     , (800369,  55,       5356) /* ProcSpell - Arcane Pyramid */;
