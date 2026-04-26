DELETE FROM `weenie` WHERE `class_Id` = 800701;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800701, 'Crafted Vhorma Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800701,   1,          1) /* ItemType - MeleeWeapon */
     , (800701,   3,         39) /* PaletteTemplate - Black */
     , (800701,   5,        220) /* EncumbranceVal */
     , (800701,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800701,  16,          1) /* ItemUseable - No */
     , (800701,  18,          1) /* UiEffects - Magical */
     , (800701,  19,          1) /* Value */
     , (800701,  33,          1) /* Bonded - Bonded */
     , (800701,  44,        80) /* Damage */
     , (800701,  45,          3) /* DamageType - Slash, Pierce */
     , (800701,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800701,  47,          6) /* AttackType - Thrust, Slash */
     , (800701,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800701,  49,         35) /* WeaponTime */
     , (800701,  51,          1) /* CombatUse - Melee */
     , (800701,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800701, 106,        999) /* ItemSpellcraft */
     , (800701, 107,       2700) /* ItemCurMana */
     , (800701, 108,       2700) /* ItemMaxMana */
     , (800701, 114,          1) /* Attuned - Attuned */
     , (800701, 158,          7) /* WieldRequirements - Level */
     , (800701, 159,          1) /* WieldSkillType - Axe */
     , (800701, 160,        325) /* WieldDifficulty */
     , (800701, 179,          4) /* ImbuedEffect - ArmorRending */
     , (800701, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800701,  22, True ) /* Inscribable */
     , (800701,  65, True ) /* IgnoreMagicResist */
     , (800701,  66, True ) /* IgnoreMagicArmor */
     , (800701,  69, False) /* IsSellable */
     , (800701,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800701,   5,   -0.05) /* ManaRate */
     , (800701,  21,       0) /* WeaponLength */
     , (800701,  22,    0.25) /* DamageVariance */
     , (800701,  29,    1.30) /* WeaponDefense */
     , (800701,  39,     1.3) /* DefaultScale */
     , (800701,  62,    1.30) /* WeaponOffense */
     , (800701,  63,     1.1) /* DamageMod */
     , (800701, 136,     1.1) /* CriticalMultiplier */
     , (800701, 147,     0.3) /* CriticalFrequency */
     , (800701, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800701,   1, 'Crafted Vhorma Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800701,   1,   33557236) /* Setup */
     , (800701,   3,  536870932) /* SoundTable */
     , (800701,   6,   67113336) /* PaletteBase */
     , (800701,   7,  268436253) /* ClothingBase */
     , (800701,   8,  100672092) /* Icon */
     , (800701,  22,  872415275) /* PhysicsEffectTable */
     , (800701,  36,  234881044) /* MutateFilter */
     , (800701,  52,  100689404) /* IconUnderlay */;
