DELETE FROM `weenie` WHERE `class_Id` = 800801;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800801, 'Crafted Slashing Vhorma Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800801,   1,          1) /* ItemType - MeleeWeapon */
     , (800801,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800801,   5,        220) /* EncumbranceVal */
     , (800801,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800801,  16,          1) /* ItemUseable - No */
     , (800801,  18,          1) /* UiEffects - Magical */
     , (800801,  19,          1) /* Value */
     , (800801,  33,          1) /* Bonded - Slippery */
     , (800801,  44,        80) /* Damage */
     , (800801,  45,          1) /* DamageType - Slash, Pierce */
     , (800801,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800801,  47,          6) /* AttackType - Thrust, Slash */
     , (800801,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800801,  49,         35) /* WeaponTime */
     , (800801,  51,          1) /* CombatUse - Melee */
     , (800801,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800801, 106,        999) /* ItemSpellcraft */
     , (800801, 107,       2700) /* ItemCurMana */
     , (800801, 108,       2700) /* ItemMaxMana */
     , (800801, 114,          1) /* Attuned - Normal */
     , (800801, 158,          7) /* WieldRequirements - Level */
     , (800801, 159,          1) /* WieldSkillType - Axe */
     , (800801, 160,        325) /* WieldDifficulty */
	 , (800801, 179,          8) /* Imbued Effect - Armor Rend */
     , (800801, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800801,  22, True ) /* Inscribable */
     , (800801,  65, True ) /* IgnoreMagicResist */
     , (800801,  66, True ) /* IgnoreMagicArmor */
     , (800801,  69, False) /* IsSellable */
     , (800801,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800801,   5,   -0.05) /* ManaRate */
     , (800801,  21,       0) /* WeaponLength */
     , (800801,  22,    0.25) /* DamageVariance */
     , (800801,  29,    1.30) /* WeaponDefense */
     , (800801,  39,     1.3) /* DefaultScale */
     , (800801,  62,    1.30) /* WeaponOffense */
     , (800801,  63,     1.1) /* DamageMod */
     , (800801, 136,     1.1) /* CriticalMultiplier */
     , (800801, 147,     0.3) /* CriticalFrequency */
     , (800801, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800801,   1, 'Crafted Slashing Vhorma Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800801,   1,   33557236) /* Setup */
     , (800801,   3,  536870932) /* SoundTable */
     , (800801,   6,   67113336) /* PaletteBase */
     , (800801,   7,  268436253) /* ClothingBase */
     , (800801,   8,  100672092) /* Icon */
     , (800801,  22,  872415275) /* PhysicsEffectTable */
     , (800801,  36,  234881044) /* MutateFilter */
	 , (800801,  52,  100689404) /* IconUnderlay */
	 , (800801,  55,       6190) /* ProcSpell - Fire Bomb */;

