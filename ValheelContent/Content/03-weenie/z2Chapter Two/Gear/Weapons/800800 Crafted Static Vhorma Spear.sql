DELETE FROM `weenie` WHERE `class_Id` = 800800;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800800, 'Crafted Static Vhorma Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800800,   1,          1) /* ItemType - MeleeWeapon */
     , (800800,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800800,   5,        220) /* EncumbranceVal */
     , (800800,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800800,  16,          1) /* ItemUseable - No */
     , (800800,  18,          1) /* UiEffects - Magical */
     , (800800,  19,          1) /* Value */
     , (800800,  33,          1) /* Bonded - Slippery */
     , (800800,  44,        80) /* Damage */
     , (800800,  45,          64) /* DamageType - Slash, Pierce */
     , (800800,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800800,  47,          6) /* AttackType - Thrust, Slash */
     , (800800,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800800,  49,         35) /* WeaponTime */
     , (800800,  51,          1) /* CombatUse - Melee */
     , (800800,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800800, 106,        999) /* ItemSpellcraft */
     , (800800, 107,       2700) /* ItemCurMana */
     , (800800, 108,       2700) /* ItemMaxMana */
     , (800800, 114,          1) /* Attuned - Normal */
     , (800800, 158,          7) /* WieldRequirements - Level */
     , (800800, 159,          1) /* WieldSkillType - Axe */
     , (800800, 160,        325) /* WieldDifficulty */
	 , (800800, 179,          256) /* Imbued Effect - Armor Rend */
     , (800800, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800800,  22, True ) /* Inscribable */
     , (800800,  65, True ) /* IgnoreMagicResist */
     , (800800,  66, True ) /* IgnoreMagicArmor */
     , (800800,  69, False) /* IsSellable */
     , (800800,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800800,   5,   -0.05) /* ManaRate */
     , (800800,  21,       0) /* WeaponLength */
     , (800800,  22,    0.25) /* DamageVariance */
     , (800800,  29,    1.30) /* WeaponDefense */
     , (800800,  39,     1.3) /* DefaultScale */
     , (800800,  62,    1.30) /* WeaponOffense */
     , (800800,  63,     1.1) /* DamageMod */
     , (800800, 136,     1.1) /* CriticalMultiplier */
     , (800800, 147,     0.3) /* CriticalFrequency */
     , (800800, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800800,   1, 'Crafted Static Vhorma Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800800,   1,   33557236) /* Setup */
     , (800800,   3,  536870932) /* SoundTable */
     , (800800,   6,   67113336) /* PaletteBase */
     , (800800,   7,  268436253) /* ClothingBase */
     , (800800,   8,  100672092) /* Icon */
     , (800800,  22,  872415275) /* PhysicsEffectTable */
     , (800800,  36,  234881044) /* MutateFilter */
	 , (800800,  52,  100689404) /* IconUnderlay */
	 , (800800,  55,       6194) /* ProcSpell - Fire Bomb */;

