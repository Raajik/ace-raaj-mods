DELETE FROM `weenie` WHERE `class_Id` = 800704;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800704, 'Crafted Vhorma Long Blade', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800704,   1,          1) /* ItemType - MeleeWeapon */
     , (800704,   3,         39) /* PaletteTemplate - Black */
     , (800704,   5,        220) /* EncumbranceVal */
     , (800704,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800704,  16,          1) /* ItemUseable - No */
     , (800704,  18,          1) /* UiEffects - Magical */
     , (800704,  19,          1) /* Value */
     , (800704,  33,          1) /* Bonded - Bonded */
     , (800704,  44,         85) /* Damage */
     , (800704,  45,          3) /* DamageType - Slash, Pierce */
     , (800704,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800704,  47,          6) /* AttackType - Thrust, Slash */
     , (800704,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800704,  49,         35) /* WeaponTime */
     , (800704,  51,          5) /* CombatUse - TwoHanded */
     , (800704,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800704, 106,        999) /* ItemSpellcraft */
     , (800704, 107,       2700) /* ItemCurMana */
     , (800704, 108,       2700) /* ItemMaxMana */
     , (800704, 114,          1) /* Attuned - Attuned */
     , (800704, 158,          7) /* WieldRequirements - Level */
     , (800704, 159,          1) /* WieldSkillType - Axe */
     , (800704, 160,        325) /* WieldDifficulty */
     , (800704, 179,          4) /* ImbuedEffect - ArmorRending */
     , (800704, 292,          3) /* Cleaving */
     , (800704, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800704,  22, True ) /* Inscribable */
     , (800704,  65, True ) /* IgnoreMagicResist */
     , (800704,  66, True ) /* IgnoreMagicArmor */
     , (800704,  69, False) /* IsSellable */
     , (800704,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800704,   5,   -0.05) /* ManaRate */
     , (800704,  21,       0) /* WeaponLength */
     , (800704,  22,    0.25) /* DamageVariance */
     , (800704,  29,    1.30) /* WeaponDefense */
     , (800704,  39,     1.3) /* DefaultScale */
     , (800704,  62,    1.30) /* WeaponOffense */
     , (800704,  63,     1.1) /* DamageMod */
     , (800704, 136,     1.1) /* CriticalMultiplier */
     , (800704, 147,     0.3) /* CriticalFrequency */
     , (800704, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800704,   1, 'Crafted Vhorma Long Blade') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800704,   1,   33561145) /* Setup */
     , (800704,   3,  536870932) /* SoundTable */
     , (800704,   6,   67111919) /* PaletteBase */
     , (800704,   7,  268437600) /* ClothingBase */
     , (800704,   8,  100691761) /* Icon */
     , (800704,  22,  872415275) /* PhysicsEffectTable */
     , (800704,  36,  234881042) /* MutateFilter */
     , (800704,  46,  939524146) /* TsysMutationFilter */
     , (800704,  52,  100689404) /* IconUnderlay */;
