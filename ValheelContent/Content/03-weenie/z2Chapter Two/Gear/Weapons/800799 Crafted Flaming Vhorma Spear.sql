DELETE FROM `weenie` WHERE `class_Id` = 800799;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800799, 'Crafted Flaming Vhorma Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800799,   1,          1) /* ItemType - MeleeWeapon */
     , (800799,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800799,   5,        220) /* EncumbranceVal */
     , (800799,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800799,  16,          1) /* ItemUseable - No */
     , (800799,  18,          1) /* UiEffects - Magical */
     , (800799,  19,          1) /* Value */
     , (800799,  33,          1) /* Bonded - Slippery */
     , (800799,  44,        80) /* Damage */
     , (800799,  45,          16) /* DamageType - Slash, Pierce */
     , (800799,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800799,  47,          6) /* AttackType - Thrust, Slash */
     , (800799,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800799,  49,         35) /* WeaponTime */
     , (800799,  51,          1) /* CombatUse - Melee */
     , (800799,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800799, 106,        999) /* ItemSpellcraft */
     , (800799, 107,       2700) /* ItemCurMana */
     , (800799, 108,       2700) /* ItemMaxMana */
     , (800799, 114,          1) /* Attuned - Normal */
     , (800799, 158,          7) /* WieldRequirements - Level */
     , (800799, 159,          1) /* WieldSkillType - Axe */
     , (800799, 160,        325) /* WieldDifficulty */
	 , (800799, 179,          512) /* Imbued Effect - Armor Rend */
     , (800799, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800799,  22, True ) /* Inscribable */
     , (800799,  65, True ) /* IgnoreMagicResist */
     , (800799,  66, True ) /* IgnoreMagicArmor */
     , (800799,  69, False) /* IsSellable */
     , (800799,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800799,   5,   -0.05) /* ManaRate */
     , (800799,  21,       0) /* WeaponLength */
     , (800799,  22,    0.25) /* DamageVariance */
     , (800799,  29,    1.30) /* WeaponDefense */
     , (800799,  39,     1.3) /* DefaultScale */
     , (800799,  62,    1.30) /* WeaponOffense */
     , (800799,  63,     1.1) /* DamageMod */
     , (800799, 136,     1.1) /* CriticalMultiplier */
     , (800799, 147,     0.3) /* CriticalFrequency */
     , (800799, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800799,   1, 'Crafted Flaming Vhorma Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800799,   1,   33557236) /* Setup */
     , (800799,   3,  536870932) /* SoundTable */
     , (800799,   6,   67113336) /* PaletteBase */
     , (800799,   7,  268436253) /* ClothingBase */
     , (800799,   8,  100672092) /* Icon */
     , (800799,  22,  872415275) /* PhysicsEffectTable */
     , (800799,  36,  234881044) /* MutateFilter */
	 , (800799,  52,  100689404) /* IconUnderlay */
	 , (800799,  55,       3936) /* ProcSpell - Fire Bomb */;

