DELETE FROM `weenie` WHERE `class_Id` = 800771;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800771, 'Crafted Flaming Vhorma Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800771,   1,          1) /* ItemType - MeleeWeapon */
     , (800771,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800771,   5,        275) /* EncumbranceVal */
     , (800771,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800771,  16,          1) /* ItemUseable - No */
     , (800771,  18,          1) /* UiEffects - Magical */
     , (800771,  19,          1) /* Value */
     , (800771,  33,          1) /* Bonded - Slippery */
     , (800771,  44,        150) /* Damage */
     , (800771,  45,          16) /* DamageType - Slash */
     , (800771,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800771,  47,          4) /* AttackType - Slash */
     , (800771,  48,         45) /* WeaponSkill - LightWeapons */
     , (800771,  49,         35) /* WeaponTime */
     , (800771,  51,          1) /* CombatUse - Melee */
     , (800771,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800771, 106,        999) /* ItemSpellcraft */
     , (800771, 107,      10000) /* ItemCurMana */
     , (800771, 108,      10000) /* ItemMaxMana */
     , (800771, 114,          1) /* Attuned - Normal */
     , (800771, 158,          7) /* WieldRequirements - Level */
     , (800771, 159,          1) /* WieldSkillType - Axe */
     , (800771, 160,        325) /* WieldDifficulty */
	 , (800771, 179,        512) /* Imbued Effect - Armor Rend */
     , (800771, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800771,  22, True ) /* Inscribable */
     , (800771,  65, True ) /* IgnoreMagicResist */
     , (800771,  66, True ) /* IgnoreMagicArmor */
     , (800771,  69, False) /* IsSellable */
     , (800771,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800771,   5,   -0.05) /* ManaRate */
     , (800771,  21,       0) /* WeaponLength */
     , (800771,  22,    0.25) /* DamageVariance */
     , (800771,  29,    1.30) /* WeaponDefense */
     , (800771,  39,     1.3) /* DefaultScale */
     , (800771,  62,    1.30) /* WeaponOffense */
     , (800771,  63,     1.1) /* DamageMod */
     , (800771, 136,     1.1) /* CriticalMultiplier */
     , (800771, 147,     0.3) /* CriticalFrequency */
     , (800771, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800771,   1, 'Crafted Flaming Vhorma Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800771,   1,   33557234) /* Setup */
     , (800771,   3,  536870932) /* SoundTable */
     , (800771,   6,   67113336) /* PaletteBase */
     , (800771,   7,  268436253) /* ClothingBase */
     , (800771,   8,  100672078) /* Icon */
     , (800771,  22,  872415275) /* PhysicsEffectTable */
     , (800771,  36,  234881044) /* MutateFilter */
	 , (800771,  52,  100689404) /* IconUnderlay */
	 , (800771,  55,       3936) /* ProcSpell - Fire Bomb */;

