DELETE FROM `weenie` WHERE `class_Id` = 800700;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800700, 'Crafted Vhorma Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800700,   1,          1) /* ItemType - MeleeWeapon */
     , (800700,   3,         39) /* PaletteTemplate - Black */
     , (800700,   5,        275) /* EncumbranceVal */
     , (800700,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800700,  16,          1) /* ItemUseable - No */
     , (800700,  18,          1) /* UiEffects - Magical */
     , (800700,  19,          1) /* Value */
     , (800700,  33,          1) /* Bonded - Bonded */
     , (800700,  44,        150) /* Damage */
     , (800700,  45,          1) /* DamageType - Slash */
     , (800700,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800700,  47,          4) /* AttackType - Slash */
     , (800700,  48,         45) /* WeaponSkill - LightWeapons */
     , (800700,  49,         35) /* WeaponTime */
     , (800700,  51,          1) /* CombatUse - Melee */
     , (800700,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800700, 106,        999) /* ItemSpellcraft */
     , (800700, 107,      10000) /* ItemCurMana */
     , (800700, 108,      10000) /* ItemMaxMana */
     , (800700, 114,          1) /* Attuned - Attuned */
     , (800700, 158,          7) /* WieldRequirements - Level */
     , (800700, 159,          1) /* WieldSkillType - Axe */
     , (800700, 160,        325) /* WieldDifficulty */
     , (800700, 179,          4) /* ImbuedEffect - ArmorRending */
     , (800700, 353,          3) /* WeaponType - Axe */
     , (800700, 370,          6) /* GearDamage */
     , (800700, 379,         10) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800700,  22, True ) /* Inscribable */
     , (800700,  65, True ) /* IgnoreMagicResist */
     , (800700,  66, True ) /* IgnoreMagicArmor */
     , (800700,  69, False) /* IsSellable */
     , (800700,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800700,   5,   -0.05) /* ManaRate */
     , (800700,  21,       0) /* WeaponLength */
     , (800700,  22,    0.25) /* DamageVariance */
     , (800700,  29,    1.30) /* WeaponDefense */
     , (800700,  39,     1.3) /* DefaultScale */
     , (800700,  62,    1.30) /* WeaponOffense */
     , (800700,  63,     1.1) /* DamageMod */
     , (800700, 136,     1.1) /* CriticalMultiplier */
     , (800700, 147,     0.3) /* CriticalFrequency */
     , (800700, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800700,   1, 'Crafted Vhorma Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800700,   1,   33557234) /* Setup */
     , (800700,   3,  536870932) /* SoundTable */
     , (800700,   6,   67113336) /* PaletteBase */
     , (800700,   7,  268436253) /* ClothingBase */
     , (800700,   8,  100672078) /* Icon */
     , (800700,  22,  872415275) /* PhysicsEffectTable */
     , (800700,  36,  234881044) /* MutateFilter */
     , (800700,  52,  100689404) /* IconUnderlay */
     , (800700,  55,       3936) /* ProcSpell - Fire Bomb */;
