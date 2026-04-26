DELETE FROM `weenie` WHERE `class_Id` = 800371;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800371, 'Tradewind''s Path Axe of Triumph', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800371,   1,          1) /* ItemType - MeleeWeapon */
     , (800371,   3,         39) /* PaletteTemplate - Black */
     , (800371,   5,        275) /* EncumbranceVal */
     , (800371,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800371,  16,          1) /* ItemUseable - No */
     , (800371,  18,          1) /* UiEffects - Magical */
     , (800371,  19,        150) /* Value */
     , (800371,  33,          1) /* Bonded - Bonded */
     , (800371,  44,        110) /* Damage */
     , (800371,  45,       1024) /* DamageType - Slash */
     , (800371,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800371,  47,          4) /* AttackType - Slash */
     , (800371,  48,         45) /* WeaponSkill - LightWeapons */
     , (800371,  49,         35) /* WeaponTime */
     , (800371,  51,          1) /* CombatUse - Melee */
     , (800371,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800371, 106,        999) /* ItemSpellcraft */
     , (800371, 107,       2700) /* ItemCurMana */
     , (800371, 108,       2700) /* ItemMaxMana */
     , (800371, 114,          1) /* Attuned - Attuned */
     , (800371, 158,          7) /* WieldRequirements - Level */
     , (800371, 159,          1) /* WieldSkillType - Axe */
     , (800371, 160,        300) /* WieldDifficulty */
     , (800371, 179,      16384) /* ImbuedEffect - ArmorRending */
     , (800371, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800371,  22, True ) /* Inscribable */
     , (800371,  65, True ) /* IgnoreMagicResist */
     , (800371,  66, True ) /* IgnoreMagicArmor */
     , (800371,  69, False) /* IsSellable */
     , (800371,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800371,   5,   -0.05) /* ManaRate */
     , (800371,  21,       0) /* WeaponLength */
     , (800371,  22,    0.25) /* DamageVariance */
     , (800371,  29,    1.35) /* WeaponDefense */
     , (800371,  39,     1.3) /* DefaultScale */
     , (800371,  62,    1.35) /* WeaponOffense */
     , (800371,  63,     2.4) /* DamageMod */
     , (800371, 136,     1.2) /* CriticalMultiplier */
     , (800371, 147,     0.3) /* CriticalFrequency */
     , (800371, 152,     1.3) /* ElementalDamageMod */
     , (800371, 156,     0.3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800371,   1, 'Tradewind''s Path Axe of Triumph') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800371,   1,   33558915) /* Setup */
     , (800371,   3,  536870932) /* SoundTable */
     , (800371,   6,   67111919) /* PaletteBase */
     , (800371,   7,  268436199) /* ClothingBase */
     , (800371,   8,  100677057) /* Icon */
     , (800371,  22,  872415275) /* PhysicsEffectTable */
     , (800371,  52,  100689403) /* IconUnderlay */
     , (800371,  55,       5356) /* ProcSpell - Arcane Pyramid */;
