DELETE FROM `weenie` WHERE `class_Id` = 800372;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800372, 'Tradewind''s Path Blade of Triumph', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800372,   1,          1) /* ItemType - MeleeWeapon */
     , (800372,   3,         39) /* PaletteTemplate - Black */
     , (800372,   5,        220) /* EncumbranceVal */
     , (800372,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800372,  16,          1) /* ItemUseable - No */
     , (800372,  18,          1) /* UiEffects - Magical */
     , (800372,  19,        150) /* Value */
     , (800372,  33,          1) /* Bonded - Bonded */
     , (800372,  44,        110) /* Damage */
     , (800372,  45,       1024) /* DamageType - Slash, Pierce */
     , (800372,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800372,  47,          6) /* AttackType - Thrust, Slash */
     , (800372,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800372,  49,         35) /* WeaponTime */
     , (800372,  51,          1) /* CombatUse - Melee */
     , (800372,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800372, 106,        999) /* ItemSpellcraft */
     , (800372, 107,       2700) /* ItemCurMana */
     , (800372, 108,       2700) /* ItemMaxMana */
     , (800372, 114,          1) /* Attuned - Attuned */
     , (800372, 158,          7) /* WieldRequirements - Level */
     , (800372, 159,          1) /* WieldSkillType - Axe */
     , (800372, 160,        300) /* WieldDifficulty */
     , (800372, 179,      16384) /* ImbuedEffect - ArmorRending */
     , (800372, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800372,  22, True ) /* Inscribable */
     , (800372,  65, True ) /* IgnoreMagicResist */
     , (800372,  66, True ) /* IgnoreMagicArmor */
     , (800372,  69, False) /* IsSellable */
     , (800372,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800372,   5,   -0.05) /* ManaRate */
     , (800372,  21,       0) /* WeaponLength */
     , (800372,  22,    0.25) /* DamageVariance */
     , (800372,  29,    1.35) /* WeaponDefense */
     , (800372,  39,     1.3) /* DefaultScale */
     , (800372,  62,    1.35) /* WeaponOffense */
     , (800372,  63,     2.4) /* DamageMod */
     , (800372, 136,     1.2) /* CriticalMultiplier */
     , (800372, 147,     0.3) /* CriticalFrequency */
     , (800372, 152,     1.3) /* ElementalDamageMod */
     , (800372, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800372,   1, 'Tradewind''s Path Blade of Triumph') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800372,   1,   33558914) /* Setup */
     , (800372,   3,  536870932) /* SoundTable */
     , (800372,   6,   67111919) /* PaletteBase */
     , (800372,   7,  268436199) /* ClothingBase */
     , (800372,   8,  100677056) /* Icon */
     , (800372,  22,  872415275) /* PhysicsEffectTable */
     , (800372,  52,  100689403) /* IconUnderlay */
     , (800372,  55,       5356) /* ProcSpell - Arcane Pyramid */;
