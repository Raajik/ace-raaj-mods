DELETE FROM `weenie` WHERE `class_Id` = 800805;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800805, 'Crafted Frost Vhorma Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800805,   1,          1) /* ItemType - MeleeWeapon */
     , (800805,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800805,   5,        220) /* EncumbranceVal */
     , (800805,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800805,  16,          1) /* ItemUseable - No */
     , (800805,  18,          1) /* UiEffects - Magical */
     , (800805,  19,          1) /* Value */
     , (800805,  33,          1) /* Bonded - Slippery */
     , (800805,  44,        80) /* Damage */
     , (800805,  45,          8) /* DamageType - Slash, Pierce */
     , (800805,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800805,  47,          6) /* AttackType - Thrust, Slash */
     , (800805,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800805,  49,         35) /* WeaponTime */
     , (800805,  51,          1) /* CombatUse - Melee */
     , (800805,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800805, 106,        999) /* ItemSpellcraft */
     , (800805, 107,       2700) /* ItemCurMana */
     , (800805, 108,       2700) /* ItemMaxMana */
     , (800805, 114,          1) /* Attuned - Normal */
     , (800805, 158,          7) /* WieldRequirements - Level */
     , (800805, 159,          1) /* WieldSkillType - Axe */
     , (800805, 160,        325) /* WieldDifficulty */
	 , (800805, 179,          128) /* Imbued Effect - Armor Rend */
     , (800805, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800805,  22, True ) /* Inscribable */
     , (800805,  65, True ) /* IgnoreMagicResist */
     , (800805,  66, True ) /* IgnoreMagicArmor */
     , (800805,  69, False) /* IsSellable */
     , (800805,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800805,   5,   -0.05) /* ManaRate */
     , (800805,  21,       0) /* WeaponLength */
     , (800805,  22,    0.25) /* DamageVariance */
     , (800805,  29,    1.30) /* WeaponDefense */
     , (800805,  39,     1.3) /* DefaultScale */
     , (800805,  62,    1.30) /* WeaponOffense */
     , (800805,  63,     1.1) /* DamageMod */
     , (800805, 136,     1.1) /* CriticalMultiplier */
     , (800805, 147,     0.3) /* CriticalFrequency */
     , (800805, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800805,   1, 'Crafted Frost Vhorma Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800805,   1,   33557236) /* Setup */
     , (800805,   3,  536870932) /* SoundTable */
     , (800805,   6,   67113336) /* PaletteBase */
     , (800805,   7,  268436253) /* ClothingBase */
     , (800805,   8,  100672092) /* Icon */
     , (800805,  22,  872415275) /* PhysicsEffectTable */
     , (800805,  36,  234881044) /* MutateFilter */
	 , (800805,  52,  100689404) /* IconUnderlay */
	 , (800805,  55,       6193) /* ProcSpell - Fire Bomb */;

